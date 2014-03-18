# Description:
#   Messing around with the YouTube API.
#
# Commands:
#   hubot youtube me <query> - Searches YouTube for the query and returns the video embed link.

exec = require("child_process").exec
cookie = ""

module.exports = (robot) ->
  robot.respond /(let) (.*)/i, (msg) ->
    query = msg.match[2]
    exec "truby #{cookie} #{query} ",(err,stdout,stderr)->
      msg.send "#{stdout}"
    return

  robot.respond /(setCookie) (.*)/i, (msg) ->
    query = msg.match[2]
    cookie = query
    msg.send "success set cookie as #{cookie} "
    return
