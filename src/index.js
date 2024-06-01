import express from 'express'
import rootRouter from './routes/rootRouter.js'
import cors from 'cors'

const app = express()

// middleware => trước khi nhận request từ FE
app.use(express.json())

// mở chặn CORS => yarn add cors
app.use(cors({
    origin: "*" // tất cả domain truy cập
}))

// khởi tạo server BE chạy bằng framework Express
app.listen(8080)

app.use(rootRouter)


/* 
    Model: object => Sequelize ORM
   
    Controller: xử lý logic, tính toán, truy xuất CSDL,...
    
    Router: quản lý API, quản lý đối tượng endpoint

*/

