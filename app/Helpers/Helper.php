<?php
namespace App\Helpers;

use Illuminate\Support\Facades\Crypt;
use Illuminate\Contracts\Encryption\DecryptException;
use Carbon\Carbon;
use Carbon\CarbonPeriod;
use DeviceDetector\DeviceDetector;
use DeviceDetector\Parser\Device\AbstractDeviceParser;
use DeviceDetector\Parser\OperatingSystem;
use Illuminate\Support\Facades\App;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

// MODELS
use App\Models\Modules\MInstitutionCategory;
use App\Models\Modules\MInstitutionLevel;


class Helper{
    public static function encryptData($string){
        if(!empty($string)){

            try {
                $res = Crypt::encrypt($string,config('app.saltkey'));
            }catch (DecryptException $e) {
               $res = null;
            }

            return $res;
        }
    }

    public static function decryptData($encrypt_string){
        if(!empty($encrypt_string)){
            
            try {
                $res = Crypt::decrypt($encrypt_string,config('app.saltkey'));
            }catch (DecryptException $e) {
               $res = $encrypt_string;
            }

            return $res;
        }
    }

    public static function encryptTableId($table_id){
        
        $saltkey='eyJpdiI6IlpTekQ5anpkNE{{tisla2021}}MyY2Y5MGRmYjU2In0=';
        $res=Crypt::encrypt($table_id,$saltkey);
        return $res;
    }

    public static function decryptTableId($table_id){
        
        $saltkey='eyJpdiI6IlpTekQ5anpkNE{{tisla2021}}MyY2Y5MGRmYjU2In0=';
        try {
            $res=Crypt::decrypt($table_id,$saltkey);
        }catch (DecryptException $e) {
           $res = null;
        }
        return $res;
    }

    private static function clientIP() {
        $ipaddress = '';
        if (isset($_SERVER['HTTP_CLIENT_IP']))
            $ipaddress = $_SERVER['HTTP_CLIENT_IP'];
        else if(isset($_SERVER['HTTP_X_FORWARDED_FOR']))
            $ipaddress = $_SERVER['HTTP_X_FORWARDED_FOR'];
        else if(isset($_SERVER['HTTP_X_FORWARDED']))
            $ipaddress = $_SERVER['HTTP_X_FORWARDED'];
        else if(isset($_SERVER['HTTP_FORWARDED_FOR']))
            $ipaddress = $_SERVER['HTTP_FORWARDED_FOR'];
        else if(isset($_SERVER['HTTP_FORWARDED']))
            $ipaddress = $_SERVER['HTTP_FORWARDED'];
        else if(isset($_SERVER['REMOTE_ADDR']))
            $ipaddress = $_SERVER['REMOTE_ADDR'];
        else
            $ipaddress = 'UNKNOWN';
        return $ipaddress;
    }

    private static function clientMacAddress(){
        $IP_SERVER = $_SERVER['SERVER_ADDR'];
        $IP_ADDRESS_CLIENT = self::clientIP();
        $Device_id = gethostname();
        $temp_array = array();

        $MACADDRESS="server";

        if($IP_ADDRESS_CLIENT != $IP_SERVER){
            ob_start();
            system('ipconfig /all');
            $_PERINTAH  = ob_get_contents();
            ob_clean();

            $_PECAH = strpos($_PERINTAH, "Physical");
            $MACADDRESS = substr($_PERINTAH,($_PECAH+36),17);

            if(strtoupper(substr(PHP_OS, 0, 3)) == 'LIN'){
                @exec("ifconfig -a", $return_array);
                foreach ( $return_array as $value ){
                    if (preg_match("/[0-9a-f][0-9a-f][:-]"."[0-9a-f][0-9a-f][:-]"."[0-9a-f][0-9a-f][:-]"."[0-9a-f][0-9a-f][:-]"."[0-9a-f][0-9a-f][:-]"."[0-9a-f][0-9a-f]/i",$value,$temp_array ) ){
                        $MACADDRESS = substr($temp_array[0], -17);
                        break;
                    }
                }
            } else if(strtoupper(substr(PHP_OS, 0, 3)) == 'WIN'){
                @exec("ipconfig /all", $return_array);
                foreach ( $return_array as $value ){
                    if (preg_match("/[0-9a-f][0-9a-f][:-]"."[0-9a-f][0-9a-f][:-]"."[0-9a-f][0-9a-f][:-]"."[0-9a-f][0-9a-f][:-]"."[0-9a-f][0-9a-f][:-]"."[0-9a-f][0-9a-f]/i",$value,$temp_array ) ){
                        $MACADDRESS = substr($temp_array[0], -17);
                        break;
                    }
                }
            }

        }

        return $MACADDRESS;
        
    }

