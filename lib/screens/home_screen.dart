import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:weather_app_with_flutter/constants/constants.dart';
import 'package:weather_app_with_flutter/screens/components/today_info.dart';
import 'package:weather_app_with_flutter/screens/intro_screen.dart';
import 'package:weather_app_with_flutter/screens/widgets/weather_info.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String currentType = 'Today';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: ((context) => const IntroScreen()),
                ),
              );
            },
            icon: const Icon(Icons.arrow_back_ios_rounded)),
        title: const Text(
          'Weather Forecast App',
          style: TextStyle(fontSize: 14),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const TodayInformation(),
              const SizedBox(
                height: 20,
              ),
              days(),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 160,
                child: ListView(
                  shrinkWrap: true,
                  primary: false,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    WeatherInfo(
                      image: 'assets/images/cloud-rain-sun.png',
                      temp: 16,
                      time: '12 AM',
                    ),
                    WeatherInfo(
                      image: 'assets/images/cloud-rain.png',
                      temp: 10,
                      time: '10 PM',
                    ),
                    WeatherInfo(
                      image: 'assets/images/cloud-sun.png',
                      temp: 33,
                      time: '15 AM',
                    ),
                    WeatherInfo(
                      image: 'assets/images/cloud-zap.png',
                      temp: 12,
                      time: '17 AM',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              differentCountry(
                  'Today, partly cloudy, temperature 25°C - Istanbul, Turkey'),
              differentCountry(
                  'Tomorrow, rainy, temperature 18°C - New York City, USA'),
              differentCountry(
                  'Thursday, sunny, temperature 22°C, temperature 25°C - Paris, France'),
              differentCountry(
                  'Saturday, windy, temperature 28°C - Tokyo, Japan'),
              differentCountry(
                  'Friday, partly cloudy, temperature 23°C - Sydney, Australia'),
              differentCountry(
                  'Today, partly cloudy, temperature 25°C - Istanbul, Turkey'),
              differentCountry(
                  'Tomorrow, rainy, temperature 18°C - New York City, USA'),
              differentCountry(
                  'Thursday, sunny, temperature 22°C, temperature 25°C - Paris, France'),
              differentCountry(
                  'Saturday, windy, temperature 28°C - Tokyo, Japan'),
              differentCountry(
                  'Friday, partly cloudy, temperature 23°C - Sydney, Australia'),
              differentCountry(
                  'Today, partly cloudy, temperature 25°C - Istanbul, Turkey'),
              differentCountry(
                  'Tomorrow, rainy, temperature 18°C - New York City, USA'),
              differentCountry(
                  'Thursday, sunny, temperature 22°C, temperature 25°C - Paris, France'),
              differentCountry(
                  'Saturday, windy, temperature 28°C - Tokyo, Japan'),
              differentCountry(
                  'Friday, partly cloudy, temperature 23°C - Sydney, Australia'),
            ],
          ),
        ),
      ),
    );
  }

  ListTile differentCountry(String currentWeatherAndCountry) {
    return ListTile(
      tileColor: Constants.kContentColor,
      leading: const Icon(Iconsax.activity),
      title: Text(
        currentWeatherAndCountry,
        style: const TextStyle(fontSize: 15),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
      ),
      iconColor: Constants.kPrimaryColor,
    );
  }

  Row days() {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              currentType = 'Today';
            });
          },
          child: Text(
            'Today',
            style: TextStyle(
                color: currentType == 'Today'
                    ? Constants.kPrimaryColor
                    : Colors.white),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              currentType = 'Tomorrow';
            });
          },
          child: Text(
            'Tomorrow',
            style: TextStyle(
                color: currentType == 'Tomorrow'
                    ? Constants.kPrimaryColor
                    : Colors.white),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              currentType = 'Next 7 days';
            });
          },
          child: Text(
            'Next 7 days',
            style: TextStyle(
                color: currentType == 'Next 7 days'
                    ? Constants.kPrimaryColor
                    : Colors.white),
          ),
        ),
      ],
    );
  }
}
