import 'package:flutter/material.dart';
import 'home1.dart';

class DetailPage extends StatelessWidget {
  final Crypto crypto;

  const DetailPage({Key? key, required this.crypto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(crypto.name),
        backgroundColor: Colors.yellow, // Paleta de cores
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Nome e Logo da Criptomoeda
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    crypto.logoPath,
                    width: 60,
                    height: 60,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          crypto.name,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          crypto.symbol,
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),

              // Descrição da Criptomoeda
              Text(
                crypto.description,
                style: const TextStyle(fontSize: 16, color: Colors.black87),
                textAlign: TextAlign.justify,
              ),
              const Divider(height: 32.0, thickness: 1.0),

              // Informações do Mercado
              const Text(
                "Market Details",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              _buildDetailRow("Market Cap", crypto.marketCap),
              _buildDetailRow(
                  "Fully Diluted Valuation", crypto.fullyDilutedValuation),
              _buildDetailRow("24 Hour Trading Vol", crypto.tradingVolume),
              _buildDetailRow("Circulating Supply", crypto.circulatingSupply),
              _buildDetailRow("Total Supply", crypto.totalSupply),
              _buildDetailRow("Max Supply", crypto.maxSupply),
            ],
          ),
        ),
      ),
    );
  }

  // Método para criar cada linha de detalhe
  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 16, color: Colors.black87),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
