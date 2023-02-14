import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final String name;
  final String image;

  const MovieCard({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(image),
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.red,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  )
                ]),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          name,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
        )
      ],
    );
  }
}