    public static function ClientDeviceInfo(){
        AbstractDeviceParser::setVersionTruncation(AbstractDeviceParser::VERSION_TRUNCATION_NONE);

        $userAgent = $_SERVER['HTTP_USER_AGENT']; // change this to the useragent you want to parse

        $devicedetector = new DeviceDetector($userAgent);

        $devicedetector->parse();

        if ($devicedetector->isBot()) {
            // handle bots,spiders,crawlers,...
            $botInfo = $devicedetector->getBot();
            return [
                "isBot" => true,
                "resData" => [
                    "botInfo" => $botInfo
                ]
            ];
        } else {
            $clientInfo = $devicedetector->getClient(); // holds information about browser, feed reader, media player, ...
            $osInfo = $devicedetector->getOs();
            $device = $devicedetector->getDeviceName();
            $brand = $devicedetector->getBrandName();
            $model = $devicedetector->getModel();
            return [
                "isBot" => false,
                "resData" => [
                    "clientInfo" => $clientInfo,
                    "IP" => self::clientIP(),
                    "macAddress" => self::getMacAddress(), //exec('getmac'),
                    // "macAddress_" => self::clientMacAddress(),
                    "osInfo" => $osInfo,
                    "device" => $device,
                    "brand" => $brand,
                    "model" => $model,
                ]
            ];
        };
    }

    private static function getMacAddress()
    {
        $_IP_SERVER = $_SERVER['SERVER_ADDR'];
        $_IP_ADDRESS = $_SERVER['REMOTE_ADDR'];
        if($_IP_ADDRESS == $_IP_SERVER)
        {
            ob_start();
            system('ipconfig /all');
            $_PERINTAH  = ob_get_contents();
            ob_clean();
            $_PECAH = strpos($_PERINTAH, "Physical");
            $_HASIL = substr($_PERINTAH,($_PECAH+36),17);
            return $_HASIL;  
        } else {
            $_PERINTAH = "arp -a $_IP_ADDRESS";
            ob_start();
            system($_PERINTAH);
            $_HASIL = ob_get_contents();
            ob_clean();
            $_PECAH = strstr($_HASIL, $_IP_ADDRESS);
            $_PECAH_STRING = explode($_IP_ADDRESS, str_replace(" ", "", $_PECAH));
            $_HASIL = substr($_PECAH_STRING[1], 0, 17);
            return $_HASIL;
        }
    }


    public static function CheckSimilarity($txt1, $txt2){
        $ctxt1 = strtolower(preg_replace('/[0-9\@\.\;\/\-\" "]+/', '', $txt1));
        $ctxt2 = strtolower(preg_replace('/[0-9\@\.\;\/\-\" "]+/', '', $txt2));

        $nctxt1 = strtolower(preg_replace('/[@\.\;\/\-\" "]+/', '', $txt1));
        $nctxt2 = strtolower(preg_replace('/[@\.\;\/\-\" "]+/', '', $txt2));

        $atxt1 = self::TextAliases($txt1);
        
        $atxt2 = self::TextAliases($txt2);

        similar_text($ctxt1, $ctxt2, $percent);
        similar_text($nctxt1, $nctxt2, $npercent);
        similar_text($atxt1, $atxt2, $percent);

        return [
            "text1" => $txt1,
            "text2" => $txt2,
            "regexText1" => $ctxt1,
            "regexText2" => $ctxt2,
            "nctxt1"     => $nctxt1,
            "nctxt2"     => $nctxt2,
            "aliasText1" => $atxt1,
            "aliasText2" => $atxt2,
            "percentage" => $percent,
            "npercentage" => $npercent,
            "aliasPercentage" => $percent
        ];
    }

