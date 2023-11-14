import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  String name, code, amount;
  IconData icon;
  late bool isInverted;
  int num;

  final _blackcolor = const Color(0xFF1F2123);

  CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.num,
  }) : isInverted = num % 2 == 0 ? false : true;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, num * -20),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            color: isInverted ? Colors.white : const Color(0xFF1F2123),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        color: isInverted ? _blackcolor : Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                            color: isInverted ? _blackcolor : Colors.white,
                            fontSize: 15),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                            color: isInverted
                                ? _blackcolor
                                : Colors.white.withOpacity(0.8),
                            fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 2.2,
                child: Transform.translate(
                  offset: const Offset(
                    -5,
                    15,
                  ),
                  child: Icon(
                    icon,
                    color: isInverted ? _blackcolor : Colors.white,
                    size: 88,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
