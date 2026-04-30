const express = require('express');
const { router } = require('server');
const app = express()
const port = 3000
const mainRoutes = require('./routes/main.routes');
const multer = require('multer');
const path = require('path');
const bodyParser = require('body-parser');
const expressSanitizer = require('express-sanitizer');
const cors = require('cors');
const cookieParser = require('cookie-parser');
const session = require('express-session');
const passport = require('passport');
const models = require('./models/');
const { connect } = require('./config/connect');
const connection = require('./config/connect');
const fileUpload = require('express-fileupload');
//var imageRouter = require('./routes/image-route');
var MySQLStore = require('express-mysql-session')(session);
//var LocalStrategy = require('passport-local').Strategy;
//var bcrypt = require('bcrypt');

//cors
app.use((req, res, next) => {
  res.header("Access-Control-Allow-Origin", "*");
  app.use(cors());
  next();
}
)

// Static Files
app.use(express.static('public'));
// Specific folder example
app.use('/css', express.static(__dirname + 'public/css'))
app.use('/js', express.static(__dirname + 'public/js'))
app.use('/img', express.static(__dirname + 'public/images'))
//app.use('/', imageRouter);
// Set View's
app.set('views', './views');
app.set('view engine', 'ejs');

// Navigation
app.get('', (req, res) => {
  //console.log(req.user);
  //console.log(req.isAuthenticated());
  res.sendFile(__dirname + '/views/index.html')
})

var options = {
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME
};

var sessionStore = new MySQLStore(options);

app.use(require("express-session")({
  secret: 'our super secret session secret',
  store: sessionStore,
  resave: false,
  saveUninitialized: false


  /*cookie: {
    maxAge: 3600000,
    //secure: true,
    httpOnly: true
  }*/
}));
//zona do fetch
//app.use(bodyParser.json(),bodyParser.urlencoded({extend:true}));
app.use(expressSanitizer());
//app.use(express.urlencoded({ extended: false }))
app.use(cookieParser());

//midleware passport
app.use(passport.initialize());
app.use(passport.session()); // persistent login sessions
//BODY PARSER
app.use(bodyParser.json(), bodyParser.urlencoded({ extend: true }));
app.use(express.urlencoded({ extended: false }))

//Add another Page

app.get('/sound', (req, res) => {
  res.sendFile(__dirname + '/views/sound.html')
})

app.get('/sound_en', (req, res) => {
  res.sendFile(__dirname + '/views/sound_en.html')
})

app.get('/scout', (req, res) => {
  res.sendFile(__dirname + '/views/scout.html')
})

app.get('/scout_en', (req, res) => {
  res.sendFile(__dirname + '/views/scout_en.html')
})

app.get('/menu', (req, res) => {
  res.sendFile(__dirname + '/views/menu.html')
})

app.get('/bola', (req, res) => {
  res.sendFile(__dirname + '/views/bola.html')
})

app.get('/bola_en', (req, res) => {
  res.sendFile(__dirname + '/views/bola_en.html')
})

app.get('/index_en', (req, res) => {
  res.sendFile(__dirname + '/views/index_en.html')
})

app.get('/equipa_scout', (req, res) => {
  res.sendFile(__dirname + '/views/equipa_scout.html')
})

app.get('/equipa_scout_en', (req, res) => {
  res.sendFile(__dirname + '/views/equipa_scout_en.html')
})

app.get('/equipa_sound', (req, res) => {
  res.sendFile(__dirname + '/views/equipa_sound.html')
})

app.get('/equipa_sound_en', (req, res) => {
  res.sendFile(__dirname + '/views/equipa_sound_en.html')
})

app.get('/galeria_id', (req, res) => {
  res.sendFile(__dirname + '/views/galeria_id.html')
})


app.get('/galeria_scout', (req, res) => {
  res.sendFile(__dirname + '/views/galeria_scout.html')
})

app.get('/galeria_scout_en', (req, res) => {
  res.sendFile(__dirname + '/views/galeria_scout_en.html')
})


app.get('/galeria_sound', (req, res) => {
  res.sendFile(__dirname + '/views/galeria_sound.html')
})

app.get('/galeria_sound_en', (req, res) => {
  res.sendFile(__dirname + '/views/galeria_sound_en.html')
})


