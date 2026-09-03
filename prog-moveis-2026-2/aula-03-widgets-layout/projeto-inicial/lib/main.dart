 // CICLO 1 CÓDIGO JÁ FEITO
// import 'package:flutter/material.dart';

// void main() => runApp(const CadernoApp());

// class CadernoApp extends StatelessWidget {
//   const CadernoApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Caderno de Campo do Vale',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1E5631)),
//         useMaterial3: true,
//       ),
//       home: const TelaInicial(),
//     );
//   }
// }

// class TelaInicial extends StatelessWidget {
//   const TelaInicial({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Caderno de Campo do Vale'),
//         backgroundColor: const Color(0xFF1E5631),
//         foregroundColor: Colors.white,
//       ),
//       // Container: uma caixa que dá cor, margem, borda e tamanho ao filho.
//       body: Container(
//         // Padding interno: afasta o conteúdo das bordas da caixa.
//         padding: const EdgeInsets.all(16),
//         // Column: empilha os filhos na vertical, de cima para baixo.
//         child: Column(
//           // Alinha os filhos à esquerda (início da horizontal).
//           crossAxisAlignment: CrossAxisAlignment.start,

//           children: [
//             Container(
//               padding: const EdgeInsets.all(12),
//               color: const Color(0xFFD5F5E3),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: const [
//                   Text(
//                     'Fazenda Morada do Peixe 1',
//                     style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//                   ),
//                   // SizedBox: um espaço vazio de tamanho fixo. Aqui, respiro vertical.
//                   SizedBox(height: 4),
//                   Text(
//                     'Ceres — GO',
//                     style: TextStyle(fontSize: 16, color: Colors.black54),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 4),
//             Row(
//               children: [
//                 Text('Responsável: ', style: TextStyle(fontSize: 16)),
//                 Text(
//                   'Marcos Felipe Pessoa',
//                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//             SizedBox(height: 16),
//             // Row: distribui os filhos na horizontal, lado a lado.
//             Row(
//               children: [
//                 Text('Área total: ', style: TextStyle(fontSize: 16)),
//                 Text(
//                   '96,4 ha',
//                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // ============================ TAREFAS ============================
// //
// // TAREFA 1 — Troque o nome da fazenda e a cidade pelos de uma propriedade
// //            da sua região (real ou fictícia). Rode e veja mudar.
// //
// // TAREFA 2 — Acrescente, abaixo da área total, mais uma Row informando o
// //            responsável: "Responsável: <nome>". Lembre do SizedBox de
// //            respiro entre uma linha e outra.
// //
// // TAREFA 3 — Envolva o bloco do nome + cidade em um Container próprio, com
// //            padding de 12 e cor de fundo Color(0xFFD5F5E3) (verde claro).
// //            Observe como o Container "abraça" só aquele pedaço.
// //
// // TAREFA 4 — Experimente trocar crossAxisAlignment.start por .center na
// //            Column principal. O que acontece com o alinhamento? Volte
// //            para .start depois. - o alinhamento sai da base de esquerda e vai para o centro indicado.
// //
// // DICA: no DartPad, o hot reload é automático ao salvar. Se algo parecer
// // travado, use o botão Run de novo.


// ---------------------------------------------------------------------------------------------------------------------//

// // CICLO 2 — CÓDIGO JÁ FEITO

// import 'package:flutter/material.dart';

// void main() => runApp(const CadernoApp());

// class CadernoApp extends StatelessWidget {
//   const CadernoApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1E5631)),
//         useMaterial3: true,
//       ),
//       home: const TelaResumo(),
//     );
//   }
// }

// class TelaResumo extends StatelessWidget {
//   const TelaResumo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Resumo'),
//         backgroundColor: const Color(0xFF1E5631),
//         foregroundColor: Colors.white,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             // ===================================================== BUG 1
//             // Esta Row tenta colocar dois cards largos lado a lado, mas
//             // eles somados passam da largura da tela -> overflow amarelo.
//             // CONSERTE: envolva CADA card em um Expanded, para que dividam
//             // o espaço disponível em vez de exigir a largura cheia.
//             Row(
//               children: [
//                 Flexible(flex:2, child: _CardNumero(titulo: 'Talhões cadastrados no total', valor: '6')),
//                 SizedBox(width: 12),
//                 Flexible(flex:1, child: _CardNumero(titulo: 'Atividades registradas no mês', valor: '14')),
//               ],
//             ),

