import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/models/chat.model.dart';

class ChatPage extends StatefulWidget {
    final String name;

    ChatPage({this.name});

    @override
    _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> with TickerProviderStateMixin {

    final List<ChatMessage> messages = <ChatMessage>[];
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
                        Flexible(
                            child: ListView.builder(
                                padding: EdgeInsets.all(8),
                                reverse: true,
                                itemBuilder: (_, int i) => messages[i],
                                itemCount: messages.length,
                            ),
                        ),
                        Divider(height: 1),
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
                                onSubmitted: (String value) => handleSubmit(value.trim()),
                                decoration: InputDecoration.collapsed(hintText: 'Enviar mensaje'),
                            ),
                        ),
                        Container(
                            child: IconButton(
                                icon: Icon(Icons.send),
                                onPressed: () => handleSubmit(textEditingController.text.trim())
                            ),
                        )
                    ],
                ),
            ),
        );
    }

    handleSubmit(String text) {
        if (text.isNotEmpty) {
            ChatMessage message = new ChatMessage(
                message: text,
                animationController: AnimationController(
                    duration: Duration(milliseconds: 700),
                    vsync: this
                ),
                name: widget.name,
            );

            setState(() {
                messages.insert(0, message);
                var msg = messageData.firstWhere((t) => t.name == widget.name);

                msg.message = text;
            });

            message.animationController.forward();
            textEditingController.clear();
        }
    }
}

class ChatMessage extends StatelessWidget {

    final String name;
    final String message;
    final AnimationController animationController;

    ChatMessage({this.name, this.message, this.animationController});

    @override
    Widget build(BuildContext context) {
        return SizeTransition(
            sizeFactor: CurvedAnimation(
                parent: animationController,
                curve: Curves.easeInOut
            ),
            child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                        Container(
                            margin: const EdgeInsets.only(right: 16),
                            child: CircleAvatar(
                                child: Text(name.substring(0, 1)),
                            ),
                        ),
                        Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                    Text(name, style: Theme
                                        .of(context)
                                        .textTheme
                                        .subhead,),
                                    Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Text(message)
                                    )
                                ],
                            ),
                        )
                    ],
                ),
            ),
        );
    }
}

