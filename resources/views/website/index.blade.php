@extends('layouts.master')
@section('title')
@lang('app.site-title')
@endsection

@section('content')
{{-- Step section --}}
<section class="steps text-right" dir="rtl">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 mb-30 text-white text-center steps-header">3 خطوات نحو حياة أفضل</div>
            <div class="clearfix"></div>
            <div class="col-md-2"></div>
            <div class="col-md-2 step active">اختار المعالج</div>
            <div class="col-md-1 separator"></div>
            <div class="col-md-2 step">حدد التاريخ والوقت</div>
            <div class="col-md-1 separator"></div>
            <div class="col-md-2 step">أكمل عملية الدفع</div>
        </div>
    </div>
</section>

{{-- Search bar --}}
<section class="searchbar mt-20">
    <div class="container">
        <div class="row justify-content-center" dir="rtl">
            <form id="formSearch" class="form-inline w-100">
                <div class="col-md-3"></div>
                <div class="col-md-3 col-sm-5">
                    <div class="input-group mb-3 border-offwhite">
                        <span class="input-group-text no-border" id="basic-addon1">
                            <i class="fa fa-search"></i>
                        </span>
                        <input type="text" class="form-control no-border" name="name" id="nameSearch"
                            placeholder="بحث باسم المعالج" aria-label="Username" aria-describedby="basic-addon1">
                    </div>
                </div>
                <div class="col-md-3 col-sm-3">
                    <div class="input-group mb-3 border-offwhite">
                        <select name="category" id="categorySearch" class="form-control no-border">
                            <option value="">كل التصنيفات</option>
                            @forelse ($categories as $cat)
                            <option value="{{ $cat->id }}">{{ $cat->name }}</option>
                            @empty
                            <option value="">لا توجد تصنيفات</option>
                            @endforelse
                        </select>
                        <span class="input-group-text no-border" id="basic-addon3">
                            <i class="fa fa-sort-down"></i>
                        </span>
                    </div>
                </div>
                <div class="col-md-3 col-sm-4">
                    <div class="input-group mb-3 border-offwhite">
                        <span class="input-group-text no-border" id="basic-addon4">
                            <i class="fa fa-sort"></i>&nbsp; رتب حسب
                        </span>
                        <select name="order" id="orderSearch" class="form-control no-border">
                            @forelse ($searchCriteria as $key => $value)
                            <option value="{{ $key }}">{{ $value }}</option>
                            @empty
                            <option value="">لا يوجد تصنيفات</option>
                            @endforelse
                        </select>
                        <span class="input-group-text no-border" id="basic-addon5">
                            <i class="fa fa-sort-down"></i>
                        </span>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>

