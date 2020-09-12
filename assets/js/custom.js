$(document).ready(function () {
    
    $('.navbar-nav>li').on('click', function () {
        $(this).toggleClass('open');
    });
//    $('.content').on('click', function() {
//        $(this).removeClass('open');
//    });

//    menu trigger begins
    $(".hamburger").click(function () {
        menu_trigger();
    });
//    menu trigger ends
//smart view begins
    var table_smart_view_trigger = $('.table-smart-view-trigger');
    table_smart_view_trigger.on('click', function () {
        $('.table-smart-view-trigger > i').toggleClass('hide');
        $(this).closest('.card').find('table').toggleClass('grid');
//smart view ends
    });
//edit mode begins
    var edit_mode_trigger = $('.edit-mode-check .checkbox input[type=checkbox]');
    edit_mode_trigger.on('click', function () {
        if ($(this).is(':checked')) {
            $(this).closest('.card').find('table').addClass('edit-mode-on');
        } else {
            $(this).closest('.card').find('table').removeClass('edit-mode-on');
        }
    });
//edit mode ends

//add products begins
    $('.add-image-img').hide();
    $('.clear-image').hide();
//add products ends


    var full_path = location.href.split("#")[0];
    $(".nav a").each(function () {
        var $this = $(this);
        if ($this.prop("href").split("#")[0] == full_path) {
            $this.closest('li').addClass("active");
            $this.closest('li.has-child').addClass("active");

            var child_li_height = $this.closest('li').height() + 20;
            var child_li_length = $this.closest('ul').find('li').length;
            $('.nav li').find('>ul').css('max-height', 0);
            setTimeout(function () {
                var child_ul_total_height_new = child_li_height * child_li_length;
                $this.closest('ul').css('max-height', child_ul_total_height_new);
            }, 500);
        }
    });

    var parts = full_path.split("/");
    var last_part = parts[parts.length - 2];
    cap_last_part = last_part.toLowerCase().replace(/\b[a-z]/g, function (letter) {
        return letter.toUpperCase();
    });
    $('title').text('BizAssist | ' + cap_last_part);
    $('span.page-title').text(cap_last_part);


    $('.nav li').on('click', function () {
        var clicked_nav_ele = $(this);
        if ((clicked_nav_ele).hasClass('has-child')) {
            var child_li_height = $(this).find('>ul>li').height() + 20;
            var child_li_length = $(this).find('>ul>li').length;

            $('.nav li').find('>ul').css('max-height', 0);
            var child_ul_total_height = child_li_height * child_li_length;
            $(this).find('>ul').css('max-height', child_ul_total_height);

            $('.nav li').removeClass('open');
            $(this).addClass('open');
        } else {

        }
    });
});

//menu trigger function\
function menu_trigger() {
    $('body').toggleClass("menu-is-active");
    $('body').toggleClass("menu-is-not-active");
}
//menu trigger function


//add products begins
$('.search-filter').on('keyup', function () {
    if ($(this).val().length > 0) {
        $(this).closest('.form-group').find('.search-filter-list-container').addClass('after');
    } else {
        $(this).closest('.form-group').find('.search-filter-list-container').removeClass('after');
    }
});
$('.search-filter-list-container > li > a').on('click', function () {
    var search_filter_selected_text = $(this).text();
    var search_filter_selected_val = $(this).attr('value');
    $(this).closest('.form-group').find('.search-filter').text(search_filter_selected_text);
    $(this).closest('.form-group').find('.search-filter').val(search_filter_selected_val);
    $(this).closest('.form-group').find('.search-filter-list-container').removeClass('after');
});
$('.form-group input:not(.calc)').on('keyup', function () {
    if ($(this).val().length > 0) {
        $(this).closest('.form-group').find('.clear-field').remove();
        $(this).closest('.form-group').append('<i class="material-icons clear-field" onclick="clear_field()">close</i>');
    } else {
        $(this).closest('.form-group').find('.clear-field').remove();
    }
});
function clear_field() {
    var clear_field_element = $(event.target);
    clear_field_element.closest('.form-group').find('input').val("");
    clear_field_element.closest('.form-group').find('.search-filter-list-container').removeClass('after');
    clear_field_element.remove();
}


$('.clear-image').on('click', function () {
    $('.add-image-img').fadeOut(650);
    setTimeout(function () {
        $('.add-image-img').hide();
        $('.add-image-img').attr('src', '');
        $('.product-img-show').attr('src', '');
    }, 650);
    $('.clear-image').hide();
});

function clear_cache() {
    event.preventDefault();
    window.location.reload(true);
}

//online check
// setInterval(online, 10);
function online() {
//    let isOnline = (navigator.onLine ? 'online' : 'offline');
    // console.log(isOnline);
//    let onlineSpan = document.querySelector('#online-state');
//    onlineSpan.innerHTML = isOnline;
    if (navigator.onLine) {
        setTimeout(function () {
            $('#offline-indicator-container').removeClass('after');
            setTimeout(function () {
                $('#offline-indicator-container').removeClass('offline');
            }, 2000);
        }, 250);
    } else {
        document.addEventListener('contextmenu', event => event.preventDefault())
        $(document).keydown(function (e) {
            if (e.keyCode == 123) {
                e.preventDefault();
            }
        });
        setTimeout(function () {
            $('#offline-indicator-container').addClass('offline');
            setTimeout(function () {
                $('#offline-indicator-container').addClass('after');
            }, 2000);
        }, 250);
    }
}
//online check


// Find the right method, call on correct element
function launchIntoFullscreen(element) {
    if (element.requestFullscreen) {
        element.requestFullscreen();
        full_screen_on_indicator();
    } else if (element.mozRequestFullScreen) {
        element.mozRequestFullScreen();
        full_screen_on_indicator();
    } else if (element.webkitRequestFullscreen) {
        element.webkitRequestFullscreen();
        full_screen_on_indicator();
    } else if (element.msRequestFullscreen) {
        element.msRequestFullscreen();
        full_screen_on_indicator();
    }
}

// Launch fullscreen for browsers that support it!
//launchIntoFullscreen(document.documentElement); // the whole page
//launchIntoFullscreen(document.getElementById("videoElement")); // any individual element


// Whack fullscreen
function exitFullscreen() {
    if (document.exitFullscreen) {
        document.exitFullscreen();
        full_screen_off_indicator();
    } else if (document.mozCancelFullScreen) {
        document.mozCancelFullScreen();
        full_screen_off_indicator();
    } else if (document.webkitExitFullscreen) {
        document.webkitExitFullscreen();
        full_screen_off_indicator();
    }
}

// Cancel fullscreen for browsers that support it!
//exitFullscreen();

function full_screen_on_indicator() {
    $('#full-screen-btn').addClass('hide');
    $('#exit-full-screen-btn').removeClass('hide');

    $('#full-screen-btn').removeClass('selected');
    $('#exit-full-screen-btn').addClass('selected');
}
function full_screen_off_indicator() {
    $('#full-screen-btn').removeClass('hide');
    $('#exit-full-screen-btn').addClass('hide');

    $('#full-screen-btn').addClass('selected');
    $('#exit-full-screen-btn').removeClass('selected');
}

function toggle_list_view() {
    event.preventDefault();
    $(event.target).closest('.table-view-toggle').find('i').toggleClass('hide');
    $('.shop-container').toggleClass('list-view-on');
}