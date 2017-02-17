var socketIO = require('socket.io');


exports.init = function(server){
  var io = socketIO(server);

  io.on("connection", function(socket){



    socket.on("message from client", function(msg, from, to){

    });

    socket.on("message function", function(msg, ack){
      ack(5);
    })

  });

  return server;

}
