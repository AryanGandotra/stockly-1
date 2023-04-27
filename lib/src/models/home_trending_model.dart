import 'package:flutter/material.dart';

class HomeFavModel extends StatefulWidget {
  final String ticker;
  final String tickerName;
  final String tickerImage;
  final String tickerCurrentPrice;
  final String tickerChangePercent;
  // final Color changePercentColor;
  final tickerGraph;

  const HomeFavModel({
    super.key,
    required this.ticker,
    required this.tickerName,
    required this.tickerImage,
    required this.tickerCurrentPrice,
    required this.tickerChangePercent,
    // required this.changePercentColor,
    this.tickerGraph,
  });

  @override
  State<HomeFavModel> createState() => _HomeFavModelState();
}

class _HomeFavModelState extends State<HomeFavModel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 190,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Image.network(
                widget.tickerImage,
                width: 30,
                height: 30,
              ),
              // space
              const Spacer(
                flex: 1,
              ),
              Text(
                widget.tickerGraph,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          Row(
            children: [
              Text(
                widget.tickerName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Text(
                widget.tickerCurrentPrice,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                widget.ticker,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Text(
                '(${widget.tickerChangePercent}%)',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}