import 'package:flutter/material.dart';
import 'package:lab4/constants.dart';

import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          TitleAndPrice(title: "Areca", country: "10/13/2022"),
          SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 3,
                height: 50,
                child: TextButton(
		  style: ButtonStyle(
		    backgroundColor: MaterialStatePropertyAll<Color>(kPrimaryColor),
		    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
		      RoundedRectangleBorder(
			borderRadius: BorderRadius.circular(20.0),
		      ),
		    ),
		  ),
                  onPressed: () {},
                  child: Text(
                    "Regar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: size.width / 1.5,
                height: 50,
                child: TextButton(
		  style: ButtonStyle(
		    backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
		    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
		      RoundedRectangleBorder(
			borderRadius: BorderRadius.circular(20.0),
		      ),
		    ),
		  ),
                  onPressed: () {},
                  child: Text(
                    "Eliminar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
