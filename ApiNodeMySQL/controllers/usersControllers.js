const User = require('../models/user');
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const keys = require('../config/keys');
const { rollback } = require('../config/config');
const Rol = require('../models/rol');
const { update } = require('../models/user');
const storage = require('../utils/cloud_storage')

module.exports ={

    login(req, res) {
        try {
        const email = req.body.email;
        const password = req.body.password;

        User.findByEmail(email, async (err, myUser) => {
            
            //console.log('Error ', err);
            //console.log('USUARIO ', myUser);

            if (err) {
                return res.status(501).json({
                    success: false,
                    message: 'Hubo un error con el registro del usuario',
                    error: err
                });
            }

            if (!myUser) {
                return res.status(401).json({ // EL CLIENTE NO TIENE AUTORIZACION PARTA REALIZAR ESTA PETICION (401)
                    success: false,
                    message: 'El email no fue encontrado'
                });
            }

            const isPasswordValid = await bcrypt.compare(password, myUser.contraUsuario);

            if (isPasswordValid) {
                const token = jwt.sign({idUsuario: myUser.idUsuario, emailUsuario: myUser.emailUsuario}, keys.secretOrKey, {});
                    //datos que se mostraran en Thunder
                const data = {
                    idUsuario: `${myUser.idUsuario}`,
                    nombreUsuario: myUser.nombreUsuario,
                    apellido1Usuario: myUser.apellido1Usuario,
                    apellido2Usuario: myUser.apellido2Usuario,
                    telefonoUsuario: myUser.telefonoUsuario,
                    imagenUsuario: myUser.imagenUsuario,
                    emailUsuario: myUser.emailUsuario,
                    contraUsuario: myUser.contraUsuario,
                    fechaNacimiento: myUser.fechaNacimiento,
                    codeActive: `JWT ${token}`,
                    roles:myUser.roles
                }

                return res.status(201).json({
                    success: true,
                    message: 'El usuario fue autenticado',
                    data: data // EL ID DEL NUEVO USUARIO QUE SE REGISTRO
                });

            }
            
        });
        } catch (error) {
            
                return res.status(401).json({ // EL CLIENTE NO TIENE AUTORIZACION PARTA REALIZAR ESTA PETICION (401)
                    success: false,
                    message: 'El password es incorrecto'
                });   
        }
    },


    //Metodo para registro
    register(req,res){
        const user = req.body; //obteniendo datos del usuario
        User.create(user,(err,data)=>{
            if(err){
                return res.status(501).json({
                    success: false,
                    message: 'Hubo un error al registarr',
                    error: err
                });
            }

            return res.status(201).json({
                success: true,
                message: 'Registro exitoso',
                data: data //id del usuario creado
            })
        })
    },

    //Registrar 
    async registerRol(req,res){
        const user = req.body;
        User.create(user,(err,data)=>{
            if(err){
                return res.status(501).json({
                    success: false,
                    message: 'Hubo un error al registarr',
                    error: err
                });
            }

            user.id=`${data}`;
            const token = jwt.sign({id: user.id, email: user.email}, keys.secretOrKey, {});
                    //datos que se mostraran en Thunder
                const dataRol = {
                    idUsuario: `${user.idUsuario}`,
                    nombreUsuario: user.nombreUsuario,
                    apellido1Usuario: user.apellido1Usuario,
                    apellido2Usuario: user.apellido2Usuario,
                    telefonoUsuario: user.telefonoUsuario,
                    imagenUsuario: user.imagenUsuario,
                    emailUsuario: user.emailUsuario,
                    contraUsuario: user.contraUsuario,
                    fechaNacimiento: user.fechaNacimiento,
                    codeActive: `JWT ${token}`,
                    roles:user.roles
                }

                Rol.create(user.id,3,(err,data)=>{

                    if(err){
                        return res.status(501).json({
                            success: false,
                            message: 'Hubo un error al registarr',
                            error: err
                        });
                    }
        
                    return res.status(201).json({
                        success: true,
                        message: 'Registro exitoso',
                        data: dataRol //id del usuario creado
                    })
                    
                })

        })

    },

    async update(req, res, netx){
        try {
            console.log('Usuario',req.body.user);
            const user = JSON.parse(req.body.user);//Cliente debe enviarnos un objeto
            console.log('Usuario Parseado', user);
            const files = req.files;

            if(files.length > 0){//Cliente nos envia una imagen
                const pathImage = `image_${Date.now()}`;//Nombre del archivo
                const url = await storage(files[0], pathImage)
                if(url != undefined && url != null){
                    user.imagenUsuario = url;
                }
            }
            User.update(user, (err,data)=>{
                if(err){
                    return res.status(501).json({
                        success: false,
                        message: 'Hubo un error al actualizar los datos del usuario',
                        error: error
                    });
                }

                return res.status(201).json({
                    success: true,
                    message: 'Los datos del usuario se han actualizado correctamente',
                    data: user
                });
                
            }); //Guarda la Url en la bd
        } catch (error) {
            console.log(`Error: ${error}`);
            return res.status(501).json({
                success: false,
                message: 'Hubo un error al actualizar los datos del usuario',
                error: error
            });
        }
    }



}