import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:weather_app_with_flutter/constants/constants.dart';

class TodayInformation extends StatelessWidget {
  const TodayInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Constants.kContentColor,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Today',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Sat, 3 Aug',
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: '30', style: TextStyle(fontSize: 72)),
                    TextSpan(
                        text: '°C',
                        style: TextStyle(
                            fontSize: 32,
                            color: Constants.kPrimaryColor)),
                  ],
                ),
              ),
              Image.asset(
                'assets/images/sun-storm.png',
                width: 150,
              ),
            ],
          ),
          const Row(
            children: [
              Icon(
                Iconsax.location,
                color: Constants.kPrimaryColor,
              ),
              SizedBox(
                width: 5,
              ),
              Text('Sumgait,Azerbaijan'),
            ],
          )
        ],
      ),
    );
  }
}
