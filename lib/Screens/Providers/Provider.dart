import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Service/Services.dart';

final productdataprovider=FutureProvider<List<dynamic>>((ref) {
  return ref.watch(provider).fetchData();
});
