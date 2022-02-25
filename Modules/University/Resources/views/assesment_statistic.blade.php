<div class="col-xl-4 col-md-4">
    <!-- card -->
    <div class="card card-h-100">
        <!-- card body -->
        <div class="card-body">
            <div class="row align-items-center">
                <div class="col-6">
                    <span class="text-muted mb-3 lh-1 d-block text-truncate">Uploaded</span>
                    <h4 class="mb-3">
                        <span class="counter-value" data-target="{{ rand(10,100) }}">
                            {{ $assesment_statistic[0]->unrendered }}
                        </span>
                    </h4>
                </div>

                <div class="col-6">
                    <div id="mini-chart1" class="apex-charts mb-2"></div>
                </div>
            </div>
        </div><!-- end card body -->
    </div><!-- end card -->
</div><!-- end col -->  


<div class="col-xl-4 col-md-4">
    <!-- card -->
    <div class="card card-h-100">
        <!-- card body -->
        <div class="card-body">
            <div class="row align-items-center">
                <div class="col-6">
                    <span class="text-muted mb-3 lh-1 d-block text-truncate">Rendered</span>
                    <h4 class="mb-3">
                        <span class="counter-value" data-target="{{ rand(10,100) }}">
                            {{ $assesment_statistic[0]->rendered }}
                        </span>
                    </h4>
                </div>

                <div class="col-6">
                    <div id="mini-chart2" class="apex-charts mb-2"></div>
                </div>
            </div>
        </div><!-- end card body -->
    </div><!-- end card -->
</div><!-- end col -->  


<div class="col-xl-4 col-md-4">
    <!-- card -->
    <div class="card card-h-100">
        <!-- card body -->
        <div class="card-body">
            <div class="row align-items-center">
                <div class="col-6">
                    <span class="text-muted mb-3 lh-1 d-block text-truncate">Error Rendered</span>
                    <h4 class="mb-3">
                        <span class="counter-value" data-target="{{ rand(10,100) }}">
                            {{ $assesment_statistic[0]->errendered }}
                        </span>
                    </h4>
                </div>

                <div class="col-6">
                    <div id="mini-chart3" class="apex-charts mb-2"></div>
                </div>
            </div>
        </div><!-- end card body -->
    </div><!-- end card -->
</div><!-- end col -->  


<!-- <div class="col-xl-12 col-md-12">
    <button type="button" onclick="add_assesment_file()"
            class="btn btn-soft-primary waves-effect waves-light float-end">
        <i class="bx bx-plus font-size-16 align-middle me-2"></i> Add File Assesment
    </button>
</div> -->


<script>
    // =======================================================================
    // =======================================================================

    getChartColorsArray = (chartId) => {
        var colors = $(chartId).attr('data-colors');
        var colors = JSON.parse(colors);
        return colors.map(function(value){
            var newValue = value.replace(' ', '');
            if(newValue.indexOf('--') != -1) {
                var color = getComputedStyle(document.documentElement).getPropertyValue(newValue);
                if(color) return color;
            } else {
                return newValue;
            }
        })
    }

    randomArray = (length, max) => [...new Array(length)].map(() => Math.round(Math.random() * max));

    // mini-1
    var options = {
        series: [{
            data: randomArray(20, 55)
        }],
        chart: {
            type: 'line',
            height: 50,
            sparkline: {
                enabled: true
            }
        },
        colors: ["#5156be"],
        stroke: {
            curve: 'smooth',
            width: 2,
        },
        tooltip: {
            fixed: {
                enabled: false
            },
            x: {
                show: false
            },
            y: {
                title: {
                    formatter: function (seriesName) {
                        return ''
                    }
                }
            },
            marker: {
                show: false
            }
        }
    };
    var chart = new ApexCharts(document.querySelector("#mini-chart1"), options);
    chart.render();

    // mini-1
    var options = {
        series: [{
            data: randomArray(20, 55)
        }],
        chart: {
            type: 'line',
            height: 50,
            sparkline: {
                enabled: true
            }
        },
        colors: ["#84c225"],
        stroke: {
            curve: 'smooth',
            width: 2,
        },
        tooltip: {
            fixed: {
                enabled: false
            },
            x: {
                show: false
            },
            y: {
                title: {
                    formatter: function (seriesName) {
                        return ''
                    }
                }
            },
            marker: {
                show: false
            }
        }
    };
    var chart = new ApexCharts(document.querySelector("#mini-chart2"), options);
    chart.render();


    // mini-1
    var options = {
        series: [{
            data: randomArray(20, 55)
        }],
        chart: {
            type: 'line',
            height: 50,
            sparkline: {
                enabled: true
            }
        },
        colors: ["#fd625e"],
        stroke: {
            curve: 'smooth',
            width: 2,
        },
        tooltip: {
            fixed: {
                enabled: false
            },
            x: {
                show: false
            },
            y: {
                title: {
                    formatter: function (seriesName) {
                        return ''
                    }
                }
            },
            marker: {
                show: false
            }
        }
    };
    var chart = new ApexCharts(document.querySelector("#mini-chart3"), options);
    chart.render();
</script>