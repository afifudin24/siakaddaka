  <div class="dashboard-main-body">
    <div class="d-flex flex-wrap align-items-center justify-content-between gap-3 mb-24">
  <h6 class="fw-semibold mb-0">Dashboard</h6>
  <ul class="d-flex align-items-center gap-2">
    <li class="fw-medium">
      <a href="index.html" class="d-flex align-items-center gap-1 hover-text-primary">
        <iconify-icon icon="solar:home-smile-angle-outline" class="icon text-lg"></iconify-icon>
        Dashboard
      </a>
    </li>
    
   
  </ul>
</div>
    <div class="row gy-4 mb-24">
        <!-- ======================= First Row Cards Start =================== -->
            <div class="col-xxl-8">
                <div class="card radius-8 border-0 p-20">
                  <form method="GET" id="filterForm" class="row g-2 mb-3">
    {{-- TAHUN PELAJARAN --}}
    <div class="col-md-3">
        <label class="form-label small">Tahun Pelajaran</label>
        <select name="tahun_pelajaran_id"
                id="tahunPelajaran"
                class="form-select form-select-sm">
            <option value="all">Semua Tahun</option>
            @foreach ($allTahunPelajaran as $tp)
                <option value="{{ $tp->id }}"
                    {{ request('tahun_pelajaran_id', $tahunPelajaranAktif?->id) == $tp->id ? 'selected' : '' }}>
                    {{ $tp->nama }}
                    {{ $tp->is_active ? '(Aktif)' : '' }}
                </option>
            @endforeach
        </select>
    </div>
    {{-- SEMESTER --}}
    <div class="col-md-3">
        <label class="form-label small">Semester</label>
        <select name="semester_id"
                id="semester"
                class="form-select form-select-sm">
            <option value="all">Semua Semester</option>
            @foreach ($semesterList as $smt)
                <option value="{{ $smt->id }}"
                    {{ request('semester_id', $semesterAktif?->id) == $smt->id ? 'selected' : '' }}>
                    {{ $smt->nama }}
                    {{ $smt->is_active ? '(Aktif)' : '' }}
                </option>
            @endforeach
        </select>
    </div>
</form>
                   <div class="row g-3">
    {{-- SALDO --}}
    <div class="col-12 col-md-4">
        <div class="card border-0 shadow-lg radius-12 bg-white">
            <div class="card-body p-3">
                <div class="d-flex justify-content-between align-items-center">
                    <div>
                        <small class="text-muted fw-medium">Saldo</small>
                        <h5 class="fw-bold mt-1 mb-0 text-success">
                            {{ rupiah($saldo) }}
                        </h5>
                    </div>
                    <span class="icon-circle bg-success-soft text-success">
                        <iconify-icon icon="mdi:wallet"></iconify-icon>
                    </span>
                </div>
            </div>
        </div>
    </div>
    {{-- PEMASUKAN --}}
    <div class="col-12 col-md-4">
        <div class="card border-0 shadow-lg radius-12 bg-white">
            <div class="card-body p-3">
                <div class="d-flex justify-content-between align-items-center">
                    <div>
                        <small class="text-muted fw-medium">Total Pemasukan</small>
                        <h5 class="fw-bold mt-1 mb-0 text-primary">
                            {{ rupiah($totalPemasukan) }}
                        </h5>
                    </div>
                    <span class="icon-circle bg-primary-soft text-primary">
                        <iconify-icon icon="mdi:cash-plus"></iconify-icon>
                    </span>
                </div>
            </div>
        </div>
    </div>
    {{-- PENGELUARAN --}}
    <div class="col-12 col-md-4">
        <div class="card border-0 shadow-lg radius-12 bg-white">
            <div class="card-body p-3">
                <div class="d-flex justify-content-between align-items-center">
                    <div>
                        <small class="text-muted fw-medium">Total Pengeluaran</small>
                        <h5 class="fw-bold mt-1 mb-0 text-danger">
                            {{ rupiah($totalPengeluaran) }}
                        </h5>
                    </div>
                    <span class="icon-circle bg-danger-soft text-danger">
                        <iconify-icon icon="mdi:cash-minus"></iconify-icon>
                    </span>
                </div>
            </div>
        </div>
    </div>
    {{-- Transaksi Terakhir --}}
    <br>
    
      <p class="fw-semibold mb-0 mt-3">Transaksi Terbaru</p>
      <div class="table-responsive">
        <table class="table basic-border-table">
            <thead>
                <th>
                    Tanggal Bayar
                </th>
                <th>
                    Tagihan
                </th>
                <th>
                    Jumlah Bayar
                </th>
                <th>
                    Siswa
                </th>
                <th>
                    Keterangan
                </th>
            </thead>
            <tbody>
                @if($transaksiTerbaru->isEmpty())
                    <tr>
                        <td colspan="4" class="text-center">Belum ada transaksi</td>
                    </tr>
                @endif
                @foreach ($transaksiTerbaru as $tt)
                    <tr>
                        <td>
                            {{ \Carbon\Carbon::parse($tt->tanggal_bayar)->translatedFormat('d F Y') }}
                        </td>
                        <td>
                            {{ $tt->tagihan->nama_tagihan }}
                        </td>
                        <td>
                            {{ rupiah($tt->jumlah_bayar) }}
                        </td>
                        <td>
                            {{ $tt->tagihan->siswa->nama }}
                        </td>
                        <td>
                            {{ $tt->keterangan }}
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
      </div>
