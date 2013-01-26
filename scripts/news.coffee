# Description:
#

OFFTOPIC_ROOM = 545018

module.exports = (robot) ->
  robot.router.post "/news", (req, res) ->
    res.writeHead 204
    res.end()

    article = req.body.article
    robot.messageRoom OFFTOPIC_ROOM, article.title + '\n' + article.content
