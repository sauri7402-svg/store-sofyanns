import 'package:flutter/material.dart';

void main() {
  runApp(const StoreSofyannsApp());
}

class StoreSofyannsApp extends StatelessWidget {
  const StoreSofyannsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'STORE SOFYANNS',
      theme: ThemeData.dark(),
      home: const DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  Widget menuCard(
      IconData icon,
      String title,
      BuildContext context,
      ) {
    return Card(
      color: Colors.grey[900],
      child: InkWell(
        onTap: () {},
        child: SizedBox(
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 40, color: Colors.pink),
              const SizedBox(height: 10),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("STORE SOFYANNS"),
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Card(
              color: Colors.pink,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                child: const Column(
                  children: [
                    Text(
                      "SALDO SAAT INI",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Rp 0",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  menuCard(Icons.arrow_downward,
                      "Pemasukan", context),
                  menuCard(Icons.arrow_upward,
                      "Pengeluaran", context),
                  menuCard(Icons.money,
                      "Hutang", context),
                  menuCard(Icons.account_balance_wallet,
                      "Piutang", context),
                  menuCard(Icons.bar_chart,
                      "Laporan", context),
                  menuCard(Icons.settings,
                      "Pengaturan", context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
