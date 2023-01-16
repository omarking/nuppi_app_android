const express = require('express');
const app = express();
const http = require('http');
const server = http.createServer(app);
const logger = require('morgan');
const cors = require('cors');
const passport = require('passport');
const multer = require('multer');
const serviceAccount = require('./serviceAccountKey.json');
const admin = require('firebase-admin');

/**Inicializando con firebases */
admin.initializeApp({
    credential: admin.credential.cert(serviceAccount)
});
 
const upload = multer({
    storage: multer.memoryStorage()
});

/*
    IMPORTAR RUTAS
*/
const userRoutes = require('./routes/userRoutes');
const { credential } = require('firebase-admin');

const port = process.env.PORT || 3000;

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({
    extended: true
}));

app.use(cors());
app.use(passport.initialize());
app.use(passport.session());

require('./config/passport')(passport);

app.disable('x-powered-by');

app.set('port', port);

/*
    LLAMADO DE LAS RUTAS
*/
//,upload
userRoutes(app,upload);


server.listen(3000, '192.168.0.10' || 'localhost', function () {
    console.log('Aplicacion nodejs '+port+ ' Iniciada...')
});

app.get('/', (req,res)=>{
    res.send('Ruta raiz del backend');
});

app.get('/test', (req,res)=>{
    res.send('Esta es la ruta test');
});

//Manejo de error
app.use((err,req,res,next)=>{
    console.log(err);
    res.status(err.status || 500).send(err.stack);
});

//200 - Es una respuesta exitosa
//400 - La ruta especificada no existe
//500 - Error interno del servidor