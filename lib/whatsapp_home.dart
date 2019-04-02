import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/tabs/calls-tab.dart';
import 'package:whatsapp_clone_flutter/tabs/camera-tab.dart';
import 'package:whatsapp_clone_flutter/tabs/chat-tab.dart';
import 'package:whatsapp_clone_flutter/tabs/state-tab.dart';

class WhatsAppHome extends StatefulWidget {
    @override
    _WhatsAppHomeState createState() => new _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
    TabController tabController;

    @override
    void initState() {
        // TODO: implement initState
        super.initState();
        tabController =
        new TabController(length: 4, initialIndex: 1, vsync: this);
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text("WhatsApp"),
                bottom: TabBar(
                    isScrollable: true,
                    controller: tabController,
                    tabs: <Widget>[
                        Tab(icon: Icon(Icons.camera_alt)),
                        Tab(text: 'CHATS'),
                        Tab(text: 'ESTADOS'),
                        Tab(text: 'LLLAMADAS',)
                    ],
                ),
            ),
            body: TabBarView(
                children: <Widget>[
                    CameraTab(),
                    ChatTab(),
                    StatusTab(),
                    CallsTab(),
                ],
                controller: tabController,
            ),
        );
    }
}
