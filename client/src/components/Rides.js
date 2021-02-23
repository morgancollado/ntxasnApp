import React from 'react'
import Ride from './Ride'

const Rides = props => {
    const rides = props.rides.map(ride => <Ride key={ride.id} ride={ride}/>)

    return(
        <div>
            {rides}
        </div>
    )
}

export default Rides
