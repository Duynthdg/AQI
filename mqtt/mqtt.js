var constant = require('../constant/constant.js')
var serverConfig = constant.serverConfig
var subscribe = require('./subscribe.js')

module.exports = function(mqttClient, mysql) {
  //MARK: Emit event when connect success
  mqttClient.on('connect', function() {
    subscribe(mqttClient, serverConfig.topicName)
  })

  //MARK: Emit event when received data from mqtt broker
  mqttClient.on('message', function(topic, message) {
    if (topic == serverConfig.topicName) {
      try {
        let objectData = JSON.parse(message)
        console.log("Data received in server: " + JSON.stringify(objectData));
        let sensor_co = objectData.data.co
        let sensor_dust = objectData.data.pm
        mysql.create("co", sensor_co)
        mysql.create("dust", sensor_dust)
      } catch (err) {
        alert(err)
      }
    }
  })
}
