import 'package:flutter/material.dart';
import 'package:locate_me/screens/Female/Components/style.dart';

class FemaleCard extends StatefulWidget {
  const FemaleCard({Key? key}) : super(key: key);

  @override
  _FemaleCardState createState() => _FemaleCardState();
}

class _FemaleCardState extends State<FemaleCard> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: screenSize.height * 0.25,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400,
                            blurRadius: 3,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 3,
                                      color: Colors.grey.shade700,
                                    )
                                  ]),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.network(
                                  'https://randomuser.me/api/portraits/women/40.jpg',
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const VerticalDivider(
                              width: 10,
                              color: Colors.blue,
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Name: ',
                                      style: femaleLabelFieldsStyle(),
                                    ),
                                    Text(
                                      'TempName',
                                      style: femaleLabelFieldsStyle(),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'DoB: ',
                                      style: femaleLabelsStyle(),
                                    ),
                                    Text(
                                      'dd-mm-yyyy',
                                      style: femaleLabelFieldsStyle(),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'EmailId: ',
                                      style: femaleLabelsStyle(),
                                    ),
                                    Text(
                                      'example.com',
                                      style: femaleLabelFieldsStyle(),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Adress: ',
                                      style: femaleLabelsStyle(),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'location ',
                                          style: femaleLabelFieldsStyle(),
                                        ),
                                        Text(
                                          'City ',
                                          style: femaleLabelFieldsStyle(),
                                        ),
                                        Text(
                                          'State ',
                                          style: femaleLabelFieldsStyle(),
                                        ),
                                        Text(
                                          'Country ',
                                          style: femaleLabelFieldsStyle(),
                                        ),
                                        Text(
                                          'PostalCode ',
                                          style: femaleLabelFieldsStyle(),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Phone no ',
                                      style: femaleLabelsStyle(),
                                    ),
                                    Text(
                                      '123456790 ',
                                      style: femaleLabelFieldsStyle(),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              separatorBuilder: (context, index) => const SizedBox(
                    height: 30,
                  ),
              itemCount: 6),
        )
      ],
    );
  }
}
