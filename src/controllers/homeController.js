const Productservice = require('../services/product.services');
const Cartservice = require('../services/cart.services');
let gettrangchu= async (req, res) => {
   let data={
        singup:"",
        singin:"",
    }
    let allproduct = await Productservice.getallitem();
  //   console.log(allproduct);
    return res.render('user/home',{allproduct:allproduct});
}

let posttrangchu = async (req, res) => {
    var listitem=[];
   // rep.query.id;
    listitem.push(req.query.id);
    console.log(req.query.id)
    var newcart={
        id_user:1,
        list_id_product:req.query.id
    }
    let cart= await Productservice.CheckCreatecartuser(newcart);
   res.redirect('/trangchu');

}

let getcheckout= async(req, res) => {
    var iduser=1;
 let listitem= await Cartservice.getallitem(iduser);
 console.log(listitem[0]);
 

 return res.render('user/checkout',{allproduct:listitem})
}

let getsingle = async (req, res) => {
   
    console.log(req.query.id)
    
    var newcart={
        id_user:1,
        list_id_product:req.query.id
    }
    var product= await Productservice.checkproductbyid(req.query.id);
    console.log(product[0]);
    return res.render('user/single',{product:product[0]});

}


let additemsingle = async (req, res) => {

    console.log(req.query.id)
    var newcart={
        id_user:1,
        list_id_product:req.query.id
    }
    let cart= await Productservice.CheckCreatecartuser(newcart);
    var product= await Productservice.checkproductbyid(req.query.id);
     return res.render('user/single',{product:product[0]});
    //res.redirect('/single');

}
module.exports = {
    gettrangchu: gettrangchu,
    posttrangchu:posttrangchu,
    getcheckout:getcheckout,
    getsingle:getsingle,
    additemsingle:additemsingle,
}