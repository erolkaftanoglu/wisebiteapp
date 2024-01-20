import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EKAppBar extends ConsumerStatefulWidget implements PreferredSizeWidget {
  final String title;
  const EKAppBar(this.title, {super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => EKAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(50);
}

class EKAppBarState extends ConsumerState<EKAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(widget.title),
    );
  }
}
