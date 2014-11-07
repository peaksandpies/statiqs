
var socket = io.connect('http://localhost');


socket.on('stats', function (data) {
  console.log( data.id + ": " + data.value);

  if (data.id == 'distance' || data.id == 'magnetic' || data.id == 'movement') {
  	var current = $("#" + data.id + " p").text();
  	$("#" + data.id + " p").html( +current + data.value);
  } else {
  	$("#" + data.id + " p").html(data.value);
  }

  //socket.emit('frontend', { my: 'data' });
});

