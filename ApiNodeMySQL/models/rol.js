const db = require('../config/config')

const Rol = {

}

Rol.create = (id_user,id_rol,result)=>{
    const sql = `
            INSERT INTO rolpermiso(
                idRolPermisoUsuario,
                idUsuario,
                idRol,
                idPermiso
                )VALUES(
                DEFAULT,
                ?,
                ?,
                3
                )`;

    //return db.oneOrNone(sql, email);
    db.query(
        sql,
        [id_user,id_rol],
        (err, res) => {
            if (err) {
                console.log('Error:', err);
                result(err, null);
            }
            else {
                console.log('Usuario obtenido Rol:', res.insertId);
                result(null, res.insertId);
            }
        }
    )
}

module.exports = Rol;