import axios from 'axios';

const KEY = 'AIzaSyAY4dqrfM7bJHwBJKsyGgVkfoEDvnoA-dI';

export default axios.create({
  baseURL: 'https://www.googleapis.com/youtube/v3',
  params: {
    part: 'snippet',
    maxResults: 5,
    key: KEY
  }
});
