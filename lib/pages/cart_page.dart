import 'package:flutter/material.dart';
import 'package:ggro/model/cart_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Cart')),
      body: Consumer<CartModel>(
        builder: (context, value, child) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: value.cartItems.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListTile(
                          leading: Image.asset(value.cartItems[index][2]), // Assuming it's the image path at index 2
                          title: Text(value.cartItems[index][0]),
                          subtitle: Text('\$' + value.cartItems[index][1]),
                          trailing: IconButton(
                            icon: Icon(Icons.cancel), // Wrapped the icon in Icon() widget
                            onPressed: () => Provider.of<CartModel>(context, listen: false)
                                .removeItemTocart(index),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(36.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Total Price",style: TextStyle(color: Colors.green),),
                          const SizedBox(height: 4,),
                          Text('\$'+ value.calculatorTotal(),
                          style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold),)
                        ],
                      ),
                      Container(
                          decoration:  BoxDecoration(
                            border: Border.all(color: Colors.green.shade100),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              children: [
                                Text("pay now",style: TextStyle(color: Colors.white),
                                ),
                                Icon(Icons.arrow_forward_ios,size: 16,color: Colors.white,)
                              ],
                            ),
                          ),

                      )
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
