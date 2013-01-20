# Description:
#  

cronJob = require('cron').CronJob
KABISA_ROOM = 546101

module.exports = (robot) ->
  new cronJob '0 30 12 * * 1-5', (->
    robot.messageRoom KABISA_ROOM, 'Nom nom, lunch time!'
  ), null, true, "Europe/Amsterdam"

  new cronJob '0 0 16 * * 5', (->
    robot.messageRoom KABISA_ROOM, "It's beer o'clock!"
  ), null, true, "Europe/Amsterdam"
