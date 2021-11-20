const db = require('../config/db_connection');
const product = function (product) {
    this.id = product.id_admin;
    this.phone = product.phone_admin;
    this.pass = product.pass_admin;

}

product.get_all_product = function () {
    return new Promise((async (resolve, reject) => {
        try {
            db.query("SELECT * FROM product", function (err, allproduct) {
                if (err) {
                    resolve(null);
                } else {
                    resolve(allproduct);
                }
            });
        } catch (e) {
            reject(e);
        }
    }));
}

module.exports = product;
