//import the react and reactDom
import React from 'react';
import ReactDOM from 'react-dom';

import CommentDetail from './comment-detail';

// Create a react component
const App = () => {
  return <div>
    <CommentDetail
      author="Sam"
      timeAgo="Today at 4:00PM"
    />
    <CommentDetail
      author="Alex"
      timeAgo="Today at 2:00AM"
    />
    <CommentDetail
      author="Jane"
      timeAgo="Yesterday at 5:25PM"
    />
  </div>
};
// take the react component and show it in the screen
ReactDOM.render(
  <App />,
  document.querySelector('#root')
);
