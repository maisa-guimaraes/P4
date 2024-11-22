import ReactDOM from 'react-dom';
import 'normalize.css';
import './index.css';
import Router from './routes';
import React from 'react';


ReactDOM.render(
  <React.StrictMode>
    <Router/>
  </React.StrictMode>,
  document.getElementById('root')
);