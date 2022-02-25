<?php 
namespace App\Traits;
use App\Helpers\Helper;

trait Encryptable
{
    public function getAttribute($key){
        $value = parent::getAttribute($key);

        if (in_array($key, $this->encryptable)) {
            $value = Helper::decryptData($value);
        }

        return $value;

    }

    public function setAttribute($key, $value){
        if (in_array($key, $this->encryptable)) {
            $value = Helper::encryptData($value);
        }

        return parent::setAttribute($key, $value);
    }
}

?>