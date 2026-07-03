import 'package:flutter/material.dart';

void main() {
  runApp(const FreeFireGuideApp());
}

class FreeFireGuideApp extends StatelessWidget {
  const FreeFireGuideApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Free Fire Headshot Guide',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.orange,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const CoverPage(),
        '/home': (context) => const GuideHomePage(),
      },
    );
  }
}

class CoverPage extends StatelessWidget {
  const CoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.orange.shade900, Colors.black87],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.my_location,
                    size: 100,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 32),
                  const Text(
                    'FREE FIRE\nHEADSHOT GUIDE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 2,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'የሄድሾት ዋና መመሪያ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  const SizedBox(height: 48),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 48,
                        vertical: 16,
                      ),
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: const Text('START / ጀምር'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class GuideHomePage extends StatelessWidget {
  const GuideHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guide Chapters / ምዕራፎች'),
        centerTitle: true,
        backgroundColor: Colors.orange.shade900,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ChapterCard(
            titleEn: 'Chapter 1: Sensitivity Settings',
            titleAm: 'ምዕራፍ 1፡ የሴንሲቲቪቲ ቅንብሮች',
            contentEn:
                'Sensitivity is the foundation of every headshot. If it\'s too low, you can\'t drag fast enough. If it\'s too high, you miss the head.\n\nRecommended Settings:\nGeneral: 95 – 100\nRed Dot: 90 – 100\n2x Scope: 85 – 95\n4x Scope: 75 – 85\nSniper Scope: 50 – 65',
            contentAm:
                'ሴንሲቲቪቲ የሄድሾት ሁሉ መሠረት ነው። በጣም ዝቅተኛ ከሆነ ቁልፉን በፍጥነት ለመሳብ ይከብዳል፤ በጣም ከፍተኛ ከሆነ ደግሞ ከራስ በላይ ይበራል።\n\nየሚመከሩ ቅንብሮች:\nGeneral: 95 – 100\nRed Dot: 90 – 100\n2x Scope: 85 – 95\n4x Scope: 75 – 85\nSniper Scope: 50 – 65',
          ),
          ChapterCard(
            titleEn: 'Chapter 2: Custom HUD (Button Layout)',
            titleAm: 'ምዕራፍ 2፡ የቁልፎች አቀማመጥ',
            contentEn:
                'Your button size and position determine how much space you have to swipe up.\n\nFire Button Size: Keep it between 40% and 55%.\nFire Button Position: Place it slightly lower on the right side.',
            contentAm:
                'የተኩስ ቁልፍህ መጠንና ቦታ ጣትህን ወደ ላይ ለማንሸራተት ምን ያህል ቦታ እንዳለህ ይወስናል።\n\nመጠን: ከ40% እስከ 55%።\nቦታ: ለጣትህ ወደ ላይ መሳቢያ ሰፊ ቦታ እንዲሰጥህ ዝቅ አድርገህ አስቀምጠው።',
          ),
          ChapterCard(
            titleEn: 'Chapter 3: The Drag Headshot Technique',
            titleAm: 'ምዕራፍ 3፡ የድራግ ቴክኒክ',
            contentEn:
                'Don\'t just press the fire button—flick it upward!\n\nClose Range: Drag the button very fast and hard.\nLong Range: Drag the button gently and slowly.\nRotation Drag: If the enemy moves sideways, drag the button in a "C" shape toward their direction.',
            contentAm:
                'የተኩስ ቁልፉን ዝም ብለህ አትጫነው፤ ወደ ላይ በፍጥነት ሳብ አድርገው!\n\nለቅርብ ርቀት: በኃይል እና በፍጥነት ወደ ላይ ሳበው።\nለሩቅ ርቀት: በቀስታ እና በጥንቃቄ ወደ ላይ ሳበው።\nለሚሮጥ ጠላት: ጠላት ወደ ጎን የሚሮጥ ከሆነ ቁልፉን በ "C" ቅርጽ አዙረህ ሳበው።',
          ),
          ChapterCard(
            titleEn: 'Chapter 4: Crosshair Positioning',
            titleAm: 'ምዕራፍ 4፡ የዒላማ አቀማመጥ',
            contentEn:
                'Keep your crosshair at chest level or slightly beside the enemy\'s shoulder while it\'s still white. When you drag, the auto-aim will snap directly to the head.',
            contentAm:
                'ዒላማህ ሁልጊዜ በደረት ደረጃ ወይም በጠላት ትከሻ አጠገብ (ነጭ ሆኖ) እንዲቆይ አድርግ። ወደ ላይ ስትስበው በቀጥታ ከደረት ተነስቶ ራስ ላይ ያርፋል።',
          ),
          ChapterCard(
            titleEn: 'Chapter 5: Training Routine',
            titleAm: 'ምዕራፍ 5፡ የልምምድ ጊዜ',
            contentEn:
                'Settings alone won\'t make you a pro. You need muscle memory.\n\nSpend 20 mins daily in the Training Ground.\nPractice on the standing dummy until you hit 10 red headshots in a row.',
            contentAm:
                'ቅንብር ብቻውን ፕሮ አያደርግህም። እጅህ በራሱ እንዲሠራ ልምምድ ያስፈልገዋል።\n\nበየቀኑ 20 ደቂቃ በTraining Ground አሳልፍ።\nቆሞ ባለው ምስል ላይ በተከታታይ 10 ቀይ ሄድሾት እስክትመታ ድረስ ተለማመድ።',
          ),
        ],
      ),
    );
  }
}

class ChapterCard extends StatelessWidget {
  final String titleEn;
  final String titleAm;
  final String contentEn;
  final String contentAm;

  const ChapterCard({
    super.key,
    required this.titleEn,
    required this.titleAm,
    required this.contentEn,
    required this.contentAm,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titleEn,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.orangeAccent,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              titleAm,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white70,
              ),
            ),
            const Divider(height: 24, thickness: 1),
            Text(
              contentEn,
              style: const TextStyle(fontSize: 15, height: 1.4),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.05),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.white12),
              ),
              child: Text(
                contentAm,
                style: const TextStyle(fontSize: 15, height: 1.4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
