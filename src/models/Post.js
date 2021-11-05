// model/Post.js
import {Model} from '@nozbe/watermelondb';
import {
  field,
  text,
  date,
  relation,
  immutableRelation,
  children,
} from '@nozbe/watermelondb/decorators';

export class Post extends Model {
  static table = 'posts';
  @text('title') title;
  @text('body') body;
}

export class Comment extends Model {
  static table = 'comments';
  @text('title') title;
  @text('body') body;
}
