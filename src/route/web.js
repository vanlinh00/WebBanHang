import express from "express";
import userController from "../controllers/userController";
import homeController from "../controllers/homeController";
let router = express.Router();

let initWebRoutes = (app) => {
    //user
    router.post('/signup', userController.createUser);
   // router.post('/signin', userController.signinUser);
    //product
    router.get('/trangchu', homeController.gettrangchu);
    router.get('/additemtrangchu', homeController.posttrangchu);

    router.get('/checkout',homeController.getcheckout);

    router.get('/single', homeController.getsingle);
    router.get('/additemsingle', homeController.additemsingle);

    return app.use("/", router);
}

module.exports = initWebRoutes;