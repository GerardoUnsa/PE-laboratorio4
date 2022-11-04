import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    IconCard(icon: "assets/icons/icon_3.svg"),

		    RichText(
	              text: TextSpan(
			children: [
			  TextSpan(
			    text: "Irrigaciones\n",
			    style: Theme.of(context).textTheme.headline4?.copyWith(
			      color: kTextColor, 
			      fontWeight: FontWeight.bold,
			      fontSize: 18,
			    ),
			  ),
			],
		      ),
		    ),

                    Spacer(),

		    RichText(
		      textAlign: TextAlign.center,
	              text: TextSpan(
			children: [
			  TextSpan(
			    text: "Lunes 22:4hrs\n",
			    style: TextStyle(
			      fontSize: 15,
			      color: kPrimaryColor,
			    ),
			  ),
			  TextSpan(
			    text: "Martes 22:15hrs\n",
			    style: TextStyle(
			      fontSize: 15,
			      color: kPrimaryColor,
			    ),
			  ),
			  TextSpan(
			    text: "Domingo 22:4hrs\n",
			    style: TextStyle(
			      fontSize: 15,
			      color: kPrimaryColor,
			    ),
			  ),
			],
		      ),
		    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 1,
              width: size.width * 0.65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.29),
                  ),
                ],
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/image_1.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
