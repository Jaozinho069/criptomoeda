import 'package:flutter/material.dart';
import 'detalhe.dart';

class Crypto {
  final String name;
  final String symbol;
  final double price;
  final String description;
  final String logoPath;
  final String marketCap;
  final String fullyDilutedValuation;
  final String tradingVolume;
  final String circulatingSupply;
  final String totalSupply;
  final String maxSupply;

  Crypto({
    required this.name,
    required this.symbol,
    required this.price,
    required this.description,
    required this.logoPath,
    required this.marketCap,
    required this.fullyDilutedValuation,
    required this.tradingVolume,
    required this.circulatingSupply,
    required this.totalSupply,
    required this.maxSupply,
  });
}

final List<Crypto> cryptos = [
  Crypto(
    name: "Bitcoin",
    symbol: "BTC",
    price: 93309.26,
    description:
    "Bitcoin (BTC) is the first cryptocurrency built on blockchain technology, also known as a decentralized digital currency that is based on cryptography.",
    logoPath: "assets/logos/bitcoin.png",
    marketCap: "\$1,865,758,820,143",
    fullyDilutedValuation: "\$1,980,088,068,000",
    tradingVolume: "\$101,312,537,971",
    circulatingSupply: "19,787,471",
    totalSupply: "21,000,000",
    maxSupply: "21,000,000",
  ),
  Crypto(
    name: "Ethereum",
    symbol: "ETH",
    price: 3421.75,
    description:
    "Ethereum is a Proof-of-Stake blockchain that powers decentralized applications (dApps) through smart contracts, without being controlled by a centralized entity.",
    logoPath: "assets/logos/etherum.png",
    marketCap: "\$415,187,572,912",
    fullyDilutedValuation: "\$415,187,572,912",
    tradingVolume: "\$53,224,512,235",
    circulatingSupply: "120,432,585",
    totalSupply: "120,432,585",
    maxSupply: "∞",
  ),
  Crypto(
    name: "Tether",
    symbol: "USDT",
    price: 1.00,
    description: "Tether is a stablecoin pegged to the US Dollar.",
    logoPath: "assets/logos/tether.png",
    marketCap: "\$132,785,741,511",
    fullyDilutedValuation: "\$132,785,741,511",
    tradingVolume: "\$189,002,099,137",
    circulatingSupply: "132,744,005,559",
    totalSupply: "132,744,005,559",
    maxSupply: "∞",
  ),
  Crypto(
    name: "Solana",
    symbol: "SOL",
    price: 235.19,
    description:
    "Solana is a Layer 1 blockchain that offers users fast speeds and affordable costs.",
    logoPath: "assets/logos/solana.png",
    marketCap: "\$112,675,261,343",
    fullyDilutedValuation: "\$139,773,791,238",
    tradingVolume: "\$8,879,083,597",
    circulatingSupply: "474,714,914",
    totalSupply: "588,884,396",
    maxSupply: "∞",
  ),
  Crypto(
    name: "BNB",
    symbol: "BNB",
    price: 637.01,
    description:
    "BNB (BNB), previously also known as Binance Coin (BNB), is a cryptocurrency coin created and issued by the cryptocurrency exchange Binance.",
    logoPath: "assets/logos/bnb.png",
    marketCap: "\$93,845,494,098",
    fullyDilutedValuation: "\$93,845,494,098",
    tradingVolume: "\$2,548,542,706",
    circulatingSupply: "145,887,575",
    totalSupply: "145,887,575",
    maxSupply: "200,000,000",
  ),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cryptocurrencies"),
        backgroundColor: Colors.yellow, //
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: cryptos.length,
          itemBuilder: (context, index) {
            final crypto = cryptos[index];
            return Card(
              elevation: 3,
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                leading: Image.asset(
                  crypto.logoPath,
                  width: 40,
                  height: 40,
                  fit: BoxFit.contain, //
                ),
                title: Text(
                  crypto.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(crypto.symbol),
                trailing: Text(
                  "\$${crypto.price.toStringAsFixed(2)}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPage(crypto: crypto),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
