import 'package:festcine_pedraazul/galeria/services/gallery_service.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddImagePage extends StatefulWidget {
  const AddImagePage({super.key});

  @override
  State<AddImagePage> createState() => _AddImagePageState();
}

class _AddImagePageState extends State<AddImagePage> {
  final formKey = GlobalKey<FormState>();
  final title = TextEditingController();
  final photographer = TextEditingController();
  final details = TextEditingController();
  MemoryImage? image;
  XFile? file;
  bool _isLoading = false;

  Future<void> _sendForm() async {
    final navigator = Navigator.of(context);
    final isValid = formKey.currentState?.validate();
    if (!(isValid ?? false)) return;
    if (file == null) return;
    setState(() {
      _isLoading = true;
    });
    await GalleryService().uploadImage(
      details: details.text,
      title: title.text,
      photographer: photographer.text,
      file: file!,
    );
    navigator.pop();
  }

  Future<void> _uploadImage() async {
    final thisFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (thisFile == null) return;
    final thisImage = MemoryImage(await thisFile.readAsBytes());
    setState(() {
      file = thisFile;
      image = thisImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 24),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Realizar o upload de uma imagem!',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -1.5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 24.0),
                  child: TextFormField(
                    controller: title,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Título',
                    ),
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Informe o título!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 24.0),
                  child: TextFormField(
                    controller: photographer,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Fotógrafo',
                    ),
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Informe o fotógrafo!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 24.0),
                  child: TextFormField(
                    controller: details,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Descrição',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Forneça uma descrição!';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: BorderRadius.circular(12),
                    image:
                        image != null ? DecorationImage(image: image!) : null,
                  ),
                  width: 200,
                  height: 200,
                ),
                TextButton(
                  onPressed: _uploadImage,
                  child: const Text('Fazer o upload da imagem'),
                ),
                const SizedBox(height: 8),
                if (_isLoading) const CircularProgressIndicator(),
                if (!_isLoading)
                  FilledButton(
                    onPressed: file != null ? _sendForm : null,
                    child: const Text('Enviar Formulário'),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
