import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Profil'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            // Foto Profil
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/foto_profil.jpeg'),
            ),
            const SizedBox(height: 10),
            // Nama
            const Text(
              'Muhammad Abdul Halim',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            // Daftar Menu
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                ListTile(
                  title: const Text('Alamat'),
                  subtitle: const Text('Gresiks'),
                  leading: const Icon(Icons.location_on),
                  onTap: () {
                    // Aksi ketika menu di-tap
                  },
                ),
                ListTile(
                  title: const Text('Rekening Bank'),
                  subtitle: const Text('Semua bank'),
                  leading: const Icon(Icons.account_balance),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Pembayaran Instan'),
                  subtitle: const Text('E-Wallet, Kartu kredit'),
                  leading: const Icon(Icons.payment),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Keamanan Akun'),
                  subtitle: const Text('Kata sandi, PIN & Verifikasi data diri'),
                  leading: const Icon(Icons.security),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Notifikasi'),
                  subtitle: const Text('Atur notifikasi aplikasi'),
                  leading: const Icon(Icons.notifications),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Privasi Akun'),
                  subtitle: const Text('Atur penggunaan data pribadi'),
                  leading: const Icon(Icons.privacy_tip),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Log out'),
                  leading: const Icon(Icons.logout),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
