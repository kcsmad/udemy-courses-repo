import React from 'react';
import './video-item.css';

const VideoListItem = ({ video, onVideoSelect }) => {
  return (
    <div onClick={() => onVideoSelect(video)} className="item video-item">
      <img className="ui image" alt="thumbnails" src={video.snippet.thumbnails.medium.url} />
      <div className="content">
        <div className="header">
          {video.snippet.title}
        </div>
      </div>
    </div>
  );
};

export default VideoListItem;