</div>
                </div>
            </div>
            <div class="col-xxl-4 col-md-6">
                <div class="card h-100 radius-8 border-0">
                   <div class="card-body p-24 d-flex flex-column gap-8">
    <!-- Header -->
    <div class="d-flex align-items-center flex-wrap gap-2 justify-content-between mb-20">
        <h6 class="fw-bold text-lg mb-0">Komposisi Pemasukan</h6>
        <select id="filterTahunPelajaran"
            class="form-select form-select-sm w-auto bg-base border text-secondary-light radius-8">
            @foreach ($allTahunPelajaran as $tp)
                <option value="{{ $tp->id }}">{{ $tp->nama }}</option>
            @endforeach
        </select>
    </div>
    <!-- Chart Wrapper -->
    <div class="flex-grow-1 d-flex justify-content-center align-items-start">
        <div id="pemasukanDonutChart"
             class="apexcharts-tooltip-z-none"
            >
        </div>
    </div>
</div>
                </div>
            </div>
        <!-- ======================= First Row Cards End =================== -->
        <!-- ================== Second Row Cards Start ======================= -->
            <!-- Top Categories Card Start -->
            <div class="col-xxl-4 col-md-6">
                <div class="card">
                    <div class="card-header">
                        <div class="d-flex align-items-center flex-wrap gap-2 justify-content-between">
                            <h6 class="mb-2 fw-bold text-lg mb-0">Tunggakan Terbesar</h6>
                            <a href="{{ route('staff.tagihan.index') }}" class="text-primary-600 hover-text-primary d-flex align-items-center gap-1">
                            Lihat Semua
                            <iconify-icon icon="solar:alt-arrow-right-linear" class="icon"></iconify-icon>
                            </a>
                        </div>
                    </div>
                    <div class="card-body">
                     @foreach ($tunggakan as $row)
<div class="d-flex align-items-center justify-content-between gap-3 mb-24">
    <div class="d-flex align-items-center gap-12">
        <div class="w-40-px h-40-px radius-8 flex-shrink-0 
            {{ $row->sisa_tunggakan > 2000000 ? 'bg-danger-50' : ($row->sisa_tunggakan > 1000000 ? 'bg-warning-50' : 'bg-info-50') }}
            d-flex justify-content-center align-items-center">
            <i class="ri-money-dollar-circle-line 
                {{ $row->sisa_tunggakan > 2000000 ? 'text-danger-600' : ($row->sisa_tunggakan > 1000000 ? 'text-warning-600' : 'text-info-600') }}
                text-xl">
            </i>
        </div>
        <div class="flex-grow-1">
            <h6 class="text-md mb-0 fw-normal">
                {{ $row->nama_siswa }}
            </h6>
            <span class="text-sm text-secondary-light fw-normal">
                {{ $row->nama_kelas ?? '-' }} •
                Tunggakan:
                <strong class="text-danger-600">
                    Rp {{ number_format($row->sisa_tunggakan, 0, ',', '.') }}
                </strong>
            </span>
        </div>
    </div>
    <a href="{{ route('staff.tagihan.tampilkantagihan', $row->siswa_id) }}"
       class="w-24-px h-24-px bg-primary-50 text-primary-600
              d-flex justify-content-center align-items-center
              text-lg bg-hover-primary-100 radius-4">
        <i class="ri-arrow-right-s-line"></i>
    </a>
