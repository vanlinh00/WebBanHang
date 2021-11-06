import express from "express";
import homeController from "../controllers/homeController";

let router = express.Router();

let initWebRoutes = (app) => {
    router.get('/index.html', homeController.getHomePage);
    router.get('/about', homeController.getAboutPage);
    //checkout.html
    router.get('/checkout.html', homeController.getcheckoutPage);
    //single.html
    router.get('/single.html', homeController.getsinglePage);
    router.get('/login.html', homeController.getloginPage);
    return app.use("/", router);
}

module.exports = initWebRoutes;