import express from "express";
import homeController from "../controllers/homeController";
import userController from "../controllers/userController";
let router = express.Router();

let initWebRoutes = (app) => {
    router.get('/index.html', homeController.getHomePage);
    router.get('/about', homeController.getAboutPage);
    //checkout.html
    router.get('/checkout', homeController.getcheckoutPage);
    //single.html
    router.get('/single', homeController.getsinglePage);
    router.get('/login.html', homeController.getloginPage);
    router.post('/login.html', homeController.getloginPage);
    // router.post('/userlogin.html', userController.getuserloginPage);

    return app.use("/", router);
}

module.exports = initWebRoutes;