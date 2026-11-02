import 'package:flutter/material.dart';
import '../models/bico.dart';

class ListaBicosPage extends StatefulWidget{
  const ListaBicosPage({super.key});

  @override
  State<ListaBicosPage> createState() => _ListaBicosPageState();
}

class _ListaBicosPageState extends State<ListaBicosPage>{
  String? _categoriaSelecionada; //Null = todas

  @override
  Widget build(BuildContext context){
    final categorias = bicosFicticios.map((b) => b.categoria).toSet().toList()
    ..sort();

    final bicos = _categoriaSelecionada == null
        ? bicosFicticios
        : bicosFicticios
              .where((b) => b.categoria == _categoriaSelecionada)
              .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('BicoLocal'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                ChoiceChip(
                  label: const Text('Todas'),
                  selected: _categoriaSelecionada == null,
                  onSelected: (_) =>
                      setState(() => _categoriaSelecionada = null),
                ),
                for (final categoria in categorias)
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: ChoiceChip(
                      label: Text(categoria),
                      selected: _categoriaSelecionada == categoria,
                      onSelected: (_) =>
                          setState(() => _categoriaSelecionada = categoria),
                    ),
                  ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: bicos.length,
              itemBuilder: (context, index) {
                final bico = bicos[index];
                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  child: ListTile(
                    title: Text(bico.titulo),
                    subtitle: Text(
                      '${bico.categoria} • ${bico.bairro} • ${bico.dataFormatada}',
                    ),
                    trailing: Text(
                      bico.valorFormatado,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}