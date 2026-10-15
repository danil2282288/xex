import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MeditateScreen(),
    );
  }
}

class MeditateScreen extends StatelessWidget {
  const MeditateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'аниме стройка',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 15),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildChip('ха', isSelected: true),
                    _buildChip('хо'),
                    _buildChip('ху'),
                    _buildChip('хе'),
                    _buildChip('хя'),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 0, 136, 248),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    const Text(
                      'хохма',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Text('приют'),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        const SizedBox(width: 5),
                        const Text(
                          '67 домов',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 0, 149),
                            fontSize: 12,
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          'зайти',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              Row(
                children: [
                  Expanded(
                    child: _buildSmallCard(
                      'зепка',
                      'дя',
                      '6 домов',
                      const Color.fromARGB(255, 255, 238, 0),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: _buildSmallCard(
                      'кошкамальчик',
                      'каваи',
                      '10 домов',
                      const Color.fromARGB(255, 47, 0, 255),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: _buildSmallCard(
                      'бравл',
                      'эльпримо',
                      '5 домов',
                      const Color.fromARGB(255, 255, 0, 0),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: _buildSmallCard(
                      'кошкадевочка',
                      'даттебае семпай',
                      '3 домов',
                      const Color.fromARGB(255, 255, 0, 149),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildChip(String label, {bool isSelected = false}) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? const Color.fromARGB(255, 0, 255, 157) : const Color(0xFFE0F2F1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.white : const Color.fromARGB(255, 0, 255, 157),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildSmallCard(
    String title,
    String author,
    String info,
    Color color,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          author,
          style: const TextStyle(fontSize: 12, color: Colors.grey),
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            const SizedBox(width: 4),
            Text(info, style: const TextStyle(color: Color(0xFF9E9E9E), fontSize: 11)),
            const Spacer(),
            const Text(
              'газик',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
            ),
          ],
        ),
      ],
    );
  }
}