import React, {Component} from 'react'

class Ride extends Component {
    render(){
        const {ride} = this.props
        return(
            <div>
                <li> {ride.dateTime}</li>
                <li>{ride.locationTo}</li>
                <li>{ride.locationFrom}</li>
                <li>{ride.appointmentType}</li>
                <li>{ride.passengerId}</li>
            </div>
        )
    }
}

export default Ride