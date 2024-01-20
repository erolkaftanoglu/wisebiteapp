import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NotFoundPage extends ConsumerStatefulWidget {
  const NotFoundPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _NotFoundPageState();
}

class _NotFoundPageState extends ConsumerState<NotFoundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Not Found Page',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
