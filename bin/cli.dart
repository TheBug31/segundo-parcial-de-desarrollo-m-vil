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

  // IF ANIDADOS + TRY CATCH
  int juegoElegido = 1;
  int cantidad = 5;

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
