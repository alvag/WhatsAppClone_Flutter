import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/models/chat.model.dart';
import 'package:whatsapp_clone_flutter/pages/chat.page.dart';

class ContactsPage extends StatefulWidget {
    @override
    _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Seleccionar Contacto...'),
            ),
            body: ListView.builder(
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
                                        Text('MOBILE', style: TextStyle(
                                            color: Theme
                                                .of(context)
                                                .accentColor,
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
            ),
        );
    }
}
