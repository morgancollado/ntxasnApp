import React from 'react'
import './App.css';
import {HashRouter as Router, Route} from 'react-router-dom'
import RidesContainer from './containers/RidesContainer'

function App() {
  return (
    <Router>
      <div className="App">
        <Route exact path='/' component={RidesContainer} />

      </div>
    </Router>
  );
}

export default App;
