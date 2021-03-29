import 'package:flutter/material.dart';
import 'package:flutter_command_pattern_demo/home/presenter/command.dart';

class ManageBookingMethodsCommand implements Command {
  @override
  AlertDialog getDialog() {
    const String title = "管理預訂資訊";
    const String content = "透過自助管理預訂系統，要求座位，更改或取消航班，辦理登機手續等。";
    return AlertDialog(title: Text(title), content: Text(content));
  }
}
