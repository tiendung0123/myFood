import express from 'express'
import myfoodRouter from './myfoodRouter.js'

const rootRouter = express.Router()

rootRouter.use("/myfood",myfoodRouter)

export default rootRouter

// localhost:8080/myfood/get-food

