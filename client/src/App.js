import React, {Fragment} from 'react'
import {Switch, Route} from 'react-router-dom'
import Home from './components/Home'

const App = () => (
  <Fragment>
    <Switch>
      <Route exact path="/" component={Home} />
    </Switch>
  </Fragment>
)

export default App