
var Productmodel = require('../models/product.models');

let getallitem = () => {
    return new Promise((async (resolve, reject) => {
        try {
            let product = await Productmodel.get_all_product();
            if (product != 0) {
                resolve(product);
            }
            else {

            }
        } catch (e) {
            reject(e);
        }
    }));
};

let checkproductbyid = (id_product) => {
    return new Promise((async (resolve, reject) => {
        try {
            let product = await Productmodel.checkidproduct(id_product);
            if (product != 0) {
                resolve(product);
            }
            else {

            }
        } catch (e) {
            reject(e);
        }
    }));
};


let CheckCreatecartuser = (newitem) => {
    return new Promise((async (resolve, reject) => {
        try {
            console.log(newitem);
            let checkdata = await Productmodel.checkiduserincart(newitem.id_user);
            if (checkdata != 0) {
                var getlistitemincart = checkdata[0].list_id_product + ',' + newitem.list_id_product;
                console.log(getlistitemincart);
                // var newcart = {
                //     id_user: newitem.id_user,
                //     list_id_product: getlistitemincart,
                // }
                let insertdata = await Productmodel.insertnewprotocart(newitem.id_user, getlistitemincart);
                if (insertdata != 0) {
                    console.log("da tao tai khoan thanh co");
                    console.log(insertdata);
                    resolve("đã tạo tài khoản thành công");
                }
                else {
                    resolve("không thể tạo");
                }
            } else {
                console.log("vaodaychua");
                let data = await Productmodel.Createcartuser(newitem);
                if (data != 0) {
                    console.log("da tao tai khoan thanh co");
                    console.log(data);
                    resolve("đã tạo tài khoản thành công");
                }
                else {
                    resolve("không thể tạo");
                }
            }
        } catch (e) {
            reject(e);
        }
    }));
};

module.exports = {
    getallitem: getallitem,
    CheckCreatecartuser: CheckCreatecartuser,
    checkproductbyid:checkproductbyid,

}
