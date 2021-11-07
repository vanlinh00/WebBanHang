const db = require('../config/db_connection');
const product = function (product) {
    this.id = product.id_admin;
    this.phone = product.phone_admin;
    this.pass = product.pass_admin;

}

product.get_all = function(result){
    
    db.query("SELECT * FROM tbl_clothes",function(err,user){
     //   console.log(user);
        if(err){
            result(null);
        }else{
            result(user);
        }
    });
}
product.checkUserPasser = (id, result) =>{
    db.query('SELECT * FROM tbl_clothes WHERE id= ?',id, (err, res) =>{
        if (err){
            console.log('Error check id product', err);
            result(err,null);
        }else {
            console.log('Check id product successfully');
            result(null, res);
        }
    })
}
module.exports = product;