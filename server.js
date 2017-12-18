var express = require('express')
var path = require('path')
var mqtt = require('mqtt')
var constant = require('./constant/constant.js')
var mysqlDatabase = require('./database/mysql.js')
var notify = require('./notify/notify.js')
var initMqtt = require('./mqtt/mqtt.js')
var makeDataAndNotify = notify.makeDataAndNotify
var checkAqi = notify.checkAqi
var serverConfig = constant.serverConfig
var app = express()
var mysql = new mysqlDatabase()
var http = require('http');
var server = http.createServer(app);
const socketIo = require("socket.io")
var io = socketIo(server)
var open = require("open")
var net = require('net')

var client = new net.Socket()
app.use(express.static(path.resolve(__dirname + '/public')))

//MARK: The route for GET method for access website
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname + '/public/index.html'))
})

//MARK
app.get('/lastaqi', (req, res) => {
  mysql.getLastAqi().then((result) => {
    let lastest = result[0]
    let lastAqi = lastest.aqi
    let lastCheckAqi = checkAqi(lastAqi)
    let lastAqiDate = lastest.created_at
    let objectData = {
      lastAqi,
      lastAqiDate,
      lastCheckAqi,
    }
    res.end(JSON.stringify(objectData))
  }).catch((err) => {
    console.log(err);
  })
})

//MARK
app.get('/listaqi', (req, res) => {
  mysql.getListAqi().then((result) => {
    res.end(JSON.stringify(result))
  }).catch((err) => {
    console.log(err);
  })
})

//MARK: App listen on port 3300. Can change to another port if want except these ports: 1883, 80, 443
server.listen(3300, (err) => {
  if (err) {
    console.log("Application failed to start");
    return
  }
  console.log("Application is running in port 3300");
  //open("http://localhost:3300")
})

//Socket.io
io.on('connection', function(socket) {
  console.log("User connected");
  socket.on("disconnect", () => {
    console.log("Client disconnected");
  });
});

//MARK: Option to connect to mqtt broker
var options = {
  clientId: 'aqi_' + Math.random().toString(16).substr(2, 8),
  username: serverConfig.mqttUsername,
  password: serverConfig.mqttPassword,
  port: serverConfig.mqttPort
}

//MARK: Connect to mqtt broker
var client = mqtt.connect(serverConfig.brokerUrl, options)
initMqtt(client, mysql)

//MARK: Start make data and notify aqi after specified time
setInterval(() => {
  makeDataAndNotify(mysql, client, io)
}, serverConfig.aqiTimeToPublish * 60 * 1000)
