import express from "express";
import userController from "../controllers/userController";
import productController from "../controllers/productController";
import adminController from "../controllers/adminController";
import navbarController from "../controllers/navbarController";
let router = express.Router();

let initWebRoutes = (app) => {
 

    //admin
    router.get('/admin/login', adminController.login);
    router.post('/admin/login', adminController.checklogin);
    router.get('/admin/gethome', adminController.gethome);
    router.get('/admin/getalluser', adminController.getuserloginPage);
    router.get('/admin/getallorder', adminController.getallorder);
    router.get('/admin/getallproduct', adminController.getallproduct);
   
    //user

    router.get('/single', productController.getsingle);
    router.post('/signup', userController.createUser);
    
    //navbar
   // router.get('/thongtin', navbarController.getthongtin);
   router.get('/lienhe', navbarController.getlienhe);

    //order
    router.get('/trangchu', productController.gettrangchu);
    router.get('/additemtrangchu', productController.posttrangchu);

    router.get('/checkout', productController.getcheckout);
    router.get('/checkoutdeleteit', productController.postcheckout);

    router.get('/single', productController.getsingle);
    router.get('/additemsingle', productController.additemsingle);

    router.get('/order', productController.getorder);
    router.post('/order', productController.transaction);
    return app.use("/", router);
}

module.exports = initWebRoutes;