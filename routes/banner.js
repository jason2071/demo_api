const connectionDB = require('../db.js')
exports.all = function (req, res, next) {
    const queryString = "SELECT banner_id, banner_name, CONCAT('http://172.21.224.193:3000', banner_image) as banner_image FROM banner"
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