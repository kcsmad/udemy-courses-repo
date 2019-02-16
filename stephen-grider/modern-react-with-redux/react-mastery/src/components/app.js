import React, { Component } from 'react';
import SearchBar from './search-bar';
import VideoList from './video-list'
import VideoDetail from './video-detail';
import youtube from '../apis/youtube';

export default class App extends Component {
  state = { videos: [], selectedVideo: null };

  componentDidMount() {
    this.onTermSubmit('yes or yes');
  }

  onTermSubmit = async term => {
    const resp = await youtube.get('/search', {
      params: {
        q: term
      }
    });

    this.setState({
      videos: resp.data.items,
      selectedVideo: resp.data.items[0]
    });
  };

  onVideoSelect = (video) => {
    this.setState({ selectedVideo: video });
  };

  render() {
    return (
      <div className="ui container">
        <SearchBar onFormSubmit={this.onTermSubmit} />
        <div className="ui grid" >
          <div className="ui row">
            <div className="eleven wide column">
              <VideoDetail video={this.state.selectedVideo} />
            </div>
            <div className="five wide column">
              <VideoList onVideoSelect={this.onVideoSelect} videos={this.state.videos} />
            </div>
          </div>
        </div>
      </div>
    );
  }
}
