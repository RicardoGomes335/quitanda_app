import 'package:quitanda_app/src/models/cart_item_model.dart';

class OrderModel {
  // Id do produto
  String id;
  DateTime createdDateTime;
  // Data de vencimento do PIX
  DateTime overdueDateTime;
  // Lista de itens do pedido
  List<CartItemModel> items;
  // Status do pedido
  String status;
  // Copia e cola o codigo do PIX
  String copyAndPaste;
  // Soma o total do pedido
  double total;

  // Construtor do Model
  OrderModel({
    required this.id,
    required this.copyAndPaste,
    required this.createdDateTime,
    required this.overdueDateTime,
    required this.items,
    required this.status,
    required this.total,
  });
}
