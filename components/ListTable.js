import React from 'react'
import {
  Table
} from 'react-bootstrap'
import socketIOClient from "socket.io-client"

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

function rowTable(list) {
  const listItems = list.map((row, index) => {
    let check = checkAqi(row.aqi)
    let className
    let type
    switch (check) {
      case 1:
        className = "info"
        type = "Good"
        break;
      case 2:
        className = "success"
        type = "Medium"
        break;
      case 3:
        className = "primary"
        type = "Not Good"
        break;
      case 4:
        className = "warning"
        type = "Bad"
        break;
      case 5:
        className = "danger"
        type = "Very Bad"
        break;
      default:
        break;
    }
    return (
      <tr className={className} key={index}>
        <td>{index+1}</td>
        <td>{row.created_at}</td>
        <td>{row.aqi}</td>
        <td>{type}</td>
      </tr>
    )
  })
  return listItems
}

class ListTable extends React.Component {
  constructor() {
    super()
    this.state = {
      list: []
    }
    this.fetchAndSet = this.fetchAndSet.bind(this)
  }

  fetchAndSet() {
    fetch('/listaqi').then( (res) => {
      return res.json()
    }).then( (result) => {
      this.setState({
        list: result
      })
    })
  }

  componentDidMount() {
    this.fetchAndSet()
    this.props.socket.on('update', (data) => {
      this.fetchAndSet()
    })
  }

  render() {
    const list = this.state.list
    const listItems = rowTable(list)
    const tableInstance = (
      <div className="container">
      <Table striped bordered condensed hover className="container">
        <thead>
          <tr>
            <th>List</th>
            <th>Time</th>
            <th>AQI Index</th>
            <th>AQI Level</th>
          </tr>
        </thead>
        <tbody>
          {listItems}
        </tbody>
      </Table>
      </div>
    );
    return tableInstance
  }
}

export default ListTable
