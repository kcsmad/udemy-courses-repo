import { combineReducers} from 'redux';
import postReducer from './posts-reducer';
import usersReducer from './users-reducer';

export default combineReducers({
  posts: postReducer,
  users: usersReducer,
});
