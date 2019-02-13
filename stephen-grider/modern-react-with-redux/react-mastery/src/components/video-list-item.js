import React from 'react';

const VideoListItem = ({ video }) => {
  return (
    <div>
      <img alt="thumbnails" src={video.snippet.thumbnails.medium.url} />
      <p>{video.snippet.title}</p>
    </div>
  );
};

export default VideoListItem;