//             const SizedBox(height: 16),

//             // ===================================================== BUG 2
//             // Este texto é muito longo e, dentro de uma Row, tenta ocupar
//             // uma largura infinita -> overflow.
//             // CONSERTE: envolva o Text em um Expanded para que ele quebre
//             // a linha dentro do espaço que sobra.
//             Row(
//               children: const [
//                 Icon(Icons.info_outline, color: Color(0xFF1E5631)),
//                 SizedBox(width: 8),
//                 Expanded(
//                   child: Text(
//                   'Última sincronização feita há três dias — verifique o sinal '
//                   'antes de sair para a lavoura para não perder registros.',
//                 ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _CardNumero extends StatelessWidget {
//   final String titulo;
//   final String valor;
//   const _CardNumero({required this.titulo, required this.valor});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: const Color(0xFFD5F5E3),
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Column(
//         children: [
//           Text(valor,
//               style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
//           const SizedBox(height: 4),
//           Text(titulo, textAlign: TextAlign.center),
//         ],
//       ),
//     );
//   }
// }

// // ============================ TAREFAS ============================
// //
// // TAREFA 1 (BUG 1) — Faça os dois cards caberem lado a lado usando Expanded.
// //
// // TAREFA 2 (BUG 2) — Faça o texto longo quebrar linha, sem overflow.
// //
// // TAREFA 3 — Depois de consertar, troque um dos Expanded do BUG 1 por
// //            Flexible(flex: 2) e o outro por Flexible(flex: 1). O que muda
// //            na proporção entre os dois cards? Anote em comentário.
// //
// // PERGUNTA PARA DISCUSSÃO: por que o overflow acontece na horizontal (Row)
// // com muito mais frequência do que na vertical (Column) neste tipo de tela?
// // imagino que seja porque a largura de uma tela mobile é relativamente menor do que o comprimento,
// // apresentando menos espaço.

//----------------------------------------------------------------------------------------------------------------------//

// // CICLO 3 — LISTAS
// // ListView e ListView.builder — a lista de talhões do Caderno de Campo
// // Programação para Dispositivos Móveis · IF Goiano — Campus Ceres
// //
// // A IDEIA
// // Você já tem a classe Talhao dos exercícios de Dart. Agora vamos
// // transformar uma LISTA de talhões em uma LISTA NA TELA, rolável.
// //
// // ListView          -> quando há poucos itens fixos, escritos à mão.
// // ListView.builder  -> quando os itens vêm de uma coleção. Constrói cada
// //                      item sob demanda (só o que está visível). É o que
// //                      se usa de verdade.
// //
// // COMO FAZER
// // Cole no dartpad.dev (modo Flutter), rode e siga as tarefas.

// import 'package:flutter/material.dart';

// // A mesma classe Talhao que você já conhece dos exercícios de Dart.
// class Talhao {
//   final String nome;
//   final double areaHa;
//   final String cultura;
//   const Talhao({required this.nome, required this.areaHa, required this.cultura});
// }

// // Os dados da propriedade — a mesma lista dos exercícios.
// const List<Talhao> talhoes = [
//   Talhao(nome: 'Talhão 1', areaHa: 38.0, cultura: 'soja'),
//   Talhao(nome: 'Talhão 2', areaHa: 24.5, cultura: 'milho'),
//   Talhao(nome: 'Talhão 3', areaHa: 42.0, cultura: 'milho'),
//   Talhao(nome: 'Talhão 4', areaHa: 31.2, cultura: 'soja'),
//   Talhao(nome: 'Talhão 5', areaHa: 12.8, cultura: 'sorgo'),
//   Talhao(nome: 'Talhão 6', areaHa: 19.4, cultura: 'milho'),
//   Talhao(nome: 'Talhão 7', areaHa: 13.0, cultura: 'feijao'),
//   Talhao(nome: 'Talhão 8', areaHa: 13.3, cultura: 'soja'),
// ];


// void main() => runApp(const CadernoApp());

// class CadernoApp extends StatelessWidget {
//   const CadernoApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1E5631)),
//         useMaterial3: true,
//       ),
//       home: const TelaTalhoes(),
//     );
//   }
// }

// class TelaTalhoes extends StatelessWidget {
//   const TelaTalhoes({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Talhões'),
//         backgroundColor: const Color(0xFF1E5631),
//         foregroundColor: Colors.white,
//       ),
//       // ListView.builder percorre a lista e cria um item para cada talhão.
//       // itemCount: quantos itens existem.
//       // itemBuilder: uma função que recebe o índice e devolve o widget
//       //              daquele item.
//       body: ListView.builder(
//         itemCount: talhoes.length,
//         itemBuilder: (context, indice) {
//           final talhao = talhoes[indice];
//           // ListTile: um item de lista pronto, com título, subtítulo e ícones.
//           return Card(
//             child: ListTile(
//             leading: talhao.cultura == 'soja' ?
//             const Icon(Icons.grass, color: Color(0xFF1E5631)) :
//             talhao.cultura == 'milho' ? 
//             const Icon(Icons.agriculture, color: Color.fromARGB(255, 236, 221, 86)) :
//             const Icon(Icons.eco, color: Colors.grey),
//             title: Text(talhao.nome),
//             subtitle: Text('${talhao.areaHa.toStringAsFixed(1).replaceAll('.', ',')} ha — ${talhao.cultura}'),
//             trailing: const Icon(Icons.chevron_right),
            
//           ),
//           );
//         },
//       ),
//     );
//   }
// }

// // ============================ TAREFAS ============================
// //
// // TAREFA 1 — Acrescente dois talhões à lista 'talhoes' e confirme que eles
// //            aparecem na tela SEM você mexer no ListView. Esse é o ganho do
// //            builder: a tela se adapta aos dados.
// //
// // TAREFA 2 — No subtítulo, formate a área no padrão brasileiro (vírgula no
// //            lugar do ponto). Dica: talhao.areaHa.toStringAsFixed(1)
// //            .replaceAll('.', ',').
// //
// // TAREFA 3 — Troque o ícone conforme a cultura: espiga para milho, folha
// //            para soja, e um ícone genérico para o resto. Dica: um if ou um
// //            switch que devolve o IconData antes de montar o ListTile.
// //
// // TAREFA 4 — Envolva cada ListTile em um Card para dar destaque visual a
// //            cada talhão. O que muda na aparência da lista? mais destacada e mais bonita cada parte da lista
// //
// // PERGUNTA: por que ListView.builder é melhor que escrever 6 ListTile na
// // mão? Pense em uma propriedade com 200 talhões. pela facilidade da função de lidar com listas extensas, praticidade.

// --------------------------------------------------------------------------------------------------------------------------//

// CICLO 4 — JUNTANDO TUDO
// A tela de resumo da propriedade — a primeira tela "de verdade" do app
// Programação para Dispositivos Móveis · IF Goiano — Campus Ceres
//
// A META
// Compor, em uma tela só, tudo dos ciclos anteriores:
//   - um cabeçalho com nome da propriedade e área (Ciclo 1);
//   - uma faixa com três números lado a lado, sem overflow (Ciclo 2);
//   - a lista de talhões, rolável (Ciclo 3).
//
// Este arquivo já vem com a ESTRUTURA montada e alguns trechos faltando,
// marcados com // COMPLETE. Preencha-os usando o que praticou nos ciclos.

import 'package:flutter/material.dart';

class Talhao {
  final String nome;
  final double areaHa;
  final String cultura;
  const Talhao({required this.nome, required this.areaHa, required this.cultura});
}

const List<Talhao> talhoes = [
  Talhao(nome: 'Talhão 1', areaHa: 38.0, cultura: 'soja'),
  Talhao(nome: 'Talhão 2', areaHa: 24.5, cultura: 'milho'),
  Talhao(nome: 'Talhão 3', areaHa: 42.0, cultura: 'milho'),
  Talhao(nome: 'Talhão 4', areaHa: 31.2, cultura: 'soja'),
  Talhao(nome: 'Talhão 5', areaHa: 12.8, cultura: 'sorgo'),
  Talhao(nome: 'Talhão 6', areaHa: 19.4, cultura: 'milho'),
];

void main() => runApp(const CadernoApp());

class CadernoApp extends StatelessWidget {
  const CadernoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1E5631)),
        useMaterial3: true,
      ),
      home: const TelaResumo(),
    );
  }
}

