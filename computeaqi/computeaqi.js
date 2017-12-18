var constant = require('../constant/constant.js')
var aqiConstant = constant.aqiConstant

module.exports = function(name, data, length) {
  let aqi = 0.0
  if (length > 0) {
    let x = data/length
    if (name === "co") {
      aqi = (x / aqiConstant.QC_h_CO) * 100
    } else if(name === "dust") {
      aqi = (x / aqiConstant.QC_h_TSP) * 100
    }
    let y = parseInt(aqi)
    return y
  } else {
    return 0
  }
}