app.get('/menu_diretores', checkAuthenticated, (req, res) => {

  res.sendFile(__dirname + '/views/menu_diretores.html')
})

app.get('/revista_id', (req, res) => {
  res.sendFile(__dirname + '/views/revista_id.html')
})

app.get('/revista_scout', (req, res) => {
  res.sendFile(__dirname + '/views/revista_scout.html')
})

app.get('/revista_scout_en', (req, res) => {
  res.sendFile(__dirname + '/views/revista_scout_en.html')
})

app.get('/revista_sound', (req, res) => {
  res.sendFile(__dirname + '/views/revista_sound.html')
})

app.get('/revista_sound_en', (req, res) => {
  res.sendFile(__dirname + '/views/revista_sound_en.html')
})

app.get('/scout', (req, res) => {
  res.sendFile(__dirname + '/views/scout.html')
})

app.get('/sound', (req, res) => {
  res.sendFile(__dirname + '/views/sound.html')
})


app.get('/sonus', (req, res) => {
  res.sendFile(__dirname + '/views/sonus.html')
})

app.get('/musica_en', (req, res) => {
  res.sendFile(__dirname + '/views/musica_en.html')
})


app.get('/upload', (req, res) => {
  res.sendFile(__dirname + '/views/upload.html')
})

app.get('/teste', (req, res) => {
  res.sendFile(__dirname + '/views/teste.html')
})
app.get('/try', (req, res) => {
  res.sendFile(__dirname + '/views/try.html')
})

app.get('/revista_id_sound', (req, res) => {
  res.sendFile(__dirname + '/views/revista_id_sound.html')
})

app.get('/revista_id_sound_en', (req, res) => {
  res.sendFile(__dirname + '/views/revista_id_sound_en.html')
})

app.get('/revista_id_scout', (req, res) => {
  res.sendFile(__dirname + '/views/revista_id_scout.html')
})

app.get('/revista_id_scout_en', (req, res) => {
  res.sendFile(__dirname + '/views/revista_id_scout_en.html')
})

app.get('/galeria_id_sound', (req, res) => {
  res.sendFile(__dirname + '/views/galeria_id_sound.html')
})

app.get('/galeria_id_sound_en', (req, res) => {
  res.sendFile(__dirname + '/views/galeria_id_sound_en.html')
})


app.get('/galeria_id_scout', (req, res) => {
  res.sendFile(__dirname + '/views/galeria_id_scout.html')
})

app.get('/galeria_id_scout_en', (req, res) => {
  res.sendFile(__dirname + '/views/galeria_id_scout_en.html')
})

app.get('/try', (req, res) => {
  res.sendFile(__dirname + '/views/try.html')
})

app.get('/login', checkNotAuthenticated, (req, res) => {
  res.sendFile(__dirname + '/views/login.html')
})
//USA AS ROTAS PARA IR BUSCAR OS CONTROLLERS E AS PAGINAS
app.use('/', mainRoutes);




//cookies 
app.use(function (req, res, next) {
  var cookie = req.cookies.cookieName;
  if (cookie === undefined) {
    var randomNumber = Math.random().toString();
    randomNumber = randomNumber.substring(2, randomNumber.length);
    res.cookie('cookieName', randomNumber, {
      maxAge: 900000,
      httpOnly: true,
      secure: true
    });
    console.log('cookie created successfully');
  }
  else {
    console.log('cookie exists', cookie);
  }
  next();
});



//Criacao do server
app.listen(port, () => console.info(`App listening on port ${port}`))

//app.use('/auth', require('./routes/auth'));

require('./routes/auth.routes.js')(app, passport);
require('./config/passport/passport.js')(passport, models.user);
//Sync Database
models.sequelize.sync().then(function () {
  console.log('Nice! Database looks fine');

}).catch(function (err) {
  console.log(err, "Something went wrong with the Database Update!");
});

////login

function checkAuthenticated(req, res, next) {
  if (req.isAuthenticated()) {
    return next()
  }
  res.redirect('/login')
}

function checkNotAuthenticated(req, res, next) {
  if (req.isAuthenticated()) {
    return res.redirect('/menu_diretores')
  }
  next()
}

module.exports = app;