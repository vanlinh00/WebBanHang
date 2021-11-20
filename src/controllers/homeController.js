const Productservice = require('../services/product.services');
let gettrangchu= async (req, res) => {
   let data={
        singup:"",
        singin:"",
    }
    let allproduct = await Productservice.getallitem();
     console.log(allproduct);
    return res.render('user/home.ejs',{allproduct,allproduct});
}

module.exports = {
    gettrangchu: gettrangchu,
}