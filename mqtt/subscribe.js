var constant = require('../constant/constant.js')
var subscribeConfig = constant.subscribeConfig

module.exports = function(clientMqtt, topicName) {
  clientMqtt.subscribe(topicName, subscribeConfig, (err) => {
    if (err) {
      throw err
    }
  })
}
