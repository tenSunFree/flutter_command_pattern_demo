import 'package:flutter/material.dart';
import 'package:flutter_command_pattern_demo/home/presenter/command.dart';

class MyYsimCommand implements Command {
  @override
  AlertDialog getDialog() {
    const String title = "我的YSIM";
    const String content = "透過KLOOK預訂由DTAC提供的4G SIM卡，曼谷BKK、清邁CNX、普吉島HKT機場領取。";
    return AlertDialog(title: Text(title), content: Text(content));
  }
}
