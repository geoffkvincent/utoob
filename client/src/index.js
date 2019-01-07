import React from 'react';
import ReactDOM from 'react-dom';
import {BrowserRouter} from 'react-router-dom'
import {AuthProvider} from "./providers/AuthProvider"
import App from './App';

ReactDOM.render(
  <AuthProvider>

  <App />, 
  </AuthProvider>
document.getElementById('root'));
