import {Database} from '@nozbe/watermelondb';
import SQLiteAdapter from '@nozbe/watermelondb/adapters/sqlite';

import {schema} from '../models/schema';
import migrations from '../models/migrations';
import {Comment, Post} from '../models/Post';

export const initDatabase = () => {
  // First, create the adapter to the underlying database:
  const adapter = new SQLiteAdapter({
    schema,
    // (You might want to comment it out for development purposes -- see Migrations documentation)
    migrations,
    // (optional database name or file system path)
    dbName: 'abc',
    // (recommended option, should work flawlessly out of the box on iOS. On Android,
    // additional installation steps have to be taken - disable if you run into issues...)
    jsi: true /* Platform.OS === 'ios' */,
    // (optional, but you should implement this method)
    onSetUpError: error => {
      // Database failed to load -- offer the user to reload the app or log out
    },
  });

  // Then, make a Watermelon database from it!
  const database = new Database({
    adapter,
    modelClasses: [Post, Comment],
  });

  database
    .write(async () => {
      await database.get('posts').create(post => {
        post.title = 'New post';
        post.body = 'Lorem ipsum...';
      });
      await database.get('posts').query().fetch();
    })
    .then();
};
