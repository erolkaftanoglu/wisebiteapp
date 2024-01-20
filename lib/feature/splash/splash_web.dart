import 'package:easy_localization/easy_localization.dart';
import 'package:wisebiteapp/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashWebPage extends ConsumerStatefulWidget {
  const SplashWebPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashWebPageState();
}

class _SplashWebPageState extends ConsumerState<SplashWebPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          LocaleKeys.splash_title_web.tr(),
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