{{-- Results search --}}
<section class="search-results mt-10 mb-30 pad-10" dir="rtl">
    <div class="container text-right">
        <div class="row">
            <div class="col-lg-3 col-md-4 d-none d-md-block">
                <div class="filters-container bg-white">
                    <div role="button"
                        class="filters-header d-flex align-items-center justify-content-between bg-blue text-white pt-10 pb-10 pr-20 pl-20 rounded-top sm-no-border-radius">
                        <span class="">التصنيف</span><span class=" pointer">مسح التصنيف</span></div>
                    <div class="filters-body pr-20 pl-20 pt-20 pb-100">
                        <div class="filter">
                            <div class="text-blue d-flex align-items-center">
                                <img src="{{ asset('website/assets') }}/svg/time.svg" style="width: 20px; height: 20px;"
                                    alt="">
                                &nbsp;
                                <span class="">المواعيد المتاحة والمدة </span>
                            </div>
                            <div class="container">
                                <div class="row pt-10 pr-10 pl-10">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="today">اليوم</label>
                                            <input type="checkbox" name="day">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="today">هذا الاسبوع</label>
                                            <input type="checkbox" name="day">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="filter mt16">
                            <div class="filter-name text-dark1 ">متاح من : اختر ميعاد</div><input
                                class="mat-datepicker-input form-control mt-10 ng-untouched ng-pristine ng-valid"
                                placeholder="اختر تاريخ" aria-haspopup="dialog" data-mat-calendar="mat-datepicker-0">

                            <div class="filter-name text-dark1  mt-10">متاح إلى: اختر ميعاد</div><input
                                class="mat-datepicker-input form-control mt-10 ng-untouched ng-pristine"
                                placeholder="اختر تاريخ" disabled="" aria-haspopup="dialog"
                                data-mat-calendar="mat-datepicker-1">


                        </div>
                        <div class="filter mt-20">
                            <div class="filter-name text-dark "> Duration: </div>
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="time">60 Min</label>
                                            <input type="checkbox" name="day">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="time">30 Min</label>
                                            <input type="checkbox" name="day">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="filter mt-20">
                            <div class="d-flex align-items-center text-blue d-flex align-items-center">
                                <img src="{{ asset('website/assets') }}/svg/svgexport-7.svg"
                                    style="width: 25px; height: 25px;" />
                                &nbsp;
                                <span class="">الجنس</span>
                            </div>
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="gender">ذكر</label>
                                            <input type="checkbox" name="gender">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="gender">انثى</label>
                                            <input type="checkbox" name="gender">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="filter mt-20">
                            <div class="d-flex align-items-center text-blue d-flex align-items-center">
                                <img src="{{ asset('website/assets') }}/svg/rating.svg"
                                    style="width: 25px; height: 25px;" />

                                &nbsp;
                                <span class="">التقييم</span>
                            </div>
                            <div class="mt12 d-flex align-items-center">
                                <div>
                                    <fieldset class="rating">
                                        <input type="radio" value="5" name="undefined_rating">
                                        <label title="Rocks!">5 stars</label>
                                        <input type="radio" value="4" name="undefined_rating">
                                        <label title="Pretty good">4 stars</label>
                                        <input type="radio" value="3" name="undefined_rating">
                                        <label title="Meh">3 stars</label>
                                        <input type="radio" value="2" name="undefined_rating">
                                        <label title="Kinda bad">2 stars</label>
                                        <input type="radio" value="1" name="undefined_rating">
                                        <label title="Sucks big time">1 star</label>
                                    </fieldset>
                                </div><span class="text-dark1  ml16">و ما فوق</span>
                            </div>
                        </div>
                        <div class="filter mt-20">
                            <div class="d-flex align-items-center text-blue d-flex align-items-center">
                                <img src="{{ asset('website/assets') }}/svg/language.svg"
                                style="width: 25px; height: 25px;" />
                                &nbsp;
                                    <span class="">اللغة والبلد</span>
                            </div>
                            <div class="mt-20">
                                <select name="" id="" class="form-control">
                                    <option value="">اختر اللغة</option>
                                </select>
                            </div>
                            <div class="mt-20">
                                <select name="" id="" class="form-control">
                                    <option value="">اختر البلد</option>
                                </select>
                            </div>
                        </div>
                        <div class="filter mt-30">
                            <div class="d-flex align-items-center text-blue d-flex align-items-center">
                                <img src="{{ asset('website/assets') }}/svg/Egp-1.svg"
                                style="width: 25px; height: 25px;" />
                                &nbsp;
                                    <span class="">تكلفة الجلسة
                                    (جنيه)</span>
                            </div>
                            <div class="mt-20  fees-filter ">
                                <div class="p4 brs2 mr-10 mt-10 mb-10 d-inline-block pointer bg-off-white text-dark1"> Less than
                                    150 </div>
                                <div class="p4 brs2 mr-10 mt-10 mb-10 d-inline-block pointer bg-off-white text-dark1"> From 150
                                    To 200 </div>
                                <div class="p4 brs2 mr-10 mt-10 mb-10 d-inline-block pointer bg-off-white text-dark1"> From 200
                                    To 300 </div>
                                <div class="p4 brs2 mr-10 mt-10 mb-10 d-inline-block pointer bg-off-white text-dark1"> From 300
                                    to 500 </div>
                                <div class="p4 brs2 mr-10 mt-10 mb-10 d-inline-block pointer bg-off-white text-dark1"> Above 500
                                </div>
                            </div>


                        </div>
                    </div>


                </div>
            </div>
            <div class="col-lg-9 col-md-8 sm-mt10">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="row" id="results-theripst">
                            <div class="col-sm-4" id="staticBox">
                                <div class="bg-blue border-offwhite recommendation-card ng-star-inserted">
                                    <img src="https://www.shezlong.com/ar/assets/images/search/recommendation-card-bg.svg"
                                        class="recommended-image">
                                    <div class="pr-10 pl-10 mt-30 mb-30">
                                        <div class="text-white text-bold">لا أعرف كيفية</div>
                                        <div class="text-white text-bold">اختيار المعالج المناسب؟</div>
                                    </div>
                                    <div class="mt-30 mb-30 d-flex justify-content-center">
                                        <div class="text-center bg-orange text-white pr-30 pl-30 pt-30 pb-30"
                                            style="border-radius: 22px; padding: 10px; cursor: pointer;">
                                            <a href="#" class="text-white no-decoration">ترشيحات شيزلونج</a></div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-12 text-center" id="spinner" style="display: none;">
        <div class="spinner-border" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
