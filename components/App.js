import React from 'react'
import NavBar from './NavBar.js'
import Info from './Info.js'
import AQINow from './AQINow.js'
import ListTable from './ListTable.js'
import socketIOClient from "socket.io-client"

class App extends React.Component {
  constructor() {
    super()
    this.state = {
      currentType: ''
    }
    this.socket = socketIOClient()
    this.setCurrentType = this.setCurrentType.bind(this)
  }

  setCurrentType(newtype) {
    this.setState({
      currentType: newtype
    })
  }

  render() {
    const type = this.state.currentType
    return (
      <div>
        <NavBar />
        <Info type={type}/>
        <AQINow socket={this.socket} setType={this.setCurrentType}/>
        <ListTable socket={this.socket}/>
      </div>
    )
  }
}

export default App
