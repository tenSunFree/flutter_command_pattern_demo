import 'package:flutter/material.dart';
import 'package:flutter_command_pattern_demo/home/presenter/command.dart';

class ManagePaymentMethodsCommand implements Command {
  @override
  AlertDialog getDialog() {
    const String title = "管理付款方式";
    const String content = "您可以在Facebook廣告帳號的「付款設定」中新增付款方式。";
    return AlertDialog(
        title: Text(title), content: Text(content), actions: <Widget>[]);
  }
}
