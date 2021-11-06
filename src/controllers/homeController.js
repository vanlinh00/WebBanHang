const product = require('../models/product.models');

let getHomePage =  (req, res) => {

     product.get_all(function (data) {
        //     keyres.send({ result: data });
       console.log(data);
       res.render('index.ejs', { title: 'product List1', dataproduct: data });
      });
   //return res.render('index.ejs');
  
}

let getAboutPage = (req, res) => {
    return res.render('test/about.ejs');
}
//
let getcheckoutPage = (req, res) => {
    return res.render('checkout.ejs');
}

let getsinglePage = (req, res) => {
    return res.render('single.ejs');
}
let getloginPage = (req, res) => {
    return res.render('login.ejs');
}
// object: {
//     key: '',
//     value: ''
// }
module.exports = {
    getHomePage: getHomePage,
    getAboutPage: getAboutPage,
    getcheckoutPage:getcheckoutPage,
    getsinglePage:getsinglePage,
    getloginPage:getloginPage
}
