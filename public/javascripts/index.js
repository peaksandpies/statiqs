
var socket = io.connect('http://localhost');


socket.on('stats', function (data) {
  console.log(data.value);

  $("#" + data.id + " p").html(data.value)

  //socket.emit('frontend', { my: 'data' });
});

