import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget{

  const RegisterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed:() => context,
        style: ButtonStyle(
          side: MaterialStateProperty.all(BorderSide(
            color: Colors.grey.shade700, // Warna border
            width: 1.5, // Lebar border
          )),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.grey;
              }
              return const Color.fromARGB(255, 34, 37, 37);
            },
          ),
        ),
        child : Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(horizontal: 0),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Register',
                style : TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                )
              ),
            ],
          ),
        ),
      );        
  }
}