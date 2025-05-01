import 'package:flutter/material.dart';

/// [RowSocialNetworksWidget] displays social media platforms user can use to log in.
class RowSocialNetworksWidget extends StatelessWidget {
  const RowSocialNetworksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(0xff65AAEA),
          ),
          child: Image.asset('assets/images/login_images/facebook_icon.png'),
        ),

        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(0xff65AAEA),
          ),
          child: Image.asset('assets/images/login_images/instagram_icon.png'),
        ),

        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(0xff65AAEA),
          ),
          child: Image.asset('assets/images/login_images/google_plus_icon.png'),
        ),
      ],
    );
  }
}
