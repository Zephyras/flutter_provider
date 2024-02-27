import 'package:flutter_riverpod/flutter_riverpod.dart';

//provider 만드는방법
final helloProvider = Provider<String>((ref) {
  ref.onDispose(() {
    print('[helloProvider] dispose');
  });
  return 'Hello';
});

final worldProvider = Provider<String>((ref) {
  ref.onDispose(() {
    print('[worldProvider] dispose');
  });
  return 'world';
});
