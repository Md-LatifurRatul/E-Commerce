import 'package:flutter/material.dart';

class CreateReviewScreen extends StatefulWidget {
  const CreateReviewScreen({super.key});

  @override
  State<CreateReviewScreen> createState() => _CreateReviewScreenState();
}

class _CreateReviewScreenState extends State<CreateReviewScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameEditingController =
      TextEditingController();
  final TextEditingController _lastNameEditingController =
      TextEditingController();
  final TextEditingController _writeReviewEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Review"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              _buildCreateReviewForm(),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCreateReviewForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _firstNameEditingController,
            decoration: const InputDecoration(hintText: 'First name'),
          ),
          const SizedBox(height: 12),
          TextFormField(
            controller: _lastNameEditingController,
            decoration: const InputDecoration(hintText: 'Last name'),
          ),
          const SizedBox(height: 12),
          TextFormField(
            controller: _writeReviewEditingController,
            maxLines: 8,
            decoration: const InputDecoration(hintText: 'Write Review'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _firstNameEditingController.dispose();
    _lastNameEditingController.dispose();
    _writeReviewEditingController.dispose();
    super.dispose();
  }
}
