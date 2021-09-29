import 'package:flutter/material.dart';
import 'package:mobile_app/resources/resources.dart';

class BeersPageWidget extends StatelessWidget {
  final Color color;

  const BeersPageWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemExtent: 160,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(
                          image: AssetImage(AppImages.beerExample),
                          width: 100,
                          height: 56,
                        ),
                        // Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Image(
                            image: AssetImage(AppImages.beerRate),
                            width: 92,
                            height: 30,
                          ),
                        ),
                      ],
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          // mainAxisSize: MainAxisSize.max,
                          // mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                  'Proprietor\'s Bourbon County Brand Stout (2014)',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: color,
                                  )),
                            ),
                            Text('Goose Island Beer Co.',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: color,
                                )),
                            Text('Stout - Imperial / Double',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                )),
                            // Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(
                                children: [
                                  Text('5,062 Ratings',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                      )),
                                  Spacer(),
                                  Text('14% ABV',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                      )),
                                  Spacer(),
                                  Text('N/A IBU',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Divider(
                  indent: 16,
                  endIndent: 16,
                  color: Colors.black,
                ),
              ],
            ),
          );
        });
  }
}
