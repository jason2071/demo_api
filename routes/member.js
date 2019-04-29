const express = require('express')
const app = express()
const bodyParser = require('body-parser')
const md5 = require('md5')
const connectionDB = require('../db.js')
const dateFormat = require('dateformat')
const time = require('time')

app.use(bodyParser.json())
app.use(bodyParser.urlencoded({
    extended: true
}))

const now = new time.Date()
now.setTimezone("Asia/Bangkok")

exports.list = function (req, res) {
    const queryString = "SELECT * FROM users LEFT JOIN system ON users.system = system.system_id"
    connectionDB.query(queryString, (err, rows, fields) => {
        if (err) {
            res.status(400).json({
                err: err
            })
            return
        }

        var responsePayload = []
        for (let index = 0; index < rows.length; index++) {
            const element = rows[index];
            
            temp = {
                id: element.id,
                user_hash: element.user_hash,
                name: element.name,
                email: element.email,
                system: element.system
            }

            responsePayload.push(temp)
        }

        res.status(200).json({
            status: true,
            results: responsePayload
        })

    })
}

exports.detail = function (req, res) {
    const user_hash = req.query.user_hash
    const queryString = "SELECT * FROM users WHERE user_hash = ?"
    connectionDB.query(queryString, [user_hash], (err, rows, fields) => {
        if (err) {
            res.status(400).json({
                err: err
            })
            return
        }

        if (rows && rows.length) {
            var responsePayload = {
                id: rows[0].id,
                user_hash: rows[0].user_hash,
                name: rows[0].name,
                email: rows[0].email,
                system: rows[0].system
            }

            res.status(200).json({
                status: true,
                message: undefined,
                results: responsePayload
            })
        } else {
            res.status(200).json({
                status: false,
                message: "This email is not found",
                results: undefined
            })
        }
    })
}

exports.login = function (req, res) {
    const email = req.body.email
    const password = md5(req.body.password)
    const queryString = "SELECT * FROM users WHERE email = ? AND password = ?"
    connectionDB.query(queryString, [email, password], (err, rows, fields) => {
        if (err) {
            res.status(400).json({
                err: err
            })
            return
        }

        if (rows && rows.length) {
            var responsePayload = {
                id: rows[0].id,
                user_hash: rows[0].user_hash,
                name: rows[0].name,
                email: rows[0].email,
                system: rows[0].system
            }

            res.status(200).json({
                status: true,
                message: "Login success",
                results: responsePayload
            })
        } else {
            res.status(200).json({
                status: false,
                message: "Email or Password is incorrect!",
                results: undefined
            })
        }
    })
}

exports.register = function (req, res) {
    var name = req.body.name
    var email = req.body.email
    var password = md5(req.body.password)
    var nowDate = dateFormat(now, "yyyy-mm-dd HH:MM:ss")
    var user_hash = md5(email + nowDate)

    const queryString = "SELECT * FROM users WHERE email = ?"
    connectionDB.query(queryString, [email, password], (err, rows, fields) => {
        if (err) {
            res.status(400).json({
                err: err
            })
            return
        }

        if (rows && rows.length) {
            res.status(200).json({
                status: false,
                message: "Email already exists!",
                results: undefined
            })
        } else {
            const insertQueryString = "INSERT INTO users (user_hash, name, email, password, updated_at) VALUES (?, ?, ?, ?, NOW())"
            connectionDB.query(insertQueryString, [user_hash, name, email, password], (err2, rows2, fields2) => {

                if (err2) {
                    res.status(400).json({
                        err: err2
                    })
                    return
                }

                var responsePayload = {
                    id: rows2.insertId,
                    user_hash: user_hash,
                    name: name,
                    email: email,
                    system: "2"
                }
    
                res.status(200).json({
                    status: true,
                    message: "Register success",
                    results: responsePayload
                })
            })
        }
    })
}