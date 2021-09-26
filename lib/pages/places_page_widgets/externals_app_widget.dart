import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_app/resources/resources.dart';
import 'package:url_launcher/url_launcher.dart';

class ExternalAppsWidget extends StatelessWidget {
  const ExternalAppsWidget(
      {Key? key,
      String? phone,
      String? instagram,
      String? vk,
      String? telegram,
      String? web})
      : _phone = phone,
        _instagram = instagram,
        _vk = vk,
        _telegram = telegram,
        _web = web,
        super(key: key);

  final String? _phone;
  final String? _instagram;
  final String? _vk;
  final String? _telegram;
  final String? _web;

  void _openWebView(String url) async => await canLaunch(url)
      ? await launch(url,
          forceWebView: true, enableJavaScript: true, enableDomStorage: true)
      : throw 'Could not launch $url';

  void _openApp(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _makePhoneCall() async {
    final String resPhone = '$PHONE_URL$_phone';
    if (await canLaunch(resPhone)) {
      await launch(resPhone);
    } else {
      throw 'Could not launch $resPhone';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: _phone != null ? _makePhoneCall : null,
            child: _getIcon(
                SvgPicture.asset(
                  Logos.phone,
                  height: 30,
                  width: 30,
                ),
                _phone != null)),
        GestureDetector(
            onTap: _vk != null ? () => _openApp('$VK_URL/$_vk') : null,
            child: _getIcon(SvgPicture.asset(Logos.vk, height: 35, width: 35),
                _vk != null)),
        GestureDetector(
            onTap: _telegram != null
                ? () => _openApp('$TELEGRAM_URL/$_telegram')
                : null,
            child: _getIcon(
                SvgPicture.asset(Logos.telegram, height: 35, width: 35),
                _telegram != null)),
        GestureDetector(
            onTap: _web != null ? () => _openWebView('$WEB_URL/$_web') : null,
            child: _getIcon(SvgPicture.asset(Logos.site, height: 35, width: 35),
                _web != null)),
        GestureDetector(
            onTap: _instagram != null
                ? () => _openApp('$INSTAGRAM_URL/$_instagram')
                : null,
            child: _getIcon(
                SvgPicture.asset(Logos.instagram, height: 30, width: 30),
                _instagram != null)),
      ],
    );
  }

  Widget _getIcon(SvgPicture picture, bool isExist) {
    if (isExist) {
      return picture;
    } else {
      return ColorFiltered(colorFilter: GREYSCALE, child: picture);
    }
  }

  static const PHONE_URL = 'tel:';
  static const INSTAGRAM_URL = 'https://www.instagram.com';
  static const VK_URL = 'https://vk.com';
  static const TELEGRAM_URL = 'https://t.me';
  static const WEB_URL = 'https://';

  // https://www.woolha.com/tutorials/flutter-using-colorfiltered-widget-examples
  static const ColorFilter GREYSCALE = ColorFilter.matrix(<double>[
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
  ]);
}
