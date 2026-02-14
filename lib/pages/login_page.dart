import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key}); 

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async{
    if(_formKey.currentState!.validate()){
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, "/homepage");
      setState(() {
        changeButton = false;
        _formKey.currentState!.reset();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
      appBar: AppBar(
        shadowColor: Colors.grey,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
        ],
        toolbarHeight: 70,
        backgroundColor: const Color(0xFF1E3A8A),
        foregroundColor: Colors.white,
        elevation: 20,
        title: const Text(
          "Login Page",
          style: TextStyle(
            fontSize: 20,
            fontFamily: "Times New Roman",
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  "assets/images/login_image.avif",
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 30),

              Text(
                "Welcome $name",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 30),

              Padding(  
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    TextFormField(
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter your username",
                        hintStyle:
                            const TextStyle(color: Colors.grey),
                        labelText: "Username",
                        labelStyle:
                            const TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      validator:(value){
                        if(value == null || value.isEmpty){
                          return "Username cannot be empty";
                        }
                        else{
                          return null;
                        }
                      },
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
                    ),

                    const SizedBox(height: 15),

                    TextFormField(
                      obscureText: true,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter your password",
                        hintStyle:
                            const TextStyle(color: Colors.grey),
                        labelText: "Password",
                        labelStyle:
                            const TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      validator:(value){
                        if(value == null || value.isEmpty){
                          return "Password cannot be empty";
                        }
                        else if(value.length < 6){
                          return "Password must be at least 6 characters long";
                        }
                        else{
                          return null;
                        }
                      },
                    ),

                    const SizedBox(height: 20),

                    InkWell(
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        height: 50,
                        width: changeButton ? 50 : 120,
                        alignment: Alignment.center,
                        child: changeButton
                            ? const Icon(Icons.done,
                                color: Colors.white)
                            : const Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: "Times New Roman",
                                ),
                              ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              changeButton ? 50 : 20),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFF8B5CF6),
                              Color(0xFF6366F1),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
