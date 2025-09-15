import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Nayla',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: ProfileScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDF2F8),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),

              // Profile Photo Section - FIXED
              Center(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xFFF9B4D4), width: 4.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink.withOpacity(0.2),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage('assets/images/profile.jpg',
                    ),
                    onBackgroundImageError: (exception, stackTrace) {
                      // Fallback jika gambar gagal dimuat
                      print('Gagal memuat gambar: $exception');
                    },
                  ),
                ),
              ),

              // Header with name and title
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'Nayla Zeanlita',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFD81B60),
                        letterSpacing: 1.5,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Data Scientist',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFFEC407A),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Description
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink.withOpacity(0.1),
                      blurRadius: 8,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Text(
                  'Mahasiswa semester 5 dari program studi Informatika Universitas Mulawarman',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 16),

              // Divider
              Divider(color: Color(0xFFF8BBD0), thickness: 2),
              SizedBox(height: 24),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left column
                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // KONTAK section
                        SectionTitle(title: 'KONTAK'),
                        ContactInfo(
                          icon: Icons.location_on,
                          info: 'Samarinda, Indonesia',
                        ),
                        ContactInfo(icon: Icons.phone, info: '+62 823 3545 0397'),
                        ContactInfo(
                          icon: Icons.email,
                          info: 'naylazpn@gmail.com',
                        ),
                        SizedBox(height: 24),

                        // SKILL section
                        SectionTitle(title: 'SKILL'),
                        SkillTag(tag: 'SOFTWARE'),
                        SkillTag(tag: 'KOMUNIKASI'),
                        SkillTag(tag: 'ANALISIS'),
                        SkillTag(tag: 'MICROSOFT OFFICE'),
                        SizedBox(height: 24),

                        // BAHASA section
                        SectionTitle(title: 'BAHASA'),
                        LanguageItem(language: 'INGGRIS', level: 90),
                        LanguageItem(language: 'INDONESIA', level: 100),
                      ],
                    ),
                  ),

                  SizedBox(width: 24),

                  // Right column
                  Expanded(
                    flex: 7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // HOBBY section
                        SectionTitle(title: 'HOBBY'),
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.pink.withOpacity(0.1),
                                blurRadius: 8,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'MENULIS | MENYANYI | MEMASAK',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFFD81B60),
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Beberapa hobi yang bisa membantu saya mengembalikan mood sehingga semangat beraktivitas kembali',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 24),

                        // PROFIL section
                        SectionTitle(title: 'PROFIL'),
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.pink.withOpacity(0.1),
                                blurRadius: 8,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Text(
                            'Nayla Zeanlita Putri Nur Ain \n2309106052',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[700],
                              height: 1.5,
                            ),
                          ),
                        ),
                        SizedBox(height: 24),

                        // PENDIDIKAN section
                        SectionTitle(title: 'PENDIDIKAN'),
                        EducationItem(
                          years: '2020 - 2023',
                          title: 'SMAN1 Penajam Paser Utara',
                          description:
                              'Saya mengambil peminatan IPA dan aktif mengikuti olimpiade',
                        ),
                        EducationItem(
                          years: '2023 - Sekarang',
                          title: 'Universitas Mulawarman',
                          description:
                              'Saya mengambil jurusan S1 Informatika, Fakultas Teknik dan meraih IPK 3.68',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Color(0xFFC2185B),
          decoration: TextDecoration.underline,
          decorationColor: Color(0xFFF8BBD0),
          decorationThickness: 3,
        ),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  final String text;

  const SocialButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Color(0xFFFCE4EC),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Color(0xFFF8BBD0), width: 1),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12,
          color: Color(0xFFEC407A),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class ContactInfo extends StatelessWidget {
  final IconData icon;
  final String info;

  const ContactInfo({Key? key, required this.icon, required this.info})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 18, color: Color(0xFFEC407A)),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              info,
              style: TextStyle(fontSize: 14, color: Colors.grey[700]),
            ),
          ),
        ],
      ),
    );
  }
}

class SkillTag extends StatelessWidget {
  final String tag;

  const SkillTag({Key? key, required this.tag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8, right: 8),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Color(0xFFFCE4EC),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Color(0xFFF8BBD0), width: 1),
      ),
      child: Text(
        tag,
        style: TextStyle(fontSize: 14, color: Color(0xFFD81B60)),
      ),
    );
  }
}

class LanguageItem extends StatelessWidget {
  final String language;
  final int level;

  const LanguageItem({Key? key, required this.language, required this.level})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                language,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF880E4F),
                ),
              ),
              Text(
                '$level%',
                style: TextStyle(fontSize: 12, color: Color(0xFFEC407A)),
              ),
            ],
          ),
          SizedBox(height: 4),
          LinearProgressIndicator(
            value: level / 100,
            backgroundColor: Color(0xFFFCE4EC),
            valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFF48FB1)),
            minHeight: 8,
            borderRadius: BorderRadius.circular(4),
          ),
        ],
      ),
    );
  }
}

class EducationItem extends StatelessWidget {
  final String years;
  final String title;
  final String description;

  const EducationItem({
    Key? key,
    required this.years,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            years,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFFEC407A),
            ),
          ),
          SizedBox(height: 4),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xFFD81B60),
            ),
          ),
          SizedBox(height: 4),
          Text(
            description,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}

class ExperienceItem extends StatelessWidget {
  final String years;
  final String title;
  final String description;

  const ExperienceItem({
    Key? key,
    required this.years,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            years,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFFEC407A),
            ),
          ),
          SizedBox(height: 4),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xFFD81B60),
            ),
          ),
          SizedBox(height: 4),
          Text(
            description,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
