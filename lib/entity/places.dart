import 'package:mobile_app/entity/place.dart';
import 'package:mobile_app/resources/resources.dart';

import 'package:latlong2/latlong.dart';

final List<Place> placesForTestes = [
  Place(
      name: "Incident.beer.shop",
      description:
          "Мы молодой, локальный гриль-бар на площади Мужества с атмосферой домашнего !",
      adress: "пр-кт Просвещения, 35",
      type: "Биршоп ● Бар",
      rate: 2.0,
      logo: AppImages.incidentBeerShop,
      latLng: LatLng(59.90011730629197, 30.24267431132985),
      interior: AppImages.interior,
      externalLinks: PlaceExternalLinks(
          phone: '+7 (931) 398-85-67',
          instagram: 'incident.beer.shop',
          vk: 'beerbagspb',
          web: 'www.anime.anidub.life/anime',
          telegram: 'caramella_astra')),
  Place(
      name: "Beer Geek",
      description: "Магазин - бар крафтового пива.",
      adress: "Юнтоловский проспект, 45 к1",
      type: "Биршоп",
      rate: 2.0,
      logo: AppImages.incidentBeerShop,
      latLng: LatLng(59.92668059797074, 30.26020849806329),
      externalLinks: PlaceExternalLinks(
          instagram: 'beer.bag',
          web: 'www.untappd.com/v/beer-geek/9945496',
          telegram: 'caramella_astra')),
  Place(
      name: "Beer Bag",
      description: "Магазин - бар крафтового пива.",
      adress: "26-я линия Васильевского острова, 7",
      type: "Биршоп ● Бар",
      rate: 2.0,
      logo: AppImages.incidentBeerShop,
      latLng: LatLng(59.960168318953464, 30.327069628585416),
      externalLinks: PlaceExternalLinks(telegram: 'beerbagchat')),
  Place(
      name: "CRAFT BEER SHOP",
      description: "Разливное и бутылочное крафтовое пиво от лучших пивоварен.",
      adress: "Московский проспект, 1",
      type: "Биршоп",
      rate: 2.0,
      logo: AppImages.incidentBeerShop,
      latLng: LatLng(59.90098698707921, 30.30182810749434),
      externalLinks: PlaceExternalLinks(
          phone: '89213652675',
          instagram: 'craftbeerspb',
          vk: 'craftbeershop',
          web: 'www.untappd.com/v/craft-beer-shop/3856103')),
  Place(
      name: "Ohta Rill Brewery",
      description: "Тапрум пивоварни Ohta Rill. Пицца, кухня.",
      adress: "Стародеревенская улицуа, 13",
      type: "Бар",
      rate: 2.0,
      logo: AppImages.incidentBeerShop,
      latLng: LatLng(59.92432176999012, 30.329943794362826),
      externalLinks: PlaceExternalLinks(
          web: "www.taproom.ohtarill.com", instagram: "ohtarill_taproom")),
  Place(
      name: "Woodman bar&shop",
      description: "Бар с крафтовым пивом, закусками и настольным футболом.",
      adress: "Гжатская, 22 к2",
      type: "Бар111",
      rate: 2.0,
      logo: AppImages.incidentBeerShop,
      latLng: LatLng(59.928418296110344, 30.338629586226176),
      externalLinks: PlaceExternalLinks()),
];
