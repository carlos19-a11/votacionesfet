import 'package:flutter/material.dart';
import 'package:votacionfet/servicios/auth.dart';
import 'package:votacionfet/views/home.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Image.asset(
              'assets/Logo.png',
              height: 320,
              width: 350,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25, bottom: 20),
              child: Text(
                'LOGUIN NOW',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
              ),
            ),
            const Text('ingresa tus datos'),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xFFF1F1F1),
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextFormField(
                  controller: email,
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: 'Usuario'),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xFFF1F1F1),
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextFormField(
                  controller: password,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Contraseña',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 20),
              child: Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {},
                  child: const Text(
                    'Olvodaste tu contraseña',
                    style: TextStyle(color: Color(0xFFDA3340)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // loguin button
            Row(
              children: [
                Expanded(
                    child: MaterialButton(
                  color: const Color(0xFFEC515D),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  onPressed: () {
                    signIn(email.text, password.text, context);
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const HomePage()),
                    // );
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Text(
                      'Ingresar',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ),
                ))
              ],
            ),
            // resgistro button
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("¿No tienes una cuenta?"),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Registro',
                      style: TextStyle(color: Color(0xFFDA3340)),
                    ))
              ],
            )
          ],
        ),
      )),
    );
  }
}
