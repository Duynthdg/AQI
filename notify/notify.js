var publish = require('../mqtt/publish.js')
var computeAqiHourly = require('../computeaqi/computeaqi.js')

function checkAqi(aqi) {
  if (aqi >= 0 && aqi < 51) {
    return 1;
  } else if (aqi > 50 && aqi < 101) {
    return 2;
  } else if (aqi > 100 && aqi < 201) {
    return 3;
  } else if (aqi > 200 && aqi < 301) {
    return 4;
  } else if (aqi > 300) {
    return 5;
  }
  return -1;
}

function notify(mqttClient, aqi) {
  let aqi_warning = checkAqi(aqi)
  console.log(`Warning: ${aqi_warning}`);
  let sensitivePerson = "sensitive"
  let nonSensitivePerson = "nonsensitive"
  if (aqi_warning == 1) {
    console.log("Level 1");
    let topicName = "aqi/alert/level1"
    //Comment this line
    //publish(mqttClient, topicName, aqi_warning, aqi)
  } else if (aqi_warning == 2) {
    console.log("Level 2");
    let topicName = "aqi/alert/level1/level2"
    let warning = "nen han che thoi gian o ngoai"
    publish(mqttClient, sensitivePerson, warning, aqi, aqi_warning)
  } else if (aqi_warning == 3) {
    console.log("Level 3");
    let topicName = "aqi/alert/level1/level2/level3"
    let warning = "can han che thoi gian o ngoai"
    publish(mqttClient, sensitivePerson, warning, aqi, aqi_warning)
  } else if (aqi_warning == 4) {
    console.log("Level 4");
    let topicName = "aqi/alert/level1/level2/level3/level4"
    let warning1 = "khong nen ra ngoai"
    let warning2 = "han che thoi gian o ngoai"
    publish(mqttClient, sensitivePerson, warning1, aqi, aqi_warning)
    publish(mqttClient, nonSensitivePerson, warning2, aqi, aqi_warning)
  } else if (aqi_warning == 5) {
    console.log("Level 5");
    let topicName = "aqi/alert/level1/level2/level3/level4/level5"
    let warning = "moi nguoi nen o trong nha"
    publish(mqttClient, sensitivePerson, warning, aqi, aqi_warning)
    publish(mqttClient, nonSensitivePerson, warning, aqi, aqi_warning)
  } else {
    console.log("No AQI");
  }
  return true
}

module.exports.checkAqi = checkAqi

module.exports.makeDataAndNotify = function(mysql, mqttClient, socket) {
  let promises = [mysql.getDataSensor("co"), mysql.getDataSensor("dust")]
  Promise.all(promises).then( (results) => {
    let resultSet_sensor_co = results[0]
    let resultSet_sensor_dust = results[1]

    let data_co = 0
    let length_co = 0

    for (let result of resultSet_sensor_co) {
      data_co += parseInt(result.data)
      mysql.setStatus(parseInt(result.id))
      length_co += 1
    }

    let data_dust = 0
    let length_dust = 0

    for (let result of resultSet_sensor_dust) {
      data_dust += parseInt(result.data)
      mysql.setStatus(parseInt(result.id))
      length_dust += 1
    }

    let aqi_co = computeAqiHourly("co", data_co, length_co)
    mysql.createAqiSensor("co", aqi_co)
    let aqi_dust = computeAqiHourly("dust", data_dust, length_dust)
    mysql.createAqiSensor("dust", aqi_dust)
    console.log(`AQI CO: ${aqi_co}`);
    console.log(`AQI DUST: ${aqi_dust}`);
    let aqi
    if (aqi_co > aqi_dust) {
      aqi = aqi_co;
    } else {
      aqi = aqi_dust;
    }
    mysql.createAqi(aqi)
    notify(mqttClient, aqi)
    socket.emit("update")
  })

}
