var constant = require('../constant/constant.js')
var publishConfig = constant.publishConfig

module.exports = function(clientMqtt, topicName, warning, aqi, level) {
  let pubMsg = `{"warning":"${warning}","aqi":${aqi},"level":${level}}`
  clientMqtt.publish(topicName, pubMsg, publishConfig, (err) => {
    if (err) {
      throw err;
      console.log("Have problem during pushlish message");
    }
  })
}
