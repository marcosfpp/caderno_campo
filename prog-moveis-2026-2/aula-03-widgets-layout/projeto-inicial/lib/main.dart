// Caderno de Campo do Vale — PROJETO INICIAL
// Programação para Dispositivos Móveis · IF Goiano — Campus Ceres
//
// Este é o ponto de partida da aula de widgets de layout. O app já roda,
// mas a tela está praticamente vazia de propósito: você vai construí-la
// ao longo dos quatro ciclos, com o hot reload mostrando cada mudança.
//
// COMO RODAR (uma vez, no terminal, dentro desta pasta):
//   flutter create .        # gera as pastas nativas (android/, ios/...)
//   flutter pub get         # baixa as dependências
//   flutter run             # roda no dispositivo/emulador selecionado
//
// Depois, deixe o app rodando: salvar o arquivo aplica o hot reload.

import 'package:flutter/material.dart';

void main() => runApp(const CadernoApp());

class CadernoApp extends StatelessWidget {
  const CadernoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Caderno de Campo do Vale',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1E5631)),
        useMaterial3: true,
      ),
      home: const TelaInicial(),
    );
  }
}

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Caderno de Campo do Vale'),
        backgroundColor: const Color(0xFF1E5631),
        foregroundColor: Colors.white,
      ),
      // Container: uma caixa que dá cor, margem, borda e tamanho ao filho.
      body: Container(
        // Padding interno: afasta o conteúdo das bordas da caixa.
        padding: const EdgeInsets.all(16),
        // Column: empilha os filhos na vertical, de cima para baixo.
        child: Column(
          // Alinha os filhos à esquerda (início da horizontal).
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Container(
              padding: const EdgeInsets.all(12),
              color: const Color(0xFFD5F5E3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Fazenda Morada do Peixe 1',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  // SizedBox: um espaço vazio de tamanho fixo. Aqui, respiro vertical.
                  SizedBox(height: 4),
                  Text(
                    'Ceres — GO',
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Text('Responsável: ', style: TextStyle(fontSize: 16)),
                Text(
                  'Marcos Felipe Pessoa',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 16),
            // Row: distribui os filhos na horizontal, lado a lado.
            Row(
              children: [
                Text('Área total: ', style: TextStyle(fontSize: 16)),
                Text(
                  '96,4 ha',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ============================ TAREFAS ============================
//
// TAREFA 1 — Troque o nome da fazenda e a cidade pelos de uma propriedade
//            da sua região (real ou fictícia). Rode e veja mudar.
//
// TAREFA 2 — Acrescente, abaixo da área total, mais uma Row informando o
//            responsável: "Responsável: <nome>". Lembre do SizedBox de
//            respiro entre uma linha e outra.
//
// TAREFA 3 — Envolva o bloco do nome + cidade em um Container próprio, com
//            padding de 12 e cor de fundo Color(0xFFD5F5E3) (verde claro).
//            Observe como o Container "abraça" só aquele pedaço.
//
// TAREFA 4 — Experimente trocar crossAxisAlignment.start por .center na
//            Column principal. O que acontece com o alinhamento? Volte
//            para .start depois. - o alinhamento sai da base de esquerda e vai para o centro indicado.
//
// DICA: no DartPad, o hot reload é automático ao salvar. Se algo parecer
// travado, use o botão Run de novo.
