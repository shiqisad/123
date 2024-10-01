const mysqlDb = require('mysql');
// mysql db server
const server = mysqlDb.createConnection({
    host: 'localhost',
    database: 'crowdfunding_db',
    port: '3306',
    user: 'root',
    password: '123456',
})
server.connect()
const express = require('express');
const router = express.Router()
const sql = require('./sql');

router
    // search all category
    .get('/searchAllCategory', (req, res) => {
        server.query(sql.searchAllCategory, function(err, data) {
            res.send(data)
        });
    })
    // search all organizer
    .get('/searchAllOrganizer', (req, res) => {
        server.query(sql.searchAllOrganizer, function(err, data) {
            res.send(data)
        });
    })
    // search all city
    .get('/searchAllCity', (req, res) => {
        server.query(sql.searchAllCity, function(err, data) {
            res.send(data)
        });
    })
    // search Info By FundraiserId
    .get('/searchInfoByFundraiserId', (req, res) => {
        const query = [req.query.fundraiser_id];
        server.query(sql.searchInfoByFundraiserId, [req.query.fundraiser_id], function(err, data) {
            if (data) {
                // return one data
                res.send(data[0]);
            }
        });
    })
    // search Data By FilterItem
    .get('/searchDataByFilterItem', (req, res) => {
        const {category_id, organizer, city} = req.query;
        const query = [category_id, category_id, organizer, organizer, city, city];
        server.query(sql.searchDataByFilterItem, query, function(err, data) {
            res.send(data);
        });
    })
module.exports = router