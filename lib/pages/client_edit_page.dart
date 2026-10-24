import 'package:flutter/material.dart';

class ClientEditPage extends StatefulWidget {
  const ClientEditPage({super.key});

  @override
  State<ClientEditPage> createState() => _ClientEditPageState();
}

class _ClientEditPageState extends State<ClientEditPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  void saveData() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Editar'), backgroundColor: Colors.black),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(label: Text('Nome do cliente')),
                  controller: nameController,
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    label: Text('Descrição da conta'),
                  ),
                  controller: descriptionController,
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Salvar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
