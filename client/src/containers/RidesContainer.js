import React, { Component } from "react";
import RideInput from '../components/RideInput'
import Rides from '../components/Rides'
import {connect} from 'react-redux'

class RideContainer extends Component {
    render(){
        return(
            <div>
                <RideInput addRide={this.props.addRide}/>
                <Rides rides={this.props.rides}/>
            </div>
        )
    }
}

const mapStateToProps = ({rides}) => ({rides})

const mapDispatchToProps = dispatch => ({
    addRide: rideInfo => dispatch({type: "ADD_RIDE", rideInfo})
})

export default connect(mapStateToProps, mapDispatchToProps)(RideContainer)