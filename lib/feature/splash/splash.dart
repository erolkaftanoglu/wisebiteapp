import 'package:easy_localization/easy_localization.dart';
import 'package:wisebiteapp/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          LocaleKeys.splash_title.tr(),
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
