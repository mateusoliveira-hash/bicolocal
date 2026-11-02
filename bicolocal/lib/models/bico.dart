class Bico{
  final String titulo;
  final String descricao;
  final String categoria;
  final String bairro;
  final double valor;
  final DateTime data;
  final String contratante;
  final String whatsapp;

  const Bico({
    required this.titulo,
    required this.descricao,
    required this.categoria,
    required this.bairro,
    required this.valor,
    required this.data,
    required this.contratante,
    required this.whatsapp,
  });

  String get valorFormatado =>
  'R\$ ${valor.toStringAsFixed(2).replaceAll('.',',')}';
  String get dataFormatada =>
  '${data.day.toString().padLeft(2, '0')}/${data.month.toString().padLeft(2, '0')}';
}
// Dados fictícios até a integração com o Firebase (Etapa 2).
final List<Bico> bicosFicticios = [
  Bico(
    titulo: 'Cortar grama do quintal',
    descricao: 'Quintal de aproximadamente 200 m². Tenho a máquina.',
    categoria: 'Jardinagem',
    bairro: 'Canta Galo',
    valor: 120,
    data: DateTime(2026, 11, 8),
    contratante: 'Ana',
    whatsapp: '5547999990001',
  ),
  Bico(
    titulo: 'Ajudante para mudança',
    descricao: 'Carregar móveis do 2º andar até o caminhão. Cerca de 4 horas.',
    categoria: 'Mudança',
    bairro: 'Centro',
    valor: 200,
    data: DateTime(2026, 11, 9),
    contratante: 'Carlos',
    whatsapp: '5547999990002',
  ),
  Bico(
    titulo: 'Faxina em apartamento',
    descricao: 'Apartamento de 2 quartos, limpeza completa.',
    categoria: 'Limpeza',
    bairro: 'Jardim América',
    valor: 180,
    data: DateTime(2026, 11, 10),
    contratante: 'Juliana',
    whatsapp: '5547999990003',
  ),
  Bico(
    titulo: 'Trocar chuveiro',
    descricao: 'Chuveiro novo já comprado, só precisa instalar.',
    categoria: 'Reparos',
    bairro: 'Santana',
    valor: 60,
    data: DateTime(2026, 11, 7),
    contratante: 'Pedro',
    whatsapp: '5547999990004',
  ),
  Bico(
    titulo: 'Garçom para festa',
    descricao: 'Aniversário com 50 convidados, das 19h ás 23h',
    categoria: 'Eventos',
    bairro: 'Budag',
    valor: 150,
    data: DateTime(2026, 11, 14),
    contratante: 'Marina',
    whatsapp: '5547999990005',
  ),
  Bico(
    titulo: 'Limpar calhas',
    descricao: 'Casa térrea, calhas com folhas acumuladas',
    categoria: 'Reparos',
    bairro: 'Laranjeiras',
    valor: 90,
    data: DateTime(2026, 11, 11),
    contratante: 'Roberto',
    whatsapp: '5547999990006',
  ),
];
