const User = require('../models/user.model');

let getuserloginPage=(req, res) => {

    var name = req.body.username;
    var password = req.body.password;
    User.checkUserPasser(password, (err, user) => {
        if (err) {
         Erro.code1001();
        } else {
          if (user.length !== 0) {
           return res.render('login.ejs', { title: 'product List1', req:"xin chao"+user[0].username });
           //console.log("ok da dang  nhap thanh cong");
          }
          else{
            return res.render('login.ejs', { title: 'product List1', req:"mat khau khong dung" });
          }
        }})
    
 }
 module.exports = {
    getuserloginPage:getuserloginPage
}