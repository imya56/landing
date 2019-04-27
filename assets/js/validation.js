





$('#form').on('submit', function (e) {

  $(this).find('p').text('');

  e.preventDefault();
  $('submit').attr('disabled', true);


  var userData = {
    name: $('#name').val().trim(),
    email: $('#email').val().trim(),
    phone: $('#phone').val().trim(),
    type: $('#type').val().trim()
  }

  var formValid = true;
  var emailReg = /^(?!.*\.\.)[\w.\-#!$%&'*+\/=?^_`{}|~]{1,35}@[\w.\-]+\.[a-zA-Z]{2,15}$/;
  var phoneReg = /^0[2-9]\d{7,8}$/;
  if (userData.name.length < 2 || userData.name.length > 30) {
    formValid = false;
    $('#name').next().text(' * name must be between 2-30 chars');
  }
  if (!emailReg.test(userData.email)) {
    formValid = false;
    $('#email').next().text(' * email is required');
  }
  if (!phoneReg.test(userData.phone)) {
    formValid = false;
    $('#phone').next().text(' * phone number is required');
  }
  if (userData.type.length === 0) {
    formValid = false;
    $('#type').next().text(' * you must choose type');
  }
  if (!formValid) {
    $('submit').attr('disabled', false);

  } else {
    $.ajax({
      type: "POST",
      url: "save_data.php",
      data: userData,
      dataType: "html",
      beforeSend: function () {
        console.log(userData);
      },
      success: function (response) {
        if (response) location = 'tnx.html';
      }
    });
  }


});