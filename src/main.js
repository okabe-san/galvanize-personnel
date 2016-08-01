console.log('sanity check!');

$(document).ready(function () {

// selected chara
  var chara = "";

    $.ajax({
      type: 'GET',
      url: 'https://galvanize-student-apis.herokuapp.com/gpersonnel/roles',
    }).done(function (info) {

      for ( var i = 0; i < Object.keys(info).length; i++) {
        var option = info[i].title;
        $('select').append($('<option></option>').text(option).attr('value', i));
      }

      $('select').change('blur', function() {
        var num = parseInt($('select').val());
        var link = info[num]["img"];
        chara = info[num].title;
        $('img').attr('src', '.'+link);
      })
    })

    $('form').on('submit', function (e) {
      e.preventDefault ();
      var first  = $('#firstName').val();
      var last = $('#lastName').val();
      $.ajax({
        type: 'POST',
        url: 'https://galvanize-student-apis.herokuapp.com/gpersonnel/users',
        data: {firstName: first, lastName: last, role: chara},
        success: function(info) {
          var message = info.message;
          $('p').html(message);
          $('p').delay(2000).fadeOut(500);
        },
        error: function (data) {
          console.log(data);
          var error = data.responseJSON.message;
          $('p').html(error);
          $('p').delay(2000).fadeOut(500);
        },
    })
  })
})
