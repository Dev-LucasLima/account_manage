import 'package:flutter/material.dart';

import 'pages/client_list_page.dart';

class ClientManager extends StatelessWidget {
  const ClientManager({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Client Manager',
        home: ClientListPage(),
    );
  }
}