class TelaResumo extends StatelessWidget {
  const TelaResumo({super.key});

  @override
  Widget build(BuildContext context) {
    // Área total calculada a partir da lista (revisão dos exercícios de Dart).
    final areaTotal =
        talhoes.fold<double>(0, (soma, t) => soma + t.areaHa);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Caderno de Campo do Vale'),
        backgroundColor: const Color(0xFF1E5631),
        foregroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ---- CABEÇALHO (Ciclo 1) ----
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            color: const Color(0xFFD5F5E3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Fazenda Santa Rita do Vale',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text('Ceres — GO · ${areaTotal.toStringAsFixed(1)} ha no total'),
              ],
            ),
          ),

          // ---- TRÊS NÚMEROS (Ciclo 2) ----
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                // COMPLETE: envolva cada _CardNumero em um Expanded para que
                // os três dividam a largura sem overflow. Há um SizedBox de
                // 8 de largura entre eles.
                Expanded(child: _CardNumero(titulo: 'Talhões', valor: '${talhoes.length}'),
                ),
                const SizedBox(width: 8),
                Expanded(child: _CardNumero(titulo: 'Atividades', valor: '14'),
                ),
                const SizedBox(width: 8),
                Expanded(child: _CardNumero(titulo: 'Último', valor: 'há 3d'),
                ),
              ],
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text('Talhões da propriedade',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 8),

          // ---- LISTA (Ciclo 3) ----
          // COMPLETE: a lista precisa ocupar todo o espaço que sobra na tela.
          // Dentro de uma Column, um ListView precisa ser envolvido em
          // Expanded, senão dá erro de altura infinita. Envolva o
          // ListView.builder abaixo em um Expanded.
          Expanded(child:ListView.builder(
            itemCount: talhoes.length,
            itemBuilder: (context, indice) {
              final talhao = talhoes[indice];

              return Card(
                elevation: 2,
                child: ListTile(
                contentPadding: const EdgeInsets.all(12),
                leading: talhao.cultura == 'soja' ? const Icon(Icons.grass, color: Color(0xFF1E5631), size: 32)
                : talhao.cultura == 'milho' ? const Icon(Icons.agriculture, color: Colors.orange, size: 32)
                : const Icon(Icons.eco, color: Colors.grey, size: 32),
                title: Text(talhao.nome, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                subtitle: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                    text:'${talhao.areaHa.toStringAsFixed(1).replaceAll('.', ',')} ha',
                    style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
                  ),
                TextSpan(
                  text: '- ${talhao.cultura}',

                ),
                  
                ]
                ),
              ),
              ),
            );
            },
            ),
          ),
        ],
      ),
      // Botão flutuante de nova atividade — sem função ainda.

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF1E5631),
        onPressed: () {
        final culturasUnicas = talhoes.map((t) => t.cultura).toSet().join(', ');
        showDialog(
          context: context,
          builder:(BuildContext context){
            return AlertDialog(
              title: const Text('Culturas da Propriedade'),
              content: Text('Plantando: $culturasUnicas'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text ('Fechar'),
                ),
              ],
            );
          }
        );
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}

class _CardNumero extends StatelessWidget {
  final String titulo;
  final String valor;
  const _CardNumero({required this.titulo, required this.valor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFEFF7F1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFF1E8449)),
      ),
      child: Column(
        children: [
          Text(valor,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          const SizedBox(height: 2),
          Text(titulo, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}

// ============================ TAREFAS ============================
//
// TAREFA 1 (COMPLETE) — Faça os três cards de número dividirem a largura
//            sem overflow (Expanded em cada um).
//
// TAREFA 2 (COMPLETE) — Faça a lista ocupar o espaço restante da tela
//            (Expanded no ListView.builder). Sem isso, o app nem roda.
//
// TAREFA 3 — Faça a tela sua: aplique aqui as duas decisões de interface
//            que você justificou lá na primeira tela do Caderno de Campo
//            (contraste alto, alvo de toque generoso, número em destaque),
//            pensando em quem usa o app de luvas, sob sol, no talhão.
//
// DESAFIO — Torne o botão flutuante útil: ao tocar, mostre um AlertDialog
//            listando as culturas distintas da propriedade.