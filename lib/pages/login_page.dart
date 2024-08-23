import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tete_shop/pages/menu_page.dart';
import 'package:http/http.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login(String email, String password) async {
    try {
      Response response =
          await post(Uri.parse('https://reqres.in/api/login'), body: {
        'email': email,
        'password': password,
      });
      if (response.statusCode == 200) {
        // Navigate to MenuPage on successful login
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MenuPage()),
        );
      } else {
        // error
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Login failed')),
        );
      }
    } catch (e) {
      //  error
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // tránh bottom overflow
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(vertical: 30),
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Color.fromARGB(255, 246, 177, 170),
              Color.fromARGB(255, 253, 61, 61),
              Color.fromARGB(255, 255, 0, 0)
            ]),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Lottie.network(
                      'https://lottie.host/6228628d-e190-4a66-84ab-041b1746097c/f926jLU6Cb.json',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 0),
              const Padding(
                padding: EdgeInsets.only(
                  top: 0,
                  bottom: 0,
                  left: 50,
                ),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Te Te KimBap ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "안녕하세요!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                      bottomLeft: Radius.circular(150),
                      bottomRight: Radius.circular(150),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 30, bottom: 10, left: 10, right: 10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Color.fromARGB(
                                                255, 179, 165, 165)))),
                                child: TextField(
                                  controller: emailController,
                                  decoration: const InputDecoration(
                                      hintText: "Email or Phone Number",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Color.fromARGB(
                                                255, 179, 165, 165)))),
                                child: TextField(
                                  controller: passwordController,
                                  decoration: const InputDecoration(
                                      hintText: "Password ",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text("Forgot PassWord?",
                            style: TextStyle(color: Colors.grey)),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            login(
                                emailController.text, passwordController.text);
                          },
                          child: Container(
                            height: 50,
                            margin: EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color.fromARGB(255, 233, 22, 7),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromARGB(255, 202, 163, 163),
                                    blurRadius: 20,
                                    offset: Offset(0, 10))
                              ],
                            ),
                            child: const Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
