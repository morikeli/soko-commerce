import 'package:e_commerce/constants/colors.dart';
import 'package:flutter/material.dart';


class SearchForm extends StatelessWidget {
  const SearchForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .6,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(.1),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: TextField(
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: 'Search products',
          prefixIcon: Icon(Icons.search),
        ),
        onChanged: (value) {
          
        },
      ),
    );
  }
}
