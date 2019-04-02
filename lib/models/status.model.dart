import 'package:whatsapp_clone_flutter/models/chat.model.dart';

class StatusModel {
    final String avatar;
    final String name;
    final String time;

    StatusModel({this.name, this.time, this.avatar});
}

List<StatusModel> status = [
    new StatusModel(
        name: messageData[0].name,
        time: "Hoy, 3:00AM",
        avatar: messageData[0].avatar
    ),
    new StatusModel(
        name: messageData[1].name,
        time: "Hoy, 4:23AM",
        avatar: messageData[1].avatar),
    new StatusModel(
        name: messageData[2].name,
        time: "Hoy, 5:23PM",
        avatar: messageData[2].avatar),
    new StatusModel(
        name: messageData[3].name,
        time: "Hoy, 4:43PM",
        avatar: messageData[3].avatar),
];
