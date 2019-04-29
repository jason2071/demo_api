const connectionDB = require('../db.js')
exports.list = function (req, res, next) {
    var queryString
    if (req.query.menu_id && req.query.menu_id.length) {
        queryString = "SELECT * FROM drink WHERE menu_id = " + req.query.menu_id
    } else {
        queryString = "SELECT * FROM menu"
    }

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

exports.drink = function (req, res, next) {
    const menu_id = req.query.menu_id
    const queryString = "SELECT * FROM drink WHERE menu_id = ?"

    connectionDB.query(queryString, [menu_id], (err, rows, fields) => {
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