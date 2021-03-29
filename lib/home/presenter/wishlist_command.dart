import 'package:flutter/material.dart';
import 'package:flutter_command_pattern_demo/home/presenter/command.dart';

class WishlistCommand implements Command {
  @override
  AlertDialog getDialog() {
    const String title = "願望清單";
    const String content = "此清單讓您可追蹤要加入個人收藏的應用程式和數碼內容，但不會自動下載。";
    return AlertDialog(title: Text(title), content: Text(content));
  }
}
