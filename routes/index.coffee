express = require('express')
router = express.Router()

io = require('../socket')

# /* GET home page. */
router.get('/', (req, res)->
	res.render('index', { title: 'Statiqs' })
)

module.exports = router
