import express from "express";

import { getFood } from "../controllers/myFoodController.js";

const myfoodRouter = express.Router();

// API chức năng
myfoodRouter.get("/get-food", getFood)

export default myfoodRouter