import 'package:contact/widgets/button.dart';
import 'package:contact/widgets/currencyCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Player {
  String? name;
  Player();
}

void main() {
  var jklee = Player();

  runApp(App());
}

class App extends StatelessWidget {
  App ({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Flexible(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Text('--',style: TextStyle(color: Colors.white)),
                          // Text('--',style: TextStyle(color: Colors.white)),
                        ],
                      ), flex:5),
                      Flexible(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Hey, jklee',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w800
                              )
                          ),
                          Text('Welcome jklee',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize:14
                            ),
                          ),
                        ],
                      ), flex:5),
                    ],
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Text('Total Balance',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8)
                        , fontSize: 22
                    ),),
                  SizedBox(
                    height: 10,
                  ),
                  Text('\$5 194 195',
                    style: TextStyle(
                        color: Colors.white
                        , fontSize: 38
                        , fontWeight: FontWeight.w500
                    ),),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button(text:'Transfer', bgColor:Colors.amber, textColor:Colors.black),
                      Button(text:'Request', bgColor:Colors.white10, textColor:Colors.white),
                    ],
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: Text('Wallet', style: TextStyle(fontSize: 38, color: Colors.white, fontWeight: FontWeight.w500),),flex: 5,),
                      Flexible(child: Text('View All', style: TextStyle(fontSize: 14, color: Colors.white.withOpacity(0.7), fontWeight: FontWeight.w500),),flex: 5,)
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  // 카드 목록 영역
                  Column(
                    children: [
                      // 카드영역
                      CurrencyCard(
                        currencyName: 'Euro',
                        currencyCode: 'EUR',
                        amount: '6 482',
                        cardBgColor: Colors.white12,
                        currencyColor: Colors.white,
                        currencyIcon: Icons.euro_rounded,
                        isInverted : false,
                        seq: 0,
                      ),
                      CurrencyCard(
                        currencyName: 'WOW',
                        currencyCode: 'WON',
                        amount: '827,029,128,124',
                        cardBgColor: Colors.white,
                        currencyColor: Colors.black,
                        currencyIcon: Icons.money,
                        isInverted : true,
                        seq : 1,
                      ),
                      CurrencyCard(
                        currencyName: 'Doller',
                        currencyCode: 'USD',
                        amount: '22,124',
                        cardBgColor: Colors.black,
                        currencyColor: Colors.white,
                        currencyIcon: Icons.attach_money_rounded,
                        isInverted : true,
                        seq : 2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )

        )

    );
  }

}
