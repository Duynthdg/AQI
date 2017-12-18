const serverConfig = {
  brokerUrl: "mqtt://localhost",
  mqttPort: "1883",
  mqttUsername: "",
  mqttPassword: "",
  topicName: "aqi/data",
  databaseHost: "localhost",
  databaseUsername: "root",
  databasePassword: "",
  databaseName: "aqi",
  databaseDateStrings:true,
  aqiTimeToPublish: 1/6 //1/2, 1/6, 1/60
}

const aqiConstant = {
  QC_h_SO2: 350,
  QC_h_CO: 30000,
  QC_h_NOx: 200,
  QC_h_O3: 180,
  QC_h_TSP: 300,
  QC_h_PM10: 300,
  QC_d_SO2: 125,
  QC_d_CO: 50000,
  QC_d_NOx: 100,
  QC_d_TSP: 200,
  QC_d_PM10: 150
}

const publishConfig = {
  qos: 0,
  retain: false
}

const subscribeConfig = {
  qos: 0
}

module.exports.serverConfig = serverConfig
module.exports.aqiConstant = aqiConstant
module.exports.publishConfig = publishConfig
module.exports.subscribeConfig = subscribeConfig
