import 'package:flutter/material.dart';


class AddAddressAppBar extends StatelessWidget {
  const AddAddressAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          // InkWell(
          //   borderRadius: const BorderRadius.all(Radius.circular(24)),
          //   onTap: () => Navigator.pushNamed(context, ProfileScreen.route()),
          //   child: const CircleAvatar(
          //     backgroundImage: AssetImage('$kIconPath/me.png'),
          //     radius: 24,
          //   ),
          // ),
          Expanded(
            child: Text(
                  'Add Address',
                  style: TextStyle(
                    color: Color(0xFF212121),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
          ),
        ],
      ),
    );
  }
}
