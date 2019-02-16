import jsonPlacholder from '../apis/jsonPlaceholder';

export const fetchPosts = async () => {
  const response = await jsonPlacholder.get('/posts');
  return {
    type: 'FETCH_POSTS',
    payload: response
  };
};