</section>

{{-- Sidebar --}}
<div id="userSideBar" class="sidebar profile-review-container" dir="rtl">
    <div class="row">
    </div>
    <div id="userFound">
        <div class="col-sm-12 text-center" id="spinnerUser" style="display: none;">
            <div class="spinner-border" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
    </div>
    <div class="col-12">
        <div>
            <div class="row no-m">
                <div class="col-6 no-p pt8 pb8 text-center fz16 pointer bg-blue text-white"> This Week </div>
                <div class="col-6 no-p Calender pt8 pb8 text-center fz16 pointer text-blue border border-blue bg-white">
                    Calender </div>
            </div>
            <div class="row no-m bg-offwhite1 brs2 border border-offwhite">
                <div class="col-12 mt10 sm-p5">
                    <div class="d-flex justify-content-between ">
                        </span></div>
                    <!----><button id="booking-session-btn"
                        class="offset-md-3 col-md-6 col-12 btn bg-blue text-white brs22 pt8 pb8 mt16 mb20 book-button ng-star-inserted"
                        disabled="">احجز الأن</button>
                    <!---->
                    <!---->
                </div>
            </div>
        </div>
    </div>
</div>
</div>

@endsection

@section('scripts')
<script>
    function openNav() {
    document.getElementById("userSideBar").style.width = "100%";
    }

    function closeNav() {
    document.getElementById("userSideBar").style.width = "0";
    }

    $(document).mouseup(function(e) {
        let container = $("#userSideBar");
        if (!container.is(e.target) && container.has(e.target).length === 0) {
            closeNav();
        }
    });

    // Grep data 
    let page = 1;
    
    // Get data when ready
    $(document).ready(function(){
        getUsers(page);
    });

    // Grep data on scroll
    $(window).scroll(function() {
        if($(window).scrollTop() == ($(document).height() - $(window).height())) {
            let nextPage = page++;
            getUsers(nextPage);
        }
    });

    // Get data when from events occurs
    $("#nameSearch").keyup(function(){
        let paramenters = $("#formSearch").serialize();
        page = 1;
        getUsers(page, paramenters, true);
    });
    
    $("#categorySearch").change(function(){
        let paramenters = $("#formSearch").serialize();
        page = 1;
        getUsers(page, paramenters, true);
    });

    $("#orderSearch").change(function(){
        let paramenters = $("#formSearch").serialize();
        page = 1;
        getUsers(page, paramenters, true);
    });

    function getUsers(page, parameters=null, newData=false){
        $.ajax({
            url: `{{ url('/get-users?page=') }}${page}`,
            method: 'get',
            data: parameters,
            beforeSend: function(){
                $("#spinner").show();
            },
            success: function(data){
                let cards = "";
                $("#spinner").hide();
                if(data.status){
                    $.each(data.payload, function(index, element){
                        let starElement = `<span class="fa fa-star text-yellow star"></span>`;
                        let stars = "";
                        for(let i=0; i< parseInt(element.rating); i++){
                            stars+= starElement;
                        }
                            
                        let card = `<div class="col-lg-4 col-md-6 px-md-2 mb-30">
                                <div class="doctor-card">
                                    <div class="therapist-details pl-10 pr-10 pt-20 pb-20 sm-p16 d-md-block d-flex">
                                        <div class="profile-pic-container"><a><img
                                                    default="assets/images/search/therapistmale.svg"
                                                    class="pic img pointer online"
                                                    src="${element.avatar}"></a>
                                        </div>
                                        <div class="profile-details text-md-center text-center">
                                            <div class="mt-10 d-flex align-items-center justify-content-center">
                                                <div class="text-blue name"> <a href="#" class="no-decoration">${element.name}</a></div>
                                            </div>
                                            <div class="title mt-10">${element.job == null ? '' : element.job}</div>
                                            <div class="rate mt5 d-flex align-items-center justify-content-center">
                                                <div class="rating-container position-realtive pointer">
                                                    <div class="rating">
                                                        <div class="rating_continer">
                                                            <div class="yellow_stars">${stars}</div>
                                                        </div>
                                                    </div>
                                                    <div class="rating-details-container p8">
                                                    </div>
                                                </div>
                                                <div class=" mr5">${element.rating}</div>
                                            </div>
                                            <div class="speciality mt-15">متخصص فى ${element.categoriesFormatted}
                                            </div>
                                            <div class="mt-15">
                                                <span class="fees">
                                                    <img src="{{ asset('website/assets') }}/svg/Egp-1.svg" alt="">
                                                     ${element.session_cost} جنيه
                                                </span>
                                                <!---->
                                                <!----><span class="sessions mr-30">
                                                    <img src="{{ asset('website/assets') }}/svg/session.svg" alt="">
                                                    ${element.session_count}+ جلسة
                                                    <!---->
                                                </span></div>
                                        </div>
                                    </div> 
                                    <div class="buttons pt-10" onclick="return getUser(${element.id})">
                                        <div class="book"><a href="javascript::void();" class="no-decoration text-white">الحجز الان</a>
                                        </div>
                                        <div class="view-profile"><a href="#" class="no-decoration text-dark">عرض الصفحة
                                                الشخصية</a></div>
                                    </div>
                                </div>
                               

                            </div>`;
                            // Add stars according to user rate
                            
                            
                            // Append to cards 
                            cards += card;
                    });
                    if(newData){
                        let AllElements = document.querySelector('#staticBox').outerHTML + cards;
                        $("#results-theripst").html(AllElements);
                    }else{
                        $("#results-theripst").append(cards);
                    }
                }else{
                    let noData = document.querySelector('#staticBox').outerHTML;
                    noData += `<div class='alert alert-danger'>${data.message}</div>`;
                    $("#results-theripst").html(noData);
                } 
            },
            error: function(){

            }
        });
    }

    function getUser(id){
        $.ajax({
            url: `{{ url('/get-user/${id}') }}`,
            method: 'get',
            beforeSend: function(){
                $("#spinnerUser").show();
            },
            success: function(data){
                openNav();
                $("#spinnerUser").hide();
                if(data.status){
                        let element = data.payload;

                        let starElement = `<span class="fa fa-star text-yellow star"></span>`;
                        let stars = "";
                        for(let i=0; i< parseInt(element.rating); i++){
                            stars+= starElement;
                        }
                            
                        let card = `<div class="offset-md-2 col-md-9">
                        <div class="row">
                            <div class="col-md-4 text-center no-p"><img default="assets/images/search/therapistmale.svg"
                                    class="doctor-pic mt32"
                                    src="${element.avatar}">
                            </div>
                            <div class="col-md-8 no-p">
                                <div class="text-center">
                                    <div class="text-blue mt-30">${element.name}</div>
                                    <div class="text-dark mt-10">${element.job == null ? '' : element.job}</div>
                                    <div class="text-dark mt-10">
                                        <div>
                                            <div class="rating_continer">
                                                <div class="yellow_stars">
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="speciality text-dark mt-10">تخصص ${element.categoriesFormatted}</div>
                                    <div class=" text-dark mt-20 mb-20">
                                        <span class="ml10"> ${element.session_cost} جنيه / 60 دقيقة</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!---->
                    </div>`;
                    $("#userFound").html(card);
                }
            },
            error: function(){

            }
        });
    }

</script>
@endsection