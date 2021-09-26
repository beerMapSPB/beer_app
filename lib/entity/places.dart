import 'package:mobile_app/entity/place.dart';
import 'package:mobile_app/resources/resources.dart';

final List<Place> placesForTestes = [
  Place(
      name: "Incident.beer.shop",
      description:
          "Мы молодой, локальный гриль-бар на площади Мужества с атмосферой домашнего !",
      adress: "пр-кт Просвещения, 35",
      type: "Биршоп ● Бар",
      rate: 2.0,
      logo: AppImages.incidentBeerShop,
      externalLinks: PlaceExternalLinks(
          phone: '+7 (931) 398-85-67',
          instagram: 'incident.beer.shop',
          vk: 'beerbagspb',
          web: 'anime.anidub.life/anime',
          telegram: 'caramella_astra')),
  Place(
      name: "Beer Geek",
      description: "Магазин - бар крафтового пива.",
      adress: "Юнтоловский проспект, 45 к1",
      type: "Биршоп",
      rate: 2.0,
      logo: AppImages.incidentBeerShop,
      externalLinks: PlaceExternalLinks(
          instagram: 'beer.bag',
          web: 'untappd.com/v/beer-geek/9945496',
          telegram: 'caramella_astra')),
  Place(
      name: "Beer Bag",
      description: "Магазин - бар крафтового пива.",
      adress: "26-я линия Васильевского острова, 7",
      type: "Биршоп ● Бар",
      rate: 2.0,
      logo: AppImages.incidentBeerShop,
      externalLinks: PlaceExternalLinks(telegram: 'beerbagchat')),
  Place(
      name: "CRAFT BEER SHOP",
      description: "Разливное и бутылочное крафтовое пиво от лучших пивоварен.",
      adress: "Московский проспект, 1",
      type: "Биршоп",
      rate: 2.0,
      logo: AppImages.incidentBeerShop,
      externalLinks: PlaceExternalLinks(
          phone: '89213652675',
          instagram: 'craftbeerspb',
          vk: 'craftbeershop',
          web: 'untappd.com/v/craft-beer-shop/3856103')),
  Place(
      name: "Ohta Rill Brewery",
      description: "Тапрум пивоварни Ohta Rill. Пицца, кухня.",
      adress: "Стародеревенская улицуа, 13",
      type: "Бар",
      rate: 2.0,
      logo: AppImages.incidentBeerShop,
      externalLinks: PlaceExternalLinks(
          web: "taproom.ohtarill.com", instagram: "ohtarill_taproom")),
  Place(
      name: "Woodman bar&shop",
      description: "Бар с крафтовым пивом, закусками и настольным футболом.",
      adress: "Гжатская, 22 к2",
      type: "Бар111",
      rate: 2.0,
      logo: AppImages.incidentBeerShop,
      externalLinks: PlaceExternalLinks()),
];
