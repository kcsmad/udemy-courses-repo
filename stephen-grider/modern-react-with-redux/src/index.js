//import the react and reactDom
import React from 'react';
import ReactDOM from 'react-dom';

// Create a react component
const App = () => {
  return <div>Hi there!</div>
}
// take the react component and show it in the screen
ReactDOM.render(
  <App />,
  document.getElementById('root')
)
