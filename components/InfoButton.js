import React from 'react'
import {
  Button
} from 'react-bootstrap'

const InfoButton = (props) => {
  let typeButton
  let textButton
  switch (props.type) {
    case "tot":
      typeButton = "info"
      textButton = "Good"
      break;
    case "trungbinh":
      typeButton = "success"
      textButton = "Medium"
      break;
    case "kem":
      typeButton = "primary"
      textButton = "Not Good"
      break;
    case "xau":
      typeButton = "warning"
      textButton = "Bad"
      break;
    default:
      typeButton = "danger"
      textButton = "Very Bad"
      break;
  }
  return (
    <Button onMouseEnter={props.onMouseEnter} bsStyle={typeButton}>{textButton}</Button>
  )
}

export default InfoButton
