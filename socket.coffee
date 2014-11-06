socket = require("socket.io")

io 		= null

module.exports = SocketIo =

	setup: (@server)->
		io = socket.listen(server)

	getInstance: ()->
		return io
