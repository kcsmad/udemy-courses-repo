import React from 'react';
import VideoListItem from './video-list-item';

const VideoList = ({ videos, onVideoSelect }) => {
  const renderedList = videos.map((video) => {
    return <VideoListItem key={video.id.videoId} onVideoSelect={onVideoSelect} video={video} />
  });

  return (
    <div className="ui relaxed divided list">
      {renderedList}
    </div>
  );
};

export default VideoList;
