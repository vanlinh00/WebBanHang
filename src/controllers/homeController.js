const product = require('../models/product.models');
const User = require('../models/user.model');

let getHomePage = (req, res) => {
    //  const myObj = { name: "John", age: 31, city: "New York" };
    // const myJSON = JSON.stringify(myObj);

    // document.getElementById("demo").innerHTML =myJSON;

    product.get_all(function (data) {
        //     keyres.send({ result: data });
        console.log(data);
        var json = { title: 'product List1', dataproduct: data }
        res.render('index.ejs', json);
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
    console.log(req.query.id);
    product.checkUserPasser(req.query.id, (err, product) => {
        if (err) {
            Erro.code1001();
        } else {
            if (product.length !== 0) {
                console.log(product[0].description);
                // return res.render('single.ejs', {
                //      title: '', 
                //      name_clothes:product[0].name_clothes,
                //      link_img:product[0].link_img,
                //      price_clothes:product[0].price_clothes
                //     });
                return res.render('single.ejs', {
                    title: '',

                    product: product[0],

                });
            }
            else {
                return res.render('login.ejs', { title: '', product: "mat khau khong dung" });
            }
        }
    })

}

let getloginPage = (req, res) => {

    // var user={id_user:"hi",name:"linh",pass:"trang"};
    // var user2={id_user:"hi2345",name:"linh234",pass:"trang"};
    // var chutinh=new User(user);
    // var chutinh1=new User(user2);
    // console.log(chutinh1.fullinfo());
    // console.log(chutinh.fullinfo());


    console.log(req.route.stack[0].method);
    if (req.route.stack[0].method == "get") {
        return res.render('login.ejs', { req: "" });
    }
    if (req.route.stack[0].method == "post") {
        console.log(req.body);
        var name = req.body.username;
        var password = req.body.password;
        User.checkUserPasser(password, (err, user) => {
            if (err) {
                Erro.code1001();
            } else {
                if (user.length !== 0) {
                    console.log(user[0].name_user);
                    return res.render('login.ejs', { title: '', req: "xin chao" + user[0].name_user });

                }
                else {
                    return res.render('login.ejs', { title: '', req: "mat khau khong dung" });
                }
            }
        })
    }
}


// object: {
//     key: '',
//     value: ''
// }
module.exports = {
    getHomePage: getHomePage,
    getAboutPage: getAboutPage,
    getcheckoutPage: getcheckoutPage,
    getsinglePage: getsinglePage,
    getloginPage: getloginPage
}