</div>
@endforeach
                      
                      
                       
                    </div>
                </div>
                 <!-- Top Categories Card End -->
           
            </div>
        </div>
     
          
            <!-- Instructor Card End -->
       
        <!-- ================== Second Row Cards End ======================= -->
                 <div class="row gy-4 mb-24">
                <div class="">
                    <div class="card w-full ">
                        <div class="card-header d-flex align-items-center flex-wrap gap-2 justify-content-between">
                         <h6 class="mb-2 fw-bold text-lg mb-0">Pemasukan dan Pengeluaran</h6>
                         <div class=""> 
                            <select name="tahun_pelajaran_id"
        id="tahunPelajaranPP"
        class="form-select form-select-sm">
    <option value="all">
      
        Semua Tahun Pelajaran
    </option>
    @foreach ($allTahunPelajaran as $tp)
        <option value="{{ $tp->id }}" {{ request('tahun_pelajaran_id', $tahunPelajaranAktif?->id) == $tp->id ? 'selected' : '' }}>
          
            {{ $tp->nama }}
            {{ $tp->is_active ? '(Aktif)' : '' }}
          
           
        </option>
    @endforeach
</select>
                         </div>
                        </div>
                        <div class="card-body px-24">     
                        <div class="mx-24" id="barPemasukanPengeluaran"></div>
                        </div>
               
                    </div>
                </div>
            </div> 
           
     
    
    </div>
  </div>
  @push('scripts')
    @if(session('login_success'))
<script>
    console.log('{{ session("login_success") }}');
    Swal.fire({
        title: 'Berhasil Login!',
        text: 'Selamat datang {{auth()->user()->nama}}',
        icon: 'success',
        timer: 3000,
        showConfirmButton: false
    });
