const db = require('../config/db_connection');
const User = function (user) {
    this.id = user.id_user;
    this.name = user.name;
    this.pass = user.pass;
    this.fullinfo=function (){
        return this.id+','+this.name;
    }
}

User.checkUserPasser = (pass_user, result) =>{
    db.query('SELECT * FROM username WHERE pass_user = ?',pass_user, (err, res) =>{
        if (err){
            console.log('Error check pass user', err);
            result(err,null);
        }else {
            console.log('Check pass user successfully');
            result(null, res);
        }
    })
}

User.checkUserName = (name_user, result) =>{
    db.query('SELECT * FROM username WHERE name_user = ?',name_user, (err, res) =>{
        if (err){
            console.log('Error check name user', err);
            result(err,null);
        }else {
            console.log('Check name user successfully');
            result(null, res);
        }
    })
}

module.exports = User;