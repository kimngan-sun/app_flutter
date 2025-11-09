import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TProductPriceText extends StatelessWidget {
  const TProductPriceText({
    super.key,
    required this.price,
    this.isLarge = false,
    this.maxLines = 1,
    this.lineThrough = false,
  });

  final double price;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;

  String formatCurrency(double amount) {
    final formatter = NumberFormat.currency(
      locale: 'vi_VN',
      symbol: '₫',
    );
    return formatter.format(amount);
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      formatCurrency(price),
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? Theme.of(context)
              .textTheme
              .headlineMedium!
              .apply(decoration: lineThrough ? TextDecoration.lineThrough : null)
          : Theme.of(context)
              .textTheme
              .titleLarge!
              .apply(decoration: lineThrough ? TextDecoration.lineThrough : null),
    );
  }
}
