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
module.exports = product;