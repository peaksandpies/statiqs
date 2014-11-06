express = require('express')
router = express.Router()

io = require('../socket')

# GET
router.get('/', (req, res)->
	io.getInstance().emit('stats', {daniel: 'hello'})
	res.json({'status':'ok'})
)



router.post('/', (req, res)->
	io.getInstance().emit('stats', req.body)
	res.json({'status':'ok'})
)



module.exports = router
