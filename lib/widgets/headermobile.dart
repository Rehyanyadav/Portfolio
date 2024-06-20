import 'package:flutter/material.dart';
import 'package:myportfolio/styles/style.dart';
import 'package:myportfolio/widgets/site_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onmenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onmenuTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      margin: EdgeInsets.fromLTRB(40, 5, 20, 5),
      decoration: KHederDecoration,
      child: Row(
        children: [
          SiteLogo(
            onTap: onLogoTap,
          ),
          const Spacer(),
          IconButton(
            onPressed: onmenuTap,
            icon: const Icon(Icons.menu),
          ),
          const SizedBox(
            width: 15,
          )
        ],
      ),
    );
  }
}
