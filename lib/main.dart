	import 'package:flutter/material.dart';

void main() {
  runApp(const YnnsPanelDigital());
}

class YnnsPanelDigital extends StatelessWidget {
  const YnnsPanelDigital({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'YNNS PANEL DIGITAL',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0F172A),
      ),
      home: const DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  Widget menuCard(
      BuildContext context,
      IconData icon,
      String title,
      ) {
    return Card(
      color: const Color(0xFF1E293B),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MenuPage(title: title),
            ),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 42,
              color: Colors.cyanAccent,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("YNNS PANEL DIGITAL"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: const Color(0xFF1E293B),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Column(
                children: [
                  Text(
                    "SALDO MEMBER",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Rp 0",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyanAccent,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  menuCard(
                    context,
                    Icons.shopping_bag,
                    "Produk Digital",
                  ),
                  menuCard(
                    context,
                    Icons.receipt_long,
                    "Pesanan",
                  ),
                  menuCard(
                    context,
                    Icons.people,
                    "Member",
                  ),
                  menuCard(
                    context,
                    Icons.account_balance_wallet,
                    "Deposit Saldo",
                  ),
                  menuCard(
                    context,
                    Icons.history,
                    "Riwayat Transaksi",
                  ),
                  menuCard(
                    context,
                    Icons.settings,
                    "Pengaturan",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}class MenuPage extends StatelessWidget {
  final String title;

  const MenuPage({
    super.key,
    required this.title,
  });

  List<String> getItems() {
    if (title == "Produk Digital") {
      return [
        "📞 Nokos",
        "🌐 Hosting",
        "🖥️ Panel Pterodactyl",
        "📱 APK Premium",
        "🎮 Top Up Game",
        "🎫 Voucher Digital",
      ];
    }

    return [];
  }

  @override
  Widget build(BuildContext context) {
    final items = getItems();

    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.deepPurple,
      ),
      body: items.isNotEmpty
          ? ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Card(
                  color: const Color(0xFF1E293B),
                  child: ListTile(
                    title: Text(items[index]),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                );
              },
            )
          : Center(
              child: Text(
                "$title\nHalaman Aktif",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
    );
  }
}
