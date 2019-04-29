const connectionDB = require('../db.js')
exports.all = function (req, res, next) {
    const queryString = "SELECT popular_id, popular_name, CONCAT('http://172.21.224.193:3000', popular_image) as popular_image FROM popular"
    connectionDB.query(queryString, (err, rows, fields) => {
        if (err) {
            res.status(400).json({
                status: false
            })
            return
        }

        res.status(200).json({
            status: true,
            results: rows
        })
    })
}