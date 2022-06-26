spider_chart_ = (json_data, container) => {
    this.options = {

        chart: {
            polar: true,
            type: 'line'
        },

        title: {
            text: json_data['title'],
            x: -80
        },

        pane: {
            size: '80%'
        },

        xAxis: {
            categories: json_data['categories'],
            tickmarkPlacement: 'on',
            lineWidth: 0
        },
        
        colors: ["#0a5c9a", "#fd625e", "#2ab57d", "#ffbf53", "#74788d", "#383d8a", "#777aca", "#34c38f", "#ffefd4"],

        yAxis: {
            gridLineInterpolation: 'polygon',
            lineWidth: 0,
            min: 0
        },

        // tooltip: {
        //     shared: true,
        //     pointFormat: '<span style="color:{series.color}">{series.name}: <b>${point.y:,.0f}</b><br/>'
        // },

        legend: {
            align: 'right',
            verticalAlign: 'middle',
            layout: 'vertical'
        },

        series: json_data['series'],

        responsive: {
            rules: [{
                condition: {
                    maxWidth: 500
                },
                chartOptions: {
                    legend: {
                        align: 'center',
                        verticalAlign: 'bottom',
                        layout: 'horizontal'
                    },
                    pane: {
                        size: '70%'
                    }
                }
            }]
        }

    };
    this.render_chart = Highcharts.chart(container, this.options);
}


line_bar_chart_ = (json_data, container) => {
    this.options = {
        chart: {
            zoomType: 'xy',
            events: {
                load: function() {
                    Highcharts.each(this.series[0].points, function(p) {
                        if (p.y > 80 && p.y <= 100) {
                            p.update({
                                color: "#0a5c9a" // A OK 
                            });
                        }else if (p.y > 74 && p.y <= 80) {
                            p.update({
                                color: "#4ba6ef" // B+ OK
                            });
                        }else if (p.y > 68 && p.y <= 74) {
                            p.update({
                                color: "#7ebef1" // B 
                            });
                        }else if (p.y > 62 && p.y <= 68) {
                            p.update({ 
                                color: "#ffbf53" // C+ OK
                            });
                        }else if (p.y > 56 && p.y <= 62) {
                            p.update({
                                color: "#f1734f" // C OK
                            });
                        }else if (p.y > 45 && p.y <= 56) {
                            p.update({
                                color: "#f0302b" // D
                            });
                        }else{
                            p.update({
                                color: "#74788d" // E OK
                            });
                        }
                    });
                }
            }
        },
        title: {
            text: json_data['title']
        },
        subtitle: {
            text: json_data['subtitle']
        },
        // colors: ["#0a5c9a", "#fd625e", "#ffbf53", "#2ab57d", "#74788d", "#383d8a", "#777aca", "#34c38f", "#ffefd4"],
        xAxis: [{
            categories: json_data['categories'],            
            crosshair: true
        }],
        yAxis: [{ // Primary yAxis
            labels: {
                format: '{value}',
                style: {
                    color: Highcharts.getOptions().colors[1]
                }
            },
            title: {
                text: 'Rate_4', 
                style: {
                    color: Highcharts.getOptions().colors[1]
                }
            }
        }, { // Secondary yAxis
            title: {
                text: 'Rate_100',
                style: {
                    color: Highcharts.getOptions().colors[0]
                }
            },
            labels: {
                format: '{value}',
                style: {
                    color: Highcharts.getOptions().colors[0]
                }
            },
            opposite: true
        }],
        tooltip: {
            shared: true
        },
        legend: {
            layout: 'vertical',
            align: 'left',
            x: 120,
            verticalAlign: 'top',
            y: 100,
            floating: true,
            backgroundColor:
                Highcharts.defaultOptions.legend.backgroundColor || // theme
                'rgba(255,255,255,0.25)'
        },
        series: json_data['series'],        
    };


    this.render_chart = Highcharts.chart(container, this.options);
}


chart_bar_horizontal = (json_data, container) => {
    this.options = {
        chart: {
              type: json_data['type'] // bar horizontal
        },
        title: {
            text: json_data['title']
        },

        colors: ["#0a5c9a", "#fd625e", "#2ab57d", "#ffbf53", "#74788d", "#383d8a", "#777aca", "#34c38f", "#ffefd4"],

        xAxis: {
            categories: json_data['categories'],
            title: {
                text: null
            }
        },

        yAxis: {
              min: 0,
              title: {
                //   text: 'Jumlah Mahasiswa',
                  align: 'high'
              },
              labels: {
                  overflow: 'justify'
              }
        },
        tooltip: {
            //   valueSuffix: ' Mahasiswa'
        },
  
         plotOptions: {
            bar: {
              label: {
                connectorAllowed: false
              },
              dataLabels:{
                enabled: true
              },
              pointStart: 1
            }
          },
         legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'middle'
          },
  
         series: json_data['series']
  
    };
    this.render_chart = Highcharts.chart(container, options);
}


pie_chart_ = (json_data, container) => {
    this.options = {
        chart: {
            type: 'variablepie'
        },
        title: {
            text: json_data['title']
        },
        colors: ["#0a5c9a", "#fd625e", "#2ab57d", "#ffbf53", "#74788d", "#383d8a", "#777aca", "#34c38f", "#ffefd4"],
        series:[{
            minPointSize: 10,
            innerSize: '20%',
            zMin: 0,
            name: '',
            data : json_data['series']
        }]
    }
    this.render_chart = Highcharts.chart(container, options);
}


