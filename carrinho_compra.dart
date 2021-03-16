import "dart:io";

//  ****** Programa simples de lista de compras  ******//

List<String> produtos = []; //variavel global

main() {
  
  bool condicao = true;

  while (condicao) {
    print("==== Adicione um produto : ");
    String text = stdin.readLineSync();
    if (text != "mostrar") {
      print("* Produto adicionado  ");
    }
    if (text == "sair") {
      condicao = false;
      print("==== Programa Finalizado ====");
    } else if (text == "mostrar") {
      print("== Lista de Produtos ==");
      imprimir();
    } else if (text == "remover") {
      remover();
    } else {
      produtos.add(text);
      /*print("\x1B[2J\x1B[0;0H"); */ //limpar o terminal
    }
  }
}

/* Funções - Modularização*/

imprimir() {
  for (var i = 0; i < produtos.length; i++) {
    print("Item $i - ${produtos[i]}");
  }
}

remover() {
  print("==== Qual item deseja remover ?");
  imprimir();
  int item = int.parse(stdin.readLineSync());
  produtos.removeAt(item);
  print("* Produto removido  ");
}
