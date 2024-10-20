// Create a new router
const express = require("express")
const bcrypt = require('bcrypt')
const router = express.Router()
const saltRounds = 10

router.get('/register', function (req, res, next) {
    res.render('register.ejs')                                                               
})    

router.post('/registered', function (req, res, next) {
    const plainPassword = req.body.password;
    const username = req.body.username; 

    bcrypt.hash(plainPassword, saltRounds, function (err, hashedPassword) {
        if (err) {
            return next(err); 
        }

    // saving data in database
    res.send(' Hello '+ req.body.first + ' '+ req.body.last + ', your username is ' + username + ' you are now registered!  We will send an email to you at ' + req.body.email + ' Your password has been securely stored.')                                                                           
})

// Export the router object so index.js can access it
module.exports = router