void main() {
  List<String> juegos = [
    'God of War',
    'Elden Ring',
    'FIFA 25',
    'Resident Evil',
  ];
  List<int> stock = [8, 3, 15, 0];
  List<double> precios = [220000, 200000, 180000, 170000];

  print('=== TIENDA DE VIDEOJUEGOS ===\n');

  for (int i = 0; i < juegos.length; i++) {
    print('[$i] ${juegos[i]} - Stock: ${stock[i]} - Precio: \$${precios[i]}');
  }

  int opcion = 2;

  switch (opcion) {
    case 1:
      print('\nModo: Ver inventario');
      break;
    case 2:
      print('\nModo: Vender juego');
      break;
    case 3:
      print('\nModo: Agregar stock');
      break;
    default:
      print('\nOpción inválida');
  }
}
