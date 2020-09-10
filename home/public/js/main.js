AOS.init()
$('li>.a-js').on('click', function (event) {
  event.preventDefault()
  var link = $(event.target).attr('href')
  $('html,body').animate(
    {
      scrollTop: $('#' + link).offset().top - 250
    },
    500
  )
})

$(document).ready(function () {
  $('.ham,.nav-phone>ul').click(function () {
    $(this).toggleClass('open_ham')
    $('.first').toggleClass('first-o')
    $('.second').toggleClass('second-o')
    $('.third').toggleClass('third-o')
    $('nav').toggleClass('nav-open')
  })
})

$('.arrow').hover(() => {
  $('.arrow>img').toggleClass('arrow-hover')
})

$('.arrow').on('click', () => {
  $('html,body').animate(
    {
      scrollTop: $('#whoami').offset().top - 250
    },
    500
  )
})

$('#submit_form').on('click', function (e) {
  e.preventDefault()
  $('.text-danger').text('')
  let $fname = $('#name'),
    $phone = $('#phone'),
    $textarea = $('#textarea'),
    formValid = true,
    $btn = $('#submit_form'),
    phoneRegExp = /^0[2-9]\d{7,8}$/

  let userData = {
    fullname: $fname.val().trim(),
    phone: $phone.val().trim(),
    textarea: $textarea.val()
  }

  // $btn.attr('disabled', true);
  // $btn.find('span.btn-text').hide();
  // $btn.find('div.loader').css({
  //     'display': 'inline-block'
  // });

  if (userData.fullname.length < 2 || userData.fullname.length > 70) {
    formValid = display_error($fname, '*First Name is Required')
  }
  if (!phoneRegExp.test(userData.phone)) {
    formValid = display_error($phone, '*A Valid Phone is required')
  }

  if (formValid) {
    $.ajax({
      type: 'POST',
      url: BASE_URL + '/me/contact',
      data: userData,
      dataType: 'html',
      success: function (res) {
        if (res) {
          $btn.css('transition', 'all .6s')
          $btn.css('width', '0%')
          $btn.css('margin', '10px 44.2%')
          $btn.css('opacity', '0')
          setTimeout(function () {
            $('.name-email>input,textarea').hide()
            $('.spinner-border').addClass('none')
            $('.response').html(
              "<p style='font-size:27px;text-align:center;margin:50px 0px;'>Hey " +
                userData.fullname +
                "<br>Your details have been successfully sent.<br> Thanks for contacting me,<br>i'll get back to you soon!</p>"
            )
          }, 1300)
        } else {
          console.log('failed')
        }
      },
      error: function (e) {
        console.log(e.message)
      }
    })
  } else {
    setTimeout(function () {
      console.log('failed')
    }, 700)
  }
})

function display_error (element, message) {
  setTimeout(function () {
    element.next().text(message)
  }, 700)
  return false
}
