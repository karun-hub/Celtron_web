import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ContactSection extends StatefulWidget {
  @override
  _ContactSectionState createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _subjectController = TextEditingController();
  final _messageController = TextEditingController();

  Future<void> _submitForm() async {
    if (_formKey.currentState?.validate() ?? false) {
      final url = Uri.parse(
        "https://script.google.com/macros/s/AKfycbyZhZEKUMKfry0Xh2dOaB55OgYnpkyCgDu6R4vo3p9yxpX7duJP8pMy2q763I3pzqc8/exec",
      );

      final response = await http.post(
        url,
        body: {
          "name": _nameController.text,
          "email": _emailController.text,
          "subject": _subjectController.text,
          "message": _messageController.text,
        },
      );

      if (response.statusCode == 200) {
        _showMessage("Form submitted successfully");
        _clearForm();
      } else {
        _showMessage("Something went wrong: ${response.body}");
      }
    }
  }

  void _showMessage(String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text("Message"),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: Text("OK"),
          ),
        ],
      ),
    );
  }

  void _clearForm() {
    _nameController.clear();
    _emailController.clear();
    _subjectController.clear();
    _messageController.clear();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _subjectController.dispose();
    _messageController.dispose();
    super.dispose();
  }
  Widget _buildInfoCard({required IconData icon, required String title, required String content}) {
    return Expanded(
      child: Column(
        children: [
          Icon(icon, size: 48, color: Colors.deepOrange),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            content,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.05),
      child: Column(
        children: [
          Text(
            'Contact Us',
            style: Theme.of(context).textTheme.headline4?.copyWith(
              // color: primaryColor,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 40),

          // Contact Information
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Location Information
              _buildInfoCard(
                icon: Icons.location_on,
                title: 'Location:',
                content: 'Corporate office : Clovers Blue Tower, Kakkavila, Edachira, Kakkanad, Kerala 682030\n\n'
                    '391/A, Near Christuraja Malankara Catholic Church, Chethonkara, Ranni, Pathanamthitta, Kerala - 689673',
              ),
              // Email Information
              _buildInfoCard(
                icon: Icons.email,
                title: 'Email:',
                content: 'celtronenergies@gmail.com',
              ),
              // Phone Information
              _buildInfoCard(
                icon: Icons.phone,
                title: 'Call:',
                content: '+91 7558849474',
              ),
            ],
          ),
          SizedBox(height: 40),
          Container(
            width: MediaQuery.of(context).size.width*.7,
            padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  // Name and Email Fields
                  Row(
                    children: [
                      Expanded(
                        child: _buildTextField(
                          controller: _nameController,
                          hintText: 'Your Name',
                          icon: Icons.person,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: _buildTextField(
                          controller: _emailController,
                          hintText: 'Your Email',
                          icon: Icons.email,
                          validator: (value) {
                            if (value == null || !value.contains('@')) {
                              return 'Please enter a valid email';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  // Subject Field
                  _buildTextField(
                    controller: _subjectController,
                    hintText: 'Subject',
                    icon: Icons.subject,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a subject';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),

                  // Message Field
                  _buildTextField(
                    controller: _messageController,
                    hintText: 'Message',
                    icon: Icons.message,
                    maxLines: 5,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a message';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),

                  // Submit Button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange ),
                    onPressed: _submitForm,
                    child: Text('Send Message'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hintText,
    required IconData icon,
    int maxLines = 1,
    String? Function(String?)? validator,
  }) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: validator,
    );
  }
}
