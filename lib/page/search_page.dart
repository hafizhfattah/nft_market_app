// ignore_for_file: unused_local_variable, unused_import

import 'dart:ui';

import 'package:nft_shopui/page/shop_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldbg,
      appBar: AppBar(
        backgroundColor: scaffoldbg,
        title: Text(
          "Search Collection",
          style: GoogleFonts.montserrat(
            color: white,
            letterSpacing: 1,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 6.0,
                  horizontal: 12.0,
                ),
                decoration: const BoxDecoration(
                  color: darkbg,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        CupertinoIcons.search,
                        color: white,
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        style: font,
                        autofocus: false,
                        cursorWidth: 2,
                        cursorColor: white,
                        initialValue: null,
                        decoration: InputDecoration.collapsed(
                            filled: true,
                            fillColor: Colors.transparent,
                            hintText: "Search Best Collections?",
                            hintStyle: font),
                        onChanged: (value) {},
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: link.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    alignment: Alignment.bottomLeft,
                    height: 100.0,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage('${link[index]}'),
                          fit: BoxFit.cover),
                      color: white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(
                          16.0,
                        ),
                        bottomRight: Radius.circular(
                          16.0,
                        ),
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 5.0,
                          sigmaY: 5.0,
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          alignment: Alignment.centerLeft,
                          height: 50,
                          color: Colors.white.withOpacity(0),
                          child: Text(
                            '${name[index]}',
                            style: font,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      )),
    );
  }
}
