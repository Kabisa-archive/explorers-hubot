# Description:
#  Notify the Kabisa room of certain events, like lunch, beer o'clock etc
#  Also used to turn on/off chatlio service
cronJob = require('cron').CronJob
KABISA_ROOM = '#general'
SUPPORT_ROOM = '#live-support'

module.exports = (robot) ->
  new cronJob '0 30 12 * * 1-5', (->
    robot.messageRoom KABISA_ROOM, 'Nom nom, lunch time!'
  ), null, true, "Europe/Amsterdam"

  new cronJob '0 0 16 * * 5', (->
    robot.messageRoom KABISA_ROOM, "It's beer o'clock!"
  ), null, true, "Europe/Amsterdam"

  new cronJob '0 0 9 * * 1-5', (->
    robot.messageRoom SUPPORT_ROOM, "@chatlio on"
  ), null, true, "Europe/Amsterdam"

  new cronJob '0 30 12 * * 1-5', (->
    robot.messageRoom SUPPORT_ROOM, "@chatlio off"
  ), null, true, "Europe/Amsterdam"

  new cronJob '0 30 13 * * 1-5', (->
    robot.messageRoom SUPPORT_ROOM, "@chatlio on"
  ), null, true, "Europe/Amsterdam"

  new cronJob '0 0 17 * * 1-5', (->
    robot.messageRoom SUPPORT_ROOM, "@chatlio off"
  ), null, true, "Europe/Amsterdam"
