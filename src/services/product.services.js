
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

module.exports = {
    getallitem: getallitem,
   
}
