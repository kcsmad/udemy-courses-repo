import React, { Component } from 'react';
import SearchBar from './search-bar';
import VideoList from './video-list'
import VideoDetail from './video-detail';
import youtube from '../apis/youtube';

class App extends Component {
  state = { videos: [], selectedVideo: null };

  onTermSubmit = async term => {
    const resp = await youtube.get('/search', {
      params: {
        q: term
      }
    });

    this.setState({ videos: resp.data.items });
  };

  onVideoSelect = (video) => {
    this.setState({ selectedVideo: video });
  };

  render() {
    return (
      <div className="ui container">
        <SearchBar onFormSubmit={this.onTermSubmit} />
        <VideoDetail video={this.state.selectedVideo} />
        <VideoList onVideoSelect={this.onVideoSelect} videos={this.state.videos} />
      </div>
    );
  }
}

export default App;
