import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
    final String name;

    ChatPage({this.name});

    @override
    _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> with TickerProviderStateMixin {

    final TextEditingController textEditingController = new TextEditingController();

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text(widget.name),
            ),
            body: Container(
                child: Column(
                    children: <Widget>[
                        Container(
                            child: buildTextComposer(),
                        )
                    ],
                ),
            ),
        );
    }

    Widget buildTextComposer() {
        return IconTheme(
            data: IconThemeData(color: Theme
                .of(context)
                .accentColor),
            child: Container(
                child: Row(
                    children: <Widget>[
                        Flexible(
                            child: TextField(
                                controller: textEditingController,
                            ),
                        ),
                        Container(
                            child: IconButton(
                                icon: Icon(Icons.send),
                                onPressed: () {

                                }),
                        )
                    ],
                ),
            ),
        );
    }
}
