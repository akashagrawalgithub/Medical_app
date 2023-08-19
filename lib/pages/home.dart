import "package:flutter/material.dart";
import 'package:medical_app/utils/category_card.dart';

import '../utils/doctor_card.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 15, 15, 0),
        child: Column(
          children: [
            // app bar section
            const Row(
              children: [
                // name of the user
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello,",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Roboto",
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      "Akash Agrawal",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto",
                      ),
                    ),
                  ],
                ),
                Spacer(),
                // profile picture
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      "https://www.samyogdhital.com.np/static/media/avatar.e7066339.png"),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              padding: const EdgeInsets.fromLTRB(13, 8, 10, 0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(246, 204, 148, 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // nurse image
                  Container(
                    height: 100,
                    width: 100,
                    child: Lottie.network(
                        "https://lottie.host/54112870-5c74-41f9-aad0-ebfc23ae64b1/CRCCQPP2cF.json"),
                  ),
                  SizedBox(width: 10),
                  // information
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "How do you feel?",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "Fill out your medical card right now",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple.shade400,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Center(
                            child: Text(
                              "Get started",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              decoration: BoxDecoration(
                color: Color(0xFFEDE7F6),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "How can we help you?",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0x87838282),
                  ),
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0x87838282),
                  ),
                ),
              ),
            ),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                children: [
                  catergory_card(
                    name: "Dentist",
                    iconimagepath: "images/tooth.png",
                  ),
                  catergory_card(
                    name: "Surgeon",
                    iconimagepath: "images/surgeon.png",
                  ),
                  catergory_card(
                    name: "Medicine",
                    iconimagepath: "images/medicine.png",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Doctors List",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See All",
                    style: TextStyle(
                      color: Colors.deepPurple.shade400,
                      fontSize: 15,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 5),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  doctorCard(
                    doctorimage:
                        "https://www.advinohealthcare.com/wp-content/uploads/2020/08/shutterstock_155685458.jpg",
                    doctorname: "Dr. Akash Agrawal",
                    designation: "Dentist , MD",
                  ),
                  doctorCard(
                    doctorimage:
                        "https://videohive.img.customer.envatousercontent.com/files/c4e1a9cd-9bef-435a-a529-e8ecfdc6350e/inline_image_preview.jpg?auto=compress%2Cformat&fit=crop&crop=top&max-h=8000&max-w=590&s=4f8badfad189f127617a0d558addb0a6",
                    doctorname: "Dr. Komal Singh",
                    designation: "Surgeon , MD",
                  ),
                  doctorCard(
                    doctorimage:
                        "https://www.nicepng.com/png/detail/254-2543791_indian-male-medical-students.png",
                    doctorname: "Mr. Ankit anand",
                    designation: "Medicine , B.Pharma",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