    public static function text_preg_flag($txt){
        return strtolower(preg_replace('/[@\.\;\/\-\" "]+/', '', $txt));
    }

    public static function text_remove_space($txt){
        return strtolower(preg_replace('/\s+/', '', $txt));
    }

    public static function TextAliases($txt){
        $atxt = "";
        foreach (preg_split("/\s+/", $txt) as $w) {
            $atxt .= ucwords($w[0]);
        }
        return $atxt;
    }

    public static function GenerateInstitutionCode($inst_name)
    {

        $last_id = DB::connection('pgsql')->table('g_institution_codes')->insertGetId(
                [
                    'institution_name'    => $inst_name,
                ]
        );

        $suffix = DB::connection('pgsql')->table('m_code_letters')->where('first', '<=',$last_id)->where('last', '>=',$last_id)->first()->suffix;
        $formatlast_id = substr($last_id, 0-5);
            
        $result = sprintf("%05d", $formatlast_id);

        $code_month = DB::connection('pgsql')->table('m_code_month')->where('month', date('F'))->first()->code;

        $code_year = DB::connection('pgsql')->table('m_code_year')->where('year', date('Y'))->first()->code;

        $final_result = self::TextAliases($inst_name).$result . $code_month . $code_year;

        return $final_result;
    }


    public static function GenerateUserCode($email)
    {
        $last_id = DB::table('g_user_codes')->insertGetId(
                [
                    'email'    => $email,
                ]
        );

        $suffix = DB::table('m_code_letters')->where('first', '<=',$last_id)->where('last', '>=',$last_id)->first()->suffix;
        $formatlast_id = substr($last_id, 0-5);
            
        $result = sprintf("%05d", $formatlast_id);

        $code_month = DB::table('m_code_month')->where('month', date('F'))->first()->code;

        $code_year = DB::table('m_code_year')->where('year', date('Y'))->first()->code;

        $final_result = strtoupper($email[0]).strtoupper($email[1]).$result . $code_month . $code_year;

        return $final_result;
    }


    public static function GetInstitutionCategory(){
        return MInstitutionCategory::select(["id", "category"])->get();
    }

    public static function GetInstitutionLevel(){
        return MInstitutionLevel::select(["id", "level", "institution_category_id"])->get();
    }

    public static function GetProvinceCity(){
        return DB::table("m_city_province")->select(["province", "city_name"])
                                  ->orderBy("province", "ASC")
                                  ->orderBy("city_name", "ASC")
                                  ->groupBy(["province", "city_name"])
                                  ->get();
    }

    public static function general_query_limit(){
        $qlimit = (int)config('app.DB_QUERY_LIMIT');
        return $qlimit;
    }


    public static function GenerateSquenceCode()
    {
        $last_id = DB::table('g_sequence_codes')->insertGetId();
        // dd($last_id);

        $suffix = DB::table('m_code_letters')->where('first', '<=',$last_id)->where('last', '>=',$last_id)->first()->suffix;
        $formatlast_id = substr($last_id, 0-5);
            
        $result = sprintf("%05d", $formatlast_id);

        $code_month = DB::table('m_code_month')->where('month', date('F'))->first()->code;

        $code_year = DB::table('m_code_year')->where('year', date('Y'))->first()->code;

        $final_result = $result . $code_month . $code_year;

        return $final_result;
    }
}