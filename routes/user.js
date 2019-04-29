const express = require('express')
const app = express()
const bodyParser = require('body-parser')
const connectionDB = require('../db.js')
const time = require('time')
const dateFormat = require('dateformat')

app.use(bodyParser.json())
app.use(bodyParser.urlencoded({
    extended: true
}))

const now = new time.Date()
now.setTimezone("Asia/Bangkok")

exports.checkuser = function (req, res) {
    const phone = req.body.phone

    const result = phone
    if (phone.substring(0, 1) === '0') {
        result = phone.replace(phone.substring(0, 1), '+66')
    }
    
    const queryString = "SELECT * FROM users WHERE user_phone = ?"
    connectionDB.query(queryString, [result], (err, rows, fields) => {
        if (err) {
            res.status(400).json({
                status: false
            })
            return
        }

        if (rows && rows.length) {
            res.status(200).json({
                status: true,
                id: rows[0].user_id,
                phone: rows[0].user_phone,
                name: rows[0].user_name,
                birthday: dateFormat(rows[0].user_birthday, "yyyy-mm-dd"),
                address: rows[0].user_address
            })
        } else {
            res.status(200).json({
                status: false
            })
        }
    })
}

exports.register = function (req, res) {
    const phone = req.body.phone
    const name = req.body.name
    const address = req.body.address
    const birthday = req.body.birthday
    
    const result_phone = phone
    if (phone.substring(0, 1) === '0') {
        result_phone = phone.replace(phone.substring(0, 1), '+66')
    }

    const day = birthday.split("-")
    const result_birthday = day[2] + "-" + day[1] + "-" + day[0]

    const insertQueryString = "INSERT INTO users (user_phone, user_name, user_birthday, user_address) VALUES (?, ?, ?, ?)"
    connectionDB.query(insertQueryString, [result_phone, name, result_birthday, address], (err, rows, fields) => {

        if (err) {
            res.status(400).json({
                status: false
            })
            return
        }

        res.status(200).json({
            status: true,
            id: rows.insertId,
            phone: result_phone,
            name: name,
            birthday: birthday,
            address: address
        })
    })
}