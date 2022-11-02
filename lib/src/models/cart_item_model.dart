import 'item_model.dart';

class CartItemModel {
  ItemModel item;
  int quantity;

  CartItemModel({
    required this.item,
    required this.quantity,
  });

  // Metodo retorna total de itens do carrinho x preço unidade
  double totalPrice() => item.price * quantity;
}
