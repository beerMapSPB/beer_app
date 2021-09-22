import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:mobile_app/resources/resources.dart';

class PlacesPageWidget extends StatefulWidget {
  final Color color;

  PlacesPageWidget(this.color);

  @override
  _PlacesPageWidgetState createState() => _PlacesPageWidgetState();
}

const String BIG_DESCRIPTION =
    'Мы молодой, локальный гриль-бар на площади Мужества с атмосферой домашнего уюта и вниманием к мелочам. Практически всё, что вас окружает в нашем баре, сделано нашими руками - со вкусом и без наедалова!';

class _PlacesPageWidgetState extends State<PlacesPageWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemExtent: 215,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.black.withOpacity(0.1)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 8,
                      offset: Offset(0, 2))
                ],
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.place, color: widget.color),
                            Text("пр-кт Просвещения, 35"),
                            Spacer(),
                            Text('Биршоп ● Бар')
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: const Divider(
                            thickness: 3,
                          ),
                        ),
                        Row(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(45.0),
                            child: Image(
                              image: AssetImage(AppImages.incidentBeerShop),
                              width: 80,
                              height: 80,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Text("Incident.beer.shop",
                                        style: new TextStyle(
                                            fontFamily: "Lucida",
                                            fontSize: 20.0,
                                            color: widget.color)),
                                  ),
                                  Text(
                                    BIG_DESCRIPTION,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 4),
                                    child: Wrap(
                                      spacing: 5,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            print("PHONE");
                                          },
                                          child: SvgPicture.asset(
                                            Logos.phone,
                                            height: 30,
                                            width: 30,
                                          ),
                                        ),
                                        SvgPicture.asset(Logos.instagram,
                                            height: 30, width: 30),
                                        SvgPicture.asset(Logos.vk,
                                            height: 35, width: 35),
                                        SvgPicture.asset(Logos.telegram,
                                            height: 35, width: 35),
                                        SvgPicture.asset(Logos.site,
                                            height: 35, width: 35),
                                      ],
                                    ),
                                  ),
                                  // SizedBox(height: 30)
                                ],
                              ),
                            ),
                          )
                        ]),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: const Divider(
                            thickness: 3,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.highlight_off,
                                size: 15, color: Colors.red),
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Text('Закрыто до 10:00'),
                            ),
                            Spacer(),
                            Image(
                              image: AssetImage(AppImages.stars35),
                              height: 15,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10.0),
                      onTap: () {
                        print("CLICK");
                      },
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
