import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flow/config/theme.dart';
import 'package:flow/model/message.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  //column1
  Widget profileColumn(BuildContext context, Message message) => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(
                'http://www.tsundata.com/static/images/tsundata.png'),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'System',
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'address',
                )
              ],
            ),
          ))
        ],
      );

  //column last
  Widget actionColumn(Message message) => FittedBox(
        fit: BoxFit.contain,
        child: ButtonBar(
          alignment: MainAxisAlignment.center,
          children: <Widget>[
            LabelIcon(
              label: "2 Likes",
              icon: Icons.thumb_up,
              iconColor: Colors.green,
            ),
            LabelIcon(
              label: "22 Comments",
              icon: Icons.record_voice_over,
              iconColor: Colors.blue,
            ),
            Text(
              '2019-09-09',
              style: TextStyle(fontFamily: 'WorkSans'),
            )
          ],
        ),
      );

  //post cards
  Widget postCard(BuildContext context, Message message) {
    return Card(
      elevation: 2.0,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: profileColumn(context, message),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Hi ...',
              style: TextStyle(
                  fontWeight: FontWeight.normal, fontFamily: 'WorkSans'),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          message != null
              ? Image.network(
                  'http://www.tsundata.com/static/images/tsundata.png',
                  fit: BoxFit.cover,
                )
              : Container(),
          message != null
              ? Container()
              : Divider(
                  color: Colors.grey.shade300,
                  height: 8.0,
                ),
          actionColumn(message),
        ],
      ),
    );
  }

  Widget appBar() => SliverAppBar(
        backgroundColor: Colors.white,
      );

  Widget bodyList(List<Message> messages) => SliverList(
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: postCard(context, messages[index]),
          );
        }, childCount: messages.length),
      );

  Widget bodySliverList() {
    PostBloc postBloc = PostBloc();
    return StreamBuilder<List<Message>>(
        stream: postBloc.postItems,
        builder: (context, snapshot) {
          return snapshot.hasData
              ? CustomScrollView(
                  slivers: <Widget>[
                    appBar(),
                    bodyList(snapshot.data!),
                  ],
                )
              : Center(child: CircularProgressIndicator());
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'all',
          style: TextStyle(
              fontSize: 22,
              color: AppTheme.darkerText,
              fontWeight: FontWeight.w700),
        ),
        backgroundColor: AppTheme.white,
        iconTheme: IconThemeData(color: AppTheme.dark_grey),
      ),
      backgroundColor: HexColor('#ececec'),
      body: bodySliverList(),
    );
  }
}

class LabelIcon extends StatelessWidget {
  final label;
  final icon;
  final iconColor;
  final onPressed;

  LabelIcon(
      {this.label, this.icon, this.onPressed, this.iconColor = Colors.grey});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed,
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: iconColor,
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}

class PostBloc {
//  final PostViewModel postViewModel = PostViewModel();
  final postController = StreamController<List<Message>>();
  final fabController = StreamController<bool>();
  final fabVisibleController = StreamController<bool>();

  Sink<bool> get fabSink => fabController.sink;

  Stream<List<Message>> get postItems => postController.stream;

  Stream<bool> get fabVisible => fabVisibleController.stream;

  PostBloc() {
    postController.add(getPosts());
    fabController.stream.listen(onScroll);
  }

  onScroll(bool visible) {
    fabVisibleController.add(visible);
  }

  void dispose() {
    postController.close();
    fabController.close();
    fabVisibleController.close();
  }
}

getPosts() => <Message>[
      Message(type: 1),
      Message(type: 1),
    ];
