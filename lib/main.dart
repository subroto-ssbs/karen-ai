
import 'package:flutter/material.dart';

void main() {
  runApp(const KarenApp());
}

class KarenApp extends StatelessWidget {
  const KarenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Karen AI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF070B18),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF00E5FF),
          secondary: Color(0xFF7C4DFF),
        ),
      ),
      home: const KarenHome(),
    );
  }
}

class KarenHome extends StatelessWidget {
  const KarenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'KAREN AI',
          style: TextStyle(
            color: Color(0xFF00E5FF),
            letterSpacing: 4,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            children: [
              const SizedBox(height: 35),
              Container(
                width: 170,
                height: 170,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: const RadialGradient(
                    colors: [
                      Color(0xFF174A78),
                      Color(0xFF101A38),
                      Color(0xFF070B18),
                    ],
                  ),
                  border: Border.all(
                    color: const Color(0xFF00E5FF),
                    width: 2,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF00E5FF).withOpacity(0.35),
                      blurRadius: 35,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.blur_on,
                  color: Color(0xFF00E5FF),
                  size: 100,
                ),
              ),
              const SizedBox(height: 28),
              const Text(
                'Hello, I am Karen.',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Your personal AI assistant',
                style: TextStyle(color: Colors.white60),
              ),
              const SizedBox(height: 35),
              _featureCard(
                Icons.chat_bubble_outline,
                'AI Chat',
                'Talk with Karen',
              ),
              _featureCard(
                Icons.mic_none,
                'Voice Assistant',
                'Voice features coming soon',
              ),
              _featureCard(
                Icons.psychology_outlined,
                'Memory',
                'Personal memory coming soon',
              ),
              _featureCard(
                Icons.language,
                'Web Search',
                'Smart search coming soon',
              ),
              const Spacer(),
              const Text(
                'KAREN AI • VERSION 0.1',
                style: TextStyle(
                  color: Colors.white38,
                  letterSpacing: 2,
                  fontSize: 11,
                ),
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }

  Widget _featureCard(IconData icon, String title, String subtitle) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF111A30),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: const Color(0xFF233B5B)),
      ),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFF00E5FF), size: 28),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.white54,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white38,
            size: 15,
          ),
        ],
      ),
    );
  }
}

