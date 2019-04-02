import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/models/status.model.dart';

class StatusTab extends StatefulWidget {
  @override
  _StatusTabState createState() => _StatusTabState();
}

class _StatusTabState extends State<StatusTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
            children: <Widget>[
                ListTile(
                    title: Text(
                        status[0].name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                    ),
                    subtitle: Container(
                        child: Text('Añadir a mi estado')
                    ),
                    leading: CircleAvatar(
                        backgroundImage: NetworkImage(status[0].avatar),
                        foregroundColor: Theme.of(context).accentColor,
                        backgroundColor: Colors.grey,
                    ),
                ),
                Divider(),
                Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                        'Recientes',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor
                        ),
                    ),
                ),
                ListTile(
                    title: Text(
                        status[1].name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                    ),
                    subtitle: Container(
                        child: Text(status[1].time)
                    ),
                    leading: CircleAvatar(
                        backgroundImage: NetworkImage(status[1].avatar),
                        foregroundColor: Theme.of(context).accentColor,
                        backgroundColor: Colors.grey,
                    ),
                ),
                Divider(),
                ListTile(
                    title: Text(
                        status[2].name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                    ),
                    subtitle: Container(
                        child: Text(status[2].time)
                    ),
                    leading: CircleAvatar(
                        backgroundImage: NetworkImage(status[2].avatar),
                        foregroundColor: Theme.of(context).accentColor,
                        backgroundColor: Colors.grey,
                    ),
                ),
                Divider(),
                ListTile(
                    title: Text(
                        status[3].name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                    ),
                    subtitle: Container(
                        child: Text(status[3].time)
                    ),
                    leading: CircleAvatar(
                        backgroundImage: NetworkImage(status[3].avatar),
                        foregroundColor: Theme.of(context).accentColor,
                        backgroundColor: Colors.grey,
                    ),
                ),
                Divider(),
            ]
        ),
    );
  }
}
