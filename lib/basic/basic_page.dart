import 'package:flutter/material.dart';
import 'package:flutter_provider/basic/basic_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BasicPage extends ConsumerStatefulWidget {
  const BasicPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BasicPageState();
}

class _BasicPageState extends ConsumerState<BasicPage> {
  @override
  Widget build(BuildContext context) {
    final hello = ref.watch(helloProvider);
    final world = ref.watch(worldProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: Center(
          child: Text(
        '$hello $world',
        style: Theme.of(context).textTheme.headlineLarge,
      )),
    );
  }
}
