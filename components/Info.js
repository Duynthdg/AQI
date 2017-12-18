import React from 'react'
import {
  ButtonToolbar,
  Jumbotron
} from 'react-bootstrap'
import InfoButton from './InfoButton.js'

class Info extends React.Component {
  constructor() {
    super()
    this.state = {
      text: "Air Quality Index",
      color: "#EEEEEE"
    }
    this.buttonTotEnter = this.buttonTotEnter.bind(this)
    this.buttonTrungBinhEnter = this.buttonTrungBinhEnter.bind(this)
    this.buttonKemEnter = this.buttonKemEnter.bind(this)
    this.buttonXauEnter = this.buttonXauEnter.bind(this)
    this.buttonRatXauEnter = this.buttonRatXauEnter.bind(this)
  }

  buttonTotEnter() {
    this.setState({
      text: "AQI 0-50: Does not affect to health.",
      color: "#25ADD6"
    })
  }

  buttonTrungBinhEnter() {
    this.setState({
      text: "AQI 51-100: Sensitive person should not go out.",
      color: "#3E993D"
    })
  }

  buttonKemEnter() {
    this.setState({
      text: "AQI 101-200: Sensitive person need to stay at home.",
      color: "#245D90"
    })
  }

  buttonXauEnter() {
    this.setState({
      text: "AQI 201-300: Sensitive person need to stay at home, other people should not go out.",
      color: "#ED9500"
    })
  }

  buttonRatXauEnter() {
    this.setState({
      text: "AQI > 301: Everyone needs to stay at home.",
      color: "#C8342C"
    })
  }

  componentWillReceiveProps(nextProps) {
    let type = nextProps.type
    switch (type) {
      case 1:
        this.buttonTotEnter()
        break;
      case 2:
        this.buttonTrungBinhEnter()
        break;
      case 3:
        this.buttonKemEnter()
        break;
      case 4:
        this.buttonXauEnter()
        break;
      case 5:
        this.buttonRatXauEnter()
        break;
      default:
        break;
    }
  }

  render() {
    const color = this.state.color
    const text = this.state.text
    return (
      <div className="container">
        <Jumbotron style={{backgroundColor:color}} >
          <h1 style={{fontSize:26}}>{text}</h1>
          <p style={{textAlign: 'justify'}}>An individual score (IAQI) is assigned to the level of each pollutant and the final AQI is the highest of those 6 scores. The pollutants can be measured quite differently. PM2.5、PM10 concentration are measured as average per 24h. SO2, NO2, O3, CO are measured as average per hour. The final API value is calculated per hour according to a formula published by the MEP. AQI is devided into 5 types:</p>
          <ButtonToolbar>
            <InfoButton onMouseEnter={this.buttonTotEnter} type={"tot"} />
            <InfoButton onMouseEnter={this.buttonTrungBinhEnter} type={"trungbinh"} />
            <InfoButton onMouseEnter={this.buttonKemEnter} type={"kem"} />
            <InfoButton onMouseEnter={this.buttonXauEnter} type={"xau"} />
            <InfoButton onMouseEnter={this.buttonRatXauEnter} type={"ratxau"} />
          </ButtonToolbar>
          </Jumbotron>
      </div>
    )
  }

}

export default Info
