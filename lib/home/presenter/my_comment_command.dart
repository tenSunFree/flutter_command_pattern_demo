import 'package:flutter/material.dart';
import 'package:flutter_command_pattern_demo/home/presenter/command.dart';

class MyCommentCommand implements Command {
  @override
  AlertDialog getDialog() {
    const String title = "我的評價";
    const String content = "如果您認為評價違反政策，想提出異議，請參考檢舉方式。";
    return AlertDialog(title: Text(title), content: Text(content));
  }
}
