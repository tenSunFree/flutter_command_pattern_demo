import 'package:flutter/material.dart';
import 'package:flutter_command_pattern_demo/home/presenter/command.dart';
import 'package:flutter_command_pattern_demo/home/presenter/manage_booking_methods_command.dart';
import 'package:flutter_command_pattern_demo/home/presenter/manage_payment_methods_command.dart';
import 'package:flutter_command_pattern_demo/home/presenter/my_comment_command.dart';
import 'package:flutter_command_pattern_demo/home/presenter/my_ysim_command.dart';
import 'package:flutter_command_pattern_demo/home/presenter/wishlist_command.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Image.asset('assets/icon_background.png'),
      Column(children: <Widget>[
        Expanded(child: SizedBox(), flex: 51),
        buildWishlistExpanded(context),
        buildMyCommentExpanded(context),
        buildManagePaymentExpanded(context),
        buildManageBookingExpanded(context),
        buildMyYsimExpanded(context),
        Expanded(child: SizedBox(), flex: 29)
      ])
    ]);
  }

  Expanded buildWishlistExpanded(BuildContext context) {
    return Expanded(
        flex: 8,
        child: GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (ctx) {
                    final Command command = WishlistCommand();
                    return command.getDialog();
                  });
            },
            child: Container(color: Colors.transparent)));
  }

  Expanded buildMyCommentExpanded(BuildContext context) {
    return Expanded(
        flex: 8,
        child: GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (ctx) {
                    final Command command = MyCommentCommand();
                    return command.getDialog();
                  });
            },
            child: Container(color: Colors.transparent)));
  }

  Expanded buildManagePaymentExpanded(BuildContext context) {
    return Expanded(
        flex: 8,
        child: GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (ctx) {
                    final Command command = ManagePaymentMethodsCommand();
                    return command.getDialog();
                  });
            },
            child: Container(color: Colors.transparent)));
  }

  Expanded buildManageBookingExpanded(BuildContext context) {
    return Expanded(
        flex: 8,
        child: GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (ctx) {
                    final Command command = ManageBookingMethodsCommand();
                    return command.getDialog();
                  });
            },
            child: Container(color: Colors.transparent)));
  }

  Expanded buildMyYsimExpanded(BuildContext context) {
    return Expanded(
        flex: 8,
        child: GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (ctx) {
                    final Command command = MyYsimCommand();
                    return command.getDialog();
                  });
            },
            child: Container(color: Colors.transparent)));
  }
}
