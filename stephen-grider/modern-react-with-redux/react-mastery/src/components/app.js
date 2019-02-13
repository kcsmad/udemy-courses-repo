import React, { Component } from 'react';
import SearchBar from './search-bar';
import VideoList from './video-list'
import youtube from '../apis/youtube';

class App extends Component {
  state = { videos: [] };

  onTermSubmit = async term => {
    const resp = await youtube.get('/search', {
      params: {
        q: term
      }
    });

    this.setState({ videos: resp.data.items });
  };

  render() {
    return (
      <div className="ui container">
        <SearchBar onFormSubmit={this.onTermSubmit} />
        <VideoList videos={this.state.videos} />
      </div>
    );
  }
}

export default App;
