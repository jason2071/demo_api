const express = require('express')
const app = express()
const bodyParser = require('body-parser')
const morgan = require('Morgan')
var multipart = require('connect-multiparty')
var multipartMiddleware = multipart()

app.use(bodyParser.json())
app.use(bodyParser.urlencoded({
    extended: true
}))

// form example : http://localhost:3000/form.html
app.use(express.static('./public'))
app.use(morgan('short'))

// home
app.get('/', (req, res) => {
    res.send('Demo Api by NodeJS')
})

// route + member
// var member = require('./routes/member')
// app.get('/member', member.list)
// app.get('/member/detail', member.detail)
// app.post('/member/login', multipartMiddleware,  member.login)
// app.post('/member/register', multipartMiddleware, member.register)

var user = require('./routes/user')
app.post('/user/checkuser', multipartMiddleware, user.checkuser)
app.post('/user/register', multipartMiddleware, user.register)

var image = require('./routes/image')
app.get('/img/banner/:name', image.banner)

var banner = require('./routes/banner')
app.get('/banner', banner.all)

var menu = require('./routes/menu')
app.get('/menu/all', menu.list)
app.get('/menu/by', menu.drink)

// last
app.get('*', (req, res) => {
    res.send('Not Found')
})

app.listen(process.env.PORT || 3000)