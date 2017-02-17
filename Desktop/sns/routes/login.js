var express = require('express');
var router = express.Router();
const rndString = require('randomstring');

/* GET home page. */
router.post('/login', function(req, res, next) {
  var user_id = req.body.user_id;
  var user_password = req.body.user_password;

  if(user_id === undefined || user_password ===  undefined || user_id === "" || user_password === ""){
    return res.status(400).send("ERR : 400");
  }

  Users.findOne({user_id: user_id, user_password: user_password}, function(err, users){
    if(err) return res.status(500).send("ERR : 500");
    if(users)  return res.status(200).json({success: "200", user_id: users.user_id, user_password: users.user_password, user_name: users.user_name, user_age: users.user_age, token: users.token});
    else return res.status(401).send("ERR : 401");
  });
})


module.exports = router;
