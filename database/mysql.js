var constant = require('../constant/constant.js')
var serverConfig = constant.serverConfig
var mysql = require('mysql')

class MySQL {
  constructor() {
    this.con = mysql.createConnection({
      host: serverConfig.databaseHost,
      user: serverConfig.databaseUsername,
      password: serverConfig.databasePassword,
      database: serverConfig.databaseName,
      dateStrings: serverConfig.databaseDateStrings
    });

    this.con.connect(function(err) {
      if (err) {
        throw err
        return
      }
    })
  }

  create(sensor, data) {
    let sql = `INSERT INTO data_sensor(sensor, data, created_at) VALUES('${sensor}', '${data}', NOW())`
    this.con.query(sql, (err, result) => {
      if (err) {
        throw err
      }
      console.log(`Inserted 1 row with values of ${sensor} sensor with data: ${data}`)
    })
  }

  getDataSensor(sensor) {
    return new Promise((resolve, reject) => {
      let sql = "SELECT * FROM data_sensor WHERE status=0 AND sensor=" + "'" + sensor + "'"
      this.con.query(sql, function(err, result) {
        if (err) {
          throw err
          reject("Can not select data from database")
        }
        resolve(result)
      })
    })
  }

  setStatus(id) {
    let sql = `UPDATE data_sensor SET status = 1 WHERE id = ${id}`
    this.con.query(sql, (err, result) => {
      if (err) {
        throw err
      }
    })
  }

  createAqiSensor(sensor, aqi) {
    let sql = `INSERT INTO aqi_sensor(sensor, aqi, created_at) VALUES('${sensor}', '${aqi}', NOW())`
    this.con.query(sql, (err, result) => {
      if (err) {
        throw err
      }
    })
  }

  createAqi(aqi) {
    let sql = `INSERT INTO aqi_hourly(aqi, created_at) VALUES('${aqi}', NOW())`
    this.con.query(sql, (err, result) => {
      if (err) {
        throw err
      }
    })
  }

  getLastAqi() {
    return new Promise((resolve, reject) => {
      let sql = `SELECT * FROM aqi_hourly ORDER BY created_at DESC LIMIT 1`
      this.con.query(sql, (err, result) => {
        if (err) {
          throw err
          reject("Can not select data from database")
        }
        resolve(result)
      })
    })
  }

  getListAqi() {
    return new Promise((resolve, reject) => {
      let sql = `SELECT * FROM aqi_hourly ORDER BY created_at DESC LIMIT 10`
      this.con.query(sql, (err, result) => {
        if (err) {
          throw err
          reject("Can not select data from database")
        }
        resolve(result)
      })
    })
  }
}

module.exports = MySQL
