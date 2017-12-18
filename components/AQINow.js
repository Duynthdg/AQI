import React from 'react'
import {
  Panel
} from 'react-bootstrap'
import socketIOClient from "socket.io-client"

class AQINow extends React.Component {
  constructor() {
    super()
    this.state = {
      aqi: 'Updating...',
      date: 'Updating...',
      check: -1
    }
    this.fetchAndSet = this.fetchAndSet.bind(this)
  }

  fetchAndSet() {
    fetch('/lastaqi').then( (res) => {
      return res.json()
    }).then( (result) => {
      let aqi = result.lastAqi
      let date = result.lastAqiDate
      let check = result.lastCheckAqi
      this.setState({
        aqi,
        date,
        check
      })
      this.props.setType(check)
    })
  }

  componentDidMount() {
    this.fetchAndSet()
    this.props.socket.on('update', (data) => {
      this.fetchAndSet()
    })
  }

  render() {
    const aqi = this.state.aqi
    const date = this.state.date
    const check = this.state.check
    let typeButton
    let color
    let colorFont
    switch (check) {
      case 1:
        typeButton = "info"
        color = "#25ADD6"
        colorFont = "#CEE8F6"
        break;
      case 2:
        typeButton = "success"
        color = "#3E993D"
        colorFont = "#DFF0D7"
        break;
      case 3:
        typeButton = "primary"
        color = "#245D90"
        colorFont = "#FFFFFF"
        break;
      case 4:
        typeButton = "warning"
        color = "#ED9500"
        colorFont = "#8B6E37"
        break;
      case 5:
        typeButton = "danger"
        color = "#C8342C"
        colorFont = "#F2DEDE"
        break;
      default:
        break;

    }
    const title = (
      <p style={{fontSize: 30, textAlign: 'center'}}>Current AQI: {aqi}</p>
    );

    const panelsInstance = (
      <div className="container" >
        <Panel header={title} bsStyle={typeButton} style={{backgroundColor:color, color:colorFont, fontSize: 15}}>
          AQI is updated in: {date}
        </Panel>
      </div>
    )

    return panelsInstance
  }
}

export default AQINow
