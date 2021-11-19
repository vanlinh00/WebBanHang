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
    return app.use("/", router);
}

module.exports = initWebRoutes;