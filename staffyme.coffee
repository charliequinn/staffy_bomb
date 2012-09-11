# Description:
#   Staffyme is the most important thing in your life
#
# Commands:
#   hubot staffy me - Receive a staff

module.exports = (robot) ->

  robot.respond /staffy me/i, (msg) ->
    msg.http("http://shielded-plains-5602.herokuapp.com/")
      .get() (err, res, body) ->
        msg.send JSON.parse(body).staffy

