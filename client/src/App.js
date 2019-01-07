import React, {Fragment} from 'react'
import {Switch, Route} from 'react-router-dom'
import Home from './components/Home'
import NoMatch from './components/NoMatch'
import Navbar from './components/Navbar'
import {Container} from 'semantic-ui-react'

const App = () => (
  <Fragment>
    <Navbar />
      <Container>
        <Switch>
          <Route exact path="/" component={Home} />
          <Route component={NoMatch} />
        </Switch>
      </Container>
  </Fragment>
)

export default App