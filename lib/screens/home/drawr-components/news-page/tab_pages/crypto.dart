import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newsio/constants.dart';

var cryptoList = [
  {
    "name": "Bitcoin",
    "id": "BTC",
    "currentValue": 33461,
    "percentUpOrDown": 0.7,
    "isUp": false,
    "imageLocation": "assets/cryptoCurrencyLogos/bitcoin-btc-logo.svg"
  },
  {
    "name": "Ethereum",
    "id": "ETH",
    "currentValue": 1313,
    "percentUpOrDown": 0.9,
    "isUp": false,
    "imageLocation": "assets/cryptoCurrencyLogos/ethereum-eth-logo.svg"
  },
  {
    "name": "Tether",
    "id": "USDT",
    "currentValue": 0.99,
    "percentUpOrDown": 0.3,
    "isUp": true,
    "imageLocation": "assets/cryptoCurrencyLogos/tether-usdt-logo.svg"
  },
  {
    "name": "XRP",
    "id": "XRP",
    "currentValue": 0.42,
    "percentUpOrDown": 21.4,
    "isUp": false,
    "imageLocation": "assets/cryptoCurrencyLogos/xrp-xrp-logo.svg"
  }
];

class Crypto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(cryptoList[0]);
    final size = MediaQuery.of(context).size;
    return Scaffold(body: _cryptoJumbotronRow(cryptoList, size));
  }

  Widget _cryptoJumbotron(
      {Size size,
      String cryptoCurrencyName,
      String cryptoCurrencyId,
      dynamic currentValue,
      dynamic percentUpOrDown,
      bool isUp,
      String cryptoLogoLocation}) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(color: kPrimaryColor, blurRadius: 20)]),
          height: size.height * 0.15,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Text("${cryptoCurrencyName} ${cryptoCurrencyId}",
                      style: TextStyle(fontSize: 28))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("\$ ${currentValue}",
                              style: TextStyle(fontSize: 28)),
                          SizedBox(
                            width: 10,
                          ),
                          Text("(${percentUpOrDown})",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: isUp ? Colors.green : Colors.red)),
                          Icon(isUp ? Icons.arrow_upward : Icons.arrow_downward,
                              color: isUp ? Colors.green : Colors.red)
                        ],
                      )),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                    child: SvgPicture.asset(cryptoLogoLocation,
                        height: size.height * 0.08, width: size.height * 0.08),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ]);
  }

  Widget _cryptoJumbotronRow(List<Map> list, Size size) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: list.length,
      itemBuilder: (_, index) {
        final item = list[index];
        return _cryptoJumbotron(
            size: size,
            cryptoCurrencyId: item['id'],
            cryptoCurrencyName: item['name'],
            isUp: item['isUp'],
            currentValue: item['currentValue'],
            percentUpOrDown: item["percentUpOrDown"],
            cryptoLogoLocation: item["imageLocation"]);
      },
    );
  }
}
