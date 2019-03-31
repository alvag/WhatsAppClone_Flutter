import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
    final String name;
    
    ChatPage({this.name});
    
    @override
    _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
    @override
    Widget build(BuildContext context) {
        return Container(
            child: Text(widget.name),
        );
    }
}
