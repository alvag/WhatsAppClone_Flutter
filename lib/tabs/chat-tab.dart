import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/models/chat.model.dart';
import 'package:whatsapp_clone_flutter/pages/chat.page.dart';

class ChatTab extends StatefulWidget {
    @override
    _ChatTabState createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
    @override
    Widget build(BuildContext context) {
        return ListView.builder(
            itemCount: messageData.length,
            itemBuilder: (context, i) =>
                Column(
                    children: <Widget>[
                        Divider(
                            height: 10,
                        ),
                        ListTile(
                            title: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                    Text(messageData[i].name, style: TextStyle(
                                        fontWeight: FontWeight.bold
                                    ),),
                                    Text(messageData[i].time, style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13
                                    ))
                                ],
                            ),
                            subtitle: Container(
                                padding: EdgeInsets.only(top: 5),
                                child: Text(
                                    messageData[i].message,
                                )
                            ),
                            leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    messageData[i].avatar),
                            ),
                            onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => ChatPage(name: messageData[i].name,))
                                );
                            },
                        )
                    ],
                ),
        );
    }
}
