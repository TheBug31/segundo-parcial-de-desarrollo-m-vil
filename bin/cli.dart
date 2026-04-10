void main() {
  List<String> juegos = [
    'God of War',
    'Elden Ring',
    'FIFA 25',
    'Resident Evil',
  ];
  List<int> stock = [8, 3, 15, 0];
  List<double> precios = [220000, 200000, 180000, 170000];

  int opcion = 2;
  int juegoElegido = 1;
  int cantidad = 5;

  print('=== TIENDA DE VIDEOJUEGOS ===\n');

  for (int i = 0; i < juegos.length; i++) {
    print('[$i] ${juegos[i]} - Stock: ${stock[i]} - Precio: \$${precios[i]}');
  }

  switch (opcion) {
    case 1:
      print('\nModo: Ver inventario');
      for (int i = 0; i < juegos.length; i++) {
        print('  ${juegos[i]} - Stock: ${stock[i]}');
      }
      break;
    case 2:
      print('\nModo: Vender juego');
      print('Juego seleccionado: ${juegos[juegoElegido]}');
      break;
    case 3:
      print('\nModo: Agregar stock');
      for (int i = 0; i < juegos.length; i++) {
        if (stock[i] == 0) {
          print('  ${juegos[i]} - AGOTADO');
        } else {
          print('  ${juegos[i]} - Stock: ${stock[i]}');
        }
      }
      break;
    default:
      print('\nOpción inválida');
  }

  try {
    if (juegoElegido < 0 || juegoElegido >= juegos.length) {
      throw Exception('El juego no existe');
    }

    if (stock[juegoElegido] == 0) {
      throw Exception('El juego está agotado');
    } else if (cantidad > stock[juegoElegido]) {
      throw Exception(
        'No hay suficiente stock. Solo hay ${stock[juegoElegido]}',
      );
    } else {
      stock[juegoElegido] -= cantidad;
      double total = cantidad * precios[juegoElegido];
      print('\nVenta exitosa: $cantidad x ${juegos[juegoElegido]}');
      print('Total: \$$total COP');
      print('Stock restante: ${stock[juegoElegido]}');
    }
  } catch (e) {
    print('\nError: $e');
  }
}