</script>
@endif
   
    <script>
          function createChartTwo(chartId, color1, color2) {
        var options = {
            series: [{
                name: 'series1',
                data: [48, 35, 55, 32, 48, 30, 55, 50, 57]
            }, {
                name: 'series2',
                data: [12, 20, 15, 26, 22, 60, 40, 48, 25]
            }],
            legend: {
                show: false 
            },
            chart: {
                type: 'area',
                width: '100%',
                height: 270,
                toolbar: {
                    show: false
                },
                padding: {
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 0
                }
            },
            dataLabels: {
                enabled: false
            },
            stroke: {
                curve: 'smooth',
                width: 3,
                colors: [color1, color2], // Use two colors for the lines
                lineCap: 'round'
            },
            grid: {
                show: true,
                borderColor: '#D1D5DB',
                strokeDashArray: 1,
                position: 'back',
                xaxis: {
                    lines: {
                        show: false
                    }
                },
                yaxis: {
                    lines: {
                        show: true
                    }
                },
                row: {
                    colors: undefined,
                    opacity: 0.5
                },
                column: {
                    colors: undefined,
                    opacity: 0.5
                },
                padding: {
                    top: -20,
                    right: 0,
                    bottom: -10,
                    left: 0
                },
            },
            colors: [color1, color2], // Set color for series
            fill: {
                type: 'gradient',
                colors: [color1, color2], // Use two colors for the gradient
                // gradient: {
                //     shade: 'light',
                //     type: 'vertical',
                //     shadeIntensity: 0.5,
                //     gradientToColors: [`${color1}`, `${color2}00`], // Bottom gradient colors with transparency
                //     inverseColors: false,
                //     opacityFrom: .6,
                //     opacityTo: 0.3,
                //     stops: [0, 100],
                // },
                gradient: {
                    shade: 'light',
                    type: 'vertical',
                    shadeIntensity: 0.5,
                    gradientToColors: [undefined, `${color2}00`], // Apply transparency to both colors
                    inverseColors: false,
                    opacityFrom: [0.4, 0.4], // Starting opacity for both colors
                    opacityTo: [0.3, 0.3], // Ending opacity for both colors
                    stops: [0, 100],
                },
            },
            markers: {
                colors: [color1, color2], // Use two colors for the markers
                strokeWidth: 3,
                size: 0,
                hover: {
                    size: 10
                }
            },
            xaxis: {
                labels: {
                    show: false
                },
                categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                tooltip: {
                    enabled: false
                },
                labels: {
                    formatter: function (value) {
                        return value;
                    },
                    style: {
                        fontSize: "14px"
                    }
                }
            },
            yaxis: {
                labels: {
                    formatter: function (value) {
                    return "$" + value + "k";
                    },
                    style: {
                    fontSize: "14px"
                    }
                },
            },
            tooltip: {
                x: {
                    format: 'dd/MM/yy HH:mm'
                }
            }
        };
        var chart = new ApexCharts(document.querySelector(`#${chartId}`), options);
        chart.render();
    }
    createChartTwo('enrollmentChart', '#45B369', '#487fff');
    // ===================== Average Enrollment Rate End =============================== 
    
    // ================================ Users Overview Donut chart Start ================================ 
    var options = { 
      series: [500, 500, 500],
      colors: ['#FF9F29', '#487FFF', '#E4F1FF'],
      labels: ['Active', 'New', 'Total'] ,
      legend: {
          show: false 
      },
      chart: {
        type: 'donut',    
        height: 270,
        sparkline: {
          enabled: true // Remove whitespace
        },
        margin: {
            top: 0,
            right: 0,
            bottom: 0,
            left: 0
        },
        padding: {
          top: 0,
          right: 0,
          bottom: 0,
          left: 0
        }
      },
      stroke: {
        width: 0,
      },
      dataLabels: {
        enabled: false
      },
      responsive: [{
        breakpoint: 480,
        options: {
          chart: {
            width: 200
          },
          legend: {
            position: 'bottom'
          }
        }
      }],
    };
    var chart = new ApexCharts(document.querySelector("#userOverviewDonutChart"), options);
    chart.render();
  // ================================ Users Overview Donut chart End ================================ 
    
    // ================================ Client Payment Status chart End ================================ 
    var options = {
      series: [{
        name: 'Net Profit',
        data: [44, 100, 40, 56, 30, 58, 50]
      }, {
        name: 'Free Cash',
        data: [60, 120, 60, 90, 50, 95, 90]
      }],
      colors: ['#45B369', '#FF9F29'],
      labels: ['Active', 'New', 'Total'] ,
      
      legend: {
          show: false 
      },
      chart: {
        type: 'bar',
        height: 420,
        toolbar: {
          show: false
        },
      },
      grid: {
          show: true,
          borderColor: '#D1D5DB',
          strokeDashArray: 4, // Use a number for dashed style
          position: 'back',
      },
      plotOptions: {
        bar: {
          borderRadius: 4,
          columnWidth: 8,
        },
      },
      dataLabels: {
        enabled: false
      },
      states: {
        hover: {
        filter: {
            type: 'none'
            }
        }
    },
      stroke: {
        show: true,
        width: 0,
        colors: ['transparent']
      },
      xaxis: {
        categories: ['Mon', 'Tues', 'Wed', 'Thurs', 'Fri', 'Sat', 'Sun'],
      },
      fill: {
        opacity: 1,
        width: 18,
      },
    };
    var chart = new ApexCharts(document.querySelector("#paymentStatusChart"), options);
    chart.render();
  // ================================ Client Payment Status chart End ================================ 
  
  // ================================ Aminated Radial Progress Bar Start ================================ 
  $('svg.radial-progress').each(function (index, value) {
        $(this).find($('circle.complete')).removeAttr('style');
    });
    // Activate progress animation on scroll
    $(window).scroll(function () {
        $('svg.radial-progress').each(function (index, value) {
            // Trigger when the element is fully in the viewport
            if (
                $(window).scrollTop() >= $(this).offset().top - $(window).height() &&
                $(window).scrollTop() <= $(this).offset().top + $(this).height()
            ) {
                // Get percentage of progress
                const percent = $(value).data('percentage');
                // Get radius of the svg's circle.complete
                const radius = $(this).find($('circle.complete')).attr('r');
                // Get circumference (2πr)
                const circumference = 2 * Math.PI * radius;
                // Get stroke-dashoffset value based on the percentage of the circumference
                const strokeDashOffset = circumference - ((percent * circumference) / 100);
                // Transition progress for 1.25 seconds
                $(this).find($('circle.complete')).animate({ 'stroke-dashoffset': strokeDashOffset }, 1250);
            }
        });
    }).trigger('scroll');
  // ================================ Aminated Radial Progress Bar End ================================ 
    </script>
