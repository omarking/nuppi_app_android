const db = require('../config/config');
const bcrypt = require('bcryptjs');

const User = {};

User.findById = (id, result) =>{
    const sql = `
    SELECT 
        U.idUsuario,
        U.nombreUsuario,
        U.apellido1Usuario,
        U.apellido2Usuario,
        U.imagenUsuario,
        U.telefonoUsuario,
        U.emailUsuario,
        U.contraUsuario,
        U.codeActive,
		JSON_ARRAYAGG(
			JSON_OBJECT(
			'idRol',ROL.idRole,
			'DescripRol',ROL.desRole
			)
		)AS roles
    FROM 
        usuario AS U 
	INNER JOIN 
		rolpermiso AS R 
	ON
		R.idUsuario = U.idUsuario
	INNER JOIN
		rol AS ROl
	ON
		ROL.idRole = R.idRol
  WHERE 
        idUsuario = ?
	GROUP BY 
		U.idUsuario;`;

    //return db.oneOrNone(sql, idUsuario).then(user => { callback(null, user) })
    db.query(
        sql,
        [idUsuario],
        (err, user) => {
            if (err) {
                console.log('Error:', err);
                result(err, null);
            }
            else {
                console.log('Usuario obtenido:', user[0]);
                result(null, user[0]);
            }
        }
    )
}

//Mostrar datos de login
User.findByEmail = (email, result) => {

    const sql = `
    SELECT 
        U.idUsuario,
        U.nombreUsuario,
        U.apellido1Usuario,
        U.apellido2Usuario,
        U.imagenUsuario,
        U.telefonoUsuario,
        U.emailUsuario,
        U.contraUsuario,
        U.codeActive,
		JSON_ARRAYAGG(
			JSON_OBJECT(
			'idRol',ROL.idRole,
			'DescripRol',ROL.desRole
			)
		)AS roles
    FROM 
        usuario AS U 
	INNER JOIN 
		rolpermiso AS R 
	ON
		R.idUsuario = U.idUsuario
	INNER JOIN
		rol AS ROl
	ON
		ROL.idRole = R.idRol
    WHERE 
        emailUsuario = ?
	GROUP BY 
		U.idUsuario;`;

    //return db.oneOrNone(sql, email);
    db.query(
        sql,
        [email],
        (err, user) => {
            if (err) {
                console.log('Error:', err);
                result(err, null);
            }
            else {
                console.log('Usuario obtenido:', user[0]);
                result(null, user[0]);
            }
        }
    )

}


//Crear nuevo usuario.
//CALL psInsertRegistroUsuario(?,?,?,?,?,?,?,?)
User.create = async (user, result)=>{

    const PcontraUsu = await bcrypt.hash(user.pscontraUsuario, 8)
    const PcontraUsu1 = await bcrypt.hash(user.psconfirmaContraUsuario, 8)
    
    const sql =`
    INSERT usuario (idUsuario,
                    nombreUsuario,
                    apellido1Usuario,
                    apellido2Usuario, 
                    telefonoUsuario, 
                    emailUsuario, 
                    contraUsuario, 
                    confirmaContraUsuario, 
                    fechaNacimiento,
                    fechaRegistroUsuario, 
                    statusUsuario) 
			VALUES(
					DEFAULT,
                    ?,
                    ?,
                    ?,
                    ?,
                    ?,
                    ?,
                    ?,
                    ?,
                    CURRENT_DATE,
                    "1");`;

    db.query
    (
        sql,
        [
            user.psnombreUsuario,
            user.psapellido1Usuario,
            user.psapellido2Usuario,
            user.pstelefonoUsuario,
            user.psPemailUsu,
            PcontraUsu,
            PcontraUsu,
            user.psfechaNacimiento
        ],
        (err, res) => {
            if (err) {
                console.log('Error:', err);
                result(err, null);
            }
            else {
                console.log('Create id del nuevo usuario:', res.insertId);
                result(null, res.insertId);
            }
        }
    )

}

//Select datos cuenta

//Subir Imagen
User.update = (user, result) => {
    const sql = `
    UPDATE 
        usuario
    SET
        nombreUsuario = ?,
        apellido1Usuario = ?,
        apellido2Usuario = ?, 
        imagenUsuario = ?,
    WHERE
        idUsuario = ?;`;

    db.query
    (
        sql,
        [
            user.psnombreUsuario,
            user.psapellido1Usuario,
            user.psapellido2Usuario,
            user.imagenUsuario,
            user.idUsuario
        ],
        (err, res) => {
            if (err) {
                console.log('Error:', err);
                result(err, null);
            }
            else {
                console.log('......', user.idUsuario);
                result(null, user.idUsuario);
            }
        }
    )


}

module.exports = User;