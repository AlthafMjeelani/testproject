import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testproject/controller/home_controller.dart';
import 'package:testproject/view/widget/button_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.height / 2,
                  decoration: const BoxDecoration(
                      border: Border(right: BorderSide(width: 5))),
                  child: Column(
                    children: [
                      ButtonWidget(
                        index: 0,
                        text: 'Form A',
                        onPressed: () {
                          context.read<HomeController>().setIndex(0);
                        },
                      ),
                      ButtonWidget(
                        index: 1,
                        text: 'Form B',
                        onPressed: () {
                          context.read<HomeController>().setIndex(1);
                        },
                      ),
                      ButtonWidget(
                        index: 2,
                        text: 'Form C',
                        onPressed: () {
                          context.read<HomeController>().setIndex(2);
                        },
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(width: 3))),
                    child:
                        Consumer(builder: (context, HomeController value, _) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: ButtonWidget(
                                  index: 3,
                                  fontSize: 10,
                                  text: 'Home',
                                  onPressed: () {
                                    context.read<HomeController>().setIndex(3);
                                  },
                                ),
                              ),
                              Expanded(
                                child: ButtonWidget(
                                  index: 4,
                                  text: 'Form',
                                  onPressed: () {
                                    context.read<HomeController>().setIndex(4);
                                  },
                                ),
                              ),
                              Expanded(
                                child: ButtonWidget(
                                  index: 5,
                                  text: 'Career',
                                  onPressed: () {
                                    context.read<HomeController>().setIndex(5);
                                  },
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 5,
                            decoration: const BoxDecoration(
                                border: Border(bottom: BorderSide(width: 5))),
                          ),
                          Expanded(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              color: value.selectedIndex == 0
                                  ? Colors.blue
                                  : value.selectedIndex == 1
                                      ? Colors.yellow
                                      : value.selectedIndex == 2
                                          ? Colors.black
                                          : value.selectedIndex == 4
                                              ? Colors.orange
                                              : value.selectedIndex == 5
                                                  ? Colors.red
                                                  : value.selectedIndex == 6
                                                      ? const Color.fromARGB(
                                                          255, 42, 0, 166)
                                                      : value.selectedIndex == 7
                                                          ? const Color.fromARGB(
                                                              255, 60, 130, 188)
                                                          : value.selectedIndex ==
                                                                  8
                                                              ? const Color
                                                                  .fromARGB(255,
                                                                  23, 86, 139)
                                                              : Colors.white,
                              child: value.selectedIndex != 3
                                  ? Center(
                                      child: Text(
                                        ' ${value.selectedIndex == 0 ? 'Form A' : value.selectedIndex == 1 ? 'Form B' : value.selectedIndex == 2 ? 'Form C' : value.selectedIndex == 4 ? 'Form Page' : value.selectedIndex == 5 ? 'Career Page' : value.selectedIndex == 6 ? 'Form D' : value.selectedIndex == 7 ? 'Form E' : value.selectedIndex == 8 ? 'Form F' : ''}',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                            color: value.selectedIndex == 2
                                                ? Colors.white
                                                : Colors.black),
                                      ),
                                    )
                                  : value.issubmit
                                      ? const Center(
                                          child: Text(
                                            'Successfully Submited',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        )
                                      : Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: [
                                              const Text(
                                                'Personal Details',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  ButtonWidget(
                                                    index: 5,
                                                    text: 'First Name',
                                                    onPressed: () {},
                                                  ),
                                                  ButtonWidget(
                                                    index: 5,
                                                    text: 'First Name',
                                                    onPressed: () {},
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  ButtonWidget(
                                                    index: 5,
                                                    text: 'First Name',
                                                    onPressed: () {},
                                                  ),
                                                  ButtonWidget(
                                                    index: 5,
                                                    text: 'First Name',
                                                    onPressed: () {},
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  ButtonWidget(
                                                    index: 5,
                                                    text: 'First Name',
                                                    onPressed: () {},
                                                  ),
                                                  ButtonWidget(
                                                    index: 5,
                                                    text: 'First Name',
                                                    onPressed: () {},
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              value.isNext
                                                  ? Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        ButtonWidget(
                                                          index: 5,
                                                          text: 'Back',
                                                          onPressed: () {
                                                            context
                                                                .read<
                                                                    HomeController>()
                                                                .setNext(false);
                                                          },
                                                        ),
                                                        ButtonWidget(
                                                          index: 5,
                                                          text: 'Submit',
                                                          onPressed: () {
                                                            context
                                                                .read<
                                                                    HomeController>()
                                                                .setsubmit(
                                                                    true);
                                                          },
                                                        ),
                                                      ],
                                                    )
                                                  : ButtonWidget(
                                                      index: 5,
                                                      text: 'Next',
                                                      onPressed: () {
                                                        context
                                                            .read<
                                                                HomeController>()
                                                            .setNext(true);
                                                      },
                                                    ),
                                            ],
                                          ),
                                        ),
                            ),
                          ),
                        ],
                      );
                    }),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.height / 2,
                  decoration: const BoxDecoration(
                      border: Border(left: BorderSide(width: 5))),
                  child: Column(
                    children: [
                      ButtonWidget(
                        index: 6,
                        text: 'Form D',
                        onPressed: () {
                          context.read<HomeController>().setIndex(6);
                        },
                      ),
                      ButtonWidget(
                        index: 7,
                        text: 'Form E',
                        onPressed: () {
                          context.read<HomeController>().setIndex(7);
                        },
                      ),
                      ButtonWidget(
                        index: 8,
                        text: 'Form F',
                        onPressed: () {
                          context.read<HomeController>().setIndex(8);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 5,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(width: 5))),
            ),
          ],
        ),
      ),
    );
  }
}