<script>
const tahunSelect = document.getElementById('tahunPelajaran');
const semesterSelect = document.getElementById('semester');
const form = document.getElementById('filterForm');
function showLoadingAndSubmit() {
    Swal.fire({
        title: 'Memuat data...',
        text: 'Mohon tunggu sebentar',
        allowOutsideClick: false,
        allowEscapeKey: false,
        didOpen: () => {
            Swal.showLoading();
        }
    });
    // kasih delay dikit biar swal sempat render
    setTimeout(() => {
        form.submit();
    }, 300);
}
// 🔁 Tahun Pelajaran berubah
tahunSelect.addEventListener('change', function () {
    semesterSelect.value = 'all';
    showLoadingAndSubmit();
});
// 🔁 Semester berubah
semesterSelect.addEventListener('change', function () {
    showLoadingAndSubmit();
});
</script>
<script>
let pemasukanChart;
function loadPemasukanChart(tahunPelajaranId) {
    $.ajax({
        url: '/staff/dashboard/keuangan/pemasukan-per-jenis',
        method: 'GET',
        data: {
            tahun_pelajaran_id: tahunPelajaranId
        },
        success: function (res) {
          
    console.log('RAW SERIES:', res.series);
    let series = [];
    let labels = [];
    res.series.forEach((val, i) => {
        val = Number(val);
        if (!isNaN(val) && val > 0) {
            series.push(val);
            labels.push(res.labels[i]);
        }
    });
    if (series.length === 0) {
        document.querySelector('#pemasukanDonutChart').innerHTML =
            '<p class="text-center">Tidak ada data pemasukan</p>';
        return;
    }
    const options = {
        series: series,
        labels: labels,
        chart: {
            type: 'donut',
            height: 600
        },
        dataLabels: { enabled: false },
        legend: { position: 'bottom' },
        tooltip: {
            y: {
                formatter: val =>
                    'Rp ' + val.toLocaleString('id-ID')
            }
        }
    };
    if (window.pemasukanChart) {
        window.pemasukanChart.destroy();
    }
    window.pemasukanChart = new ApexCharts(
        document.querySelector("#pemasukanDonutChart"),
        options
    );
    window.pemasukanChart.render();
            
        },
        error: function (err) {
            console.error('Error fetching pemasukan data:', err);
        }
    });
}
</script>
<script>
loadPemasukanChart({{ $tahunPelajaranAktif->id }});
</script>
<script>
$('#filterTahunPelajaran').on('change', function () {
    loadPemasukanChart($(this).val());
});
</script>
<script>
let barChart;

function loadBarChart(tahun = 'all', semester = 'all') {
    $.ajax({
        url: "/staff/dashboard/chart-pemasukan-pengeluaran",
        data: {
            tahun_pelajaran_id: tahun,
            semester_id: semester
        },
        success: function (res) {
            console.log(res);

            if (barChart) barChart.destroy();

            const options = {
              series: res.series,
    chart: {
        type: 'bar',
        height: 300,
        toolbar: { show: false }
    },
    plotOptions: {
        bar: {
            borderRadius: 6,
            distributed: true // 🔥 WAJIB biar beda warna
        }
    },
    colors: ['#22C55E', '#EF4444'], // hijau & merah
    xaxis: {
        categories: res.categories
    },
                yaxis: {
                    labels: {
                        formatter: function (value) {
                            if (value >= 1_000_000) return 'Rp ' + (value / 1_000_000).toFixed(1) + ' jt';
                            if (value >= 1_000) return 'Rp ' + (value / 1_000).toFixed(0) + ' rb';
                            return 'Rp ' + value;
                        }
                    }
                },
                tooltip: {
                    y: {
                        formatter: val => 'Rp ' + val.toLocaleString('id-ID')
                    }
                },
                legend: {
                    show: true,
                    position: 'top'
                }
            };

            barChart = new ApexCharts(
                document.querySelector("#barPemasukanPengeluaran"),
                options
            );
            barChart.render();
        }
    });
}
// load pertama
loadBarChart();
</script>
<script>
    $('#tahunPelajaranPP, #semesterPP').on('change', function () {
        console.log( $('#tahunPelajaranPP').val());
    loadBarChart(
        $('#tahunPelajaranPP').val(),
        $('#semesterPP').val()
    );
});
</script>

  @endpush