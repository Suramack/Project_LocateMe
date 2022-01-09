import 'package:flutter/material.dart';
import 'package:locate_me/screens/Male/Components/style.dart';

class MaleCard extends StatefulWidget {
  const MaleCard({Key? key}) : super(key: key);

  @override
  _MaleCardState createState() => _MaleCardState();
}

class _MaleCardState extends State<MaleCard> {
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
                                  'https://randomuser.me/api/portraits/men/40.jpg',
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
                                      style: maleLabelsStyle(),
                                    ),
                                    Text(
                                      'TempName',
                                      style: maleLabelFieldsStyle(),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'DoB: ',
                                      style: maleLabelsStyle(),
                                    ),
                                    Text(
                                      'dd-mm-yyyy',
                                      style: maleLabelFieldsStyle(),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'EmailId: ',
                                      style: maleLabelsStyle(),
                                    ),
                                    Text(
                                      'example.com',
                                      style: maleLabelFieldsStyle(),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Adress: ',
                                      style: maleLabelsStyle(),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'location ',
                                          style: maleLabelFieldsStyle(),
                                        ),
                                        Text(
                                          'City ',
                                          style: maleLabelFieldsStyle(),
                                        ),
                                        Text(
                                          'State ',
                                          style: maleLabelFieldsStyle(),
                                        ),
                                        Text(
                                          'Country ',
                                          style: maleLabelFieldsStyle(),
                                        ),
                                        Text(
                                          'PostalCode ',
                                          style: maleLabelFieldsStyle(),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Phone no ',
                                      style: maleLabelsStyle(),
                                    ),
                                    Text(
                                      '123456790 ',
                                      style: maleLabelFieldsStyle(),
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
