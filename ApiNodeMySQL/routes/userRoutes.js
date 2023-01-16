const usersController = require('../controllers/usersControllers');

//,upload 
module.exports = (app, upload)=>{

    //GET para obtener datos


    //POST para enviar datos
    app.post('/api/users/create', usersController.register);
    app.post('/api/users/login', usersController.login);
    app.post('/api/users/roles', usersController.registerRol);

    //PUT para actualizar datos
    app.put('/api/users/update', upload.array('image', 1), usersController.update);


    //DELETE eliminar datos




   

}