# Description:
#  Notify the Kabisa room of certain events, like lunch, beer o'clock etc

cronJob = require('cron').CronJob
KABISA_ROOM = '#general'

module.exports = (robot) ->
  new cronJob '0 30 12 * * 1-5', (->
    robot.messageRoom KABISA_ROOM, 'Nom nom, lunch time!'
  ), null, true, "Europe/Amsterdam"

  new cronJob '0 0 16 * * 5', (->
    robot.messageRoom KABISA_ROOM, "It's beer o'clock!"
  ), null, true, "Europe/Amsterdam"
