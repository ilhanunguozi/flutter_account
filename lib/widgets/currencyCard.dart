import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String currencyName, currencyCode, amount;
  final Color? currencyColor, cardBgColor;
  final IconData? currencyIcon;
  final bool isInverted;
  final int seq;


  const CurrencyCard({
    super.key,
    required this.currencyName,
    required this.currencyCode,
    required this.amount,
    this.currencyColor,
    this.cardBgColor,
    this.currencyIcon,
    required this.isInverted,
    required this.seq
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, 0+(seq*-20)),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
             color: cardBgColor
            ,borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //  카드들
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(currencyName, style: TextStyle(fontSize: 30, color: currencyColor, fontWeight: FontWeight.w500),),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Text(amount, style: TextStyle(color: currencyColor),),
                        SizedBox(
                          width: 5,
                        ),
                        Text(currencyCode, style: TextStyle(color: Colors.grey),),
                      ],
                    )
                  ],
                ),
              ),
              // 부모쪽 크기 영향없이 크기 조정
              Transform.scale(
                scale: 1.8,
                child: Transform.translate(
                  offset: Offset(-5,13)
                  ,child: Icon(currencyIcon,color: currencyColor, size:88,),),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
