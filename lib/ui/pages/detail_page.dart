import 'package:flutter/material.dart';

import '../../models/list_kost.dart';

class DetailPage extends StatelessWidget {
  final ListKost kost;
  const DetailPage({
    Key? key,
    required this.kost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(kost.nameIndex),
      ),
    );
  }
}
