var express = require('express');
var router = express.Router();
const rndString = require('randomstring');

/* GET home page. */
router.post('/register', function(req, res, next) {
  var user_id = req.body.user_id;
  var user_password = req.body.user_password;
  var user_name = req.body.user_name;

  if(user_id === undefined || user_password ===  undefined || user_name ===  undefined || user_age ===  undefined || user_id === "" || user_password === "" || user_name === "" || user_age === ""){
    return res.status(400).send("param missing");
  }

  var new_user = new Users({
    user_id: user_id,
    user_password: user_password,
    user_name: user_name,
    token: rndString.generate()
  });

  new_user.save(function(err, result){
    if(err) return res.status(500).send("ERR : 500");
    return res.status(200).send;
  });
})


module.exports = router;
