import initModels from "../models/init-models.js"
import sequelize from "../models/connect.js"

let model = initModels(sequelize)

// sequelize.query("SELECT * FROM food ")

// SELECT * FROM food 
// localhost:8080/video/get-food
const getFood = async (req, res) => {

    let data = await model.video.findAll()
    res.send(data);
}

export {
    getFood
}