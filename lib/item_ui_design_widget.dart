import 'package:ar_room_decor/items_details_screen.dart';
import 'package:flutter/material.dart';

import 'items.dart';

class ItemUiDesignWidget extends StatefulWidget
{
  Items? itemsInfo;
  BuildContext? context;

  ItemUiDesignWidget({
    this.itemsInfo,
    this.context
  });

  @override
  State<ItemUiDesignWidget> createState() => _ItemUiDesignWidgetState();
}



class _ItemUiDesignWidgetState extends State<ItemUiDesignWidget>
{
  @override
  Widget build(BuildContext context)
  {
    return InkWell(
      onTap: ()
      {
        //send user to the item detail screen

        Navigator.push(context, MaterialPageRoute(builder: (c)=>ItemsDetailsScreen
          (
          clickedItemInfo: widget.itemsInfo,
        ),
        ),
        );
      },
      splashColor: Colors.purple.shade700,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: SizedBox(
          height: 180,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              
              //image
              Image.network(
                widget.itemsInfo!.itemImage.toString(),
                width: 140,
                height: 140,
              ),

              const SizedBox(width: 4.0,),

              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                          height: 15
                      ),

                      //itemName
                      Expanded(
                          child: Text(
                            widget.itemsInfo!.itemName.toString(),
                            maxLines: 2,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 16
                            ),
                          )
                      ),


                      //sellerName
                      Expanded(
                          child: Text(
                            widget.itemsInfo!.sellerName.toString(),
                            maxLines: 2,
                            style: const TextStyle(
                                color: Colors.pinkAccent,
                                fontSize: 14,
                            ),
                          ),
                      ),


                      // show discount badge-50% OFF BADGE
                      //price - original
                      // new price
                      Row(
                        children: [


                          //50% OFF BADGE
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.pink
                            ),
                            alignment: Alignment.topLeft,
                            width: 40,
                            height: 44,
                            child:const Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "50%",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,

                                    ),
                                  ),

                                  Text(
                                    "OFF",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,

                                    ),
                                  ),


                                ],
                              ),
                            ),
                          ),

                          const SizedBox(
                            width: 10,
                          ),

                          //original price
                          //new price
                           Column (
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //original price
                              Row(
                                children: [
                                  const Text(
                                    "Original Price: \₹",
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  Text(
                                    ( double.parse(widget.itemsInfo!.itemPrice!.replaceAll(RegExp(r'[^0-9.]'),'')) + double.parse(widget.itemsInfo!.itemPrice!.replaceAll(RegExp(r'[^0-9.]'),''))).toString(),
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      decoration: TextDecoration.lineThrough,
                                    ),

                                  ),
                                ],
                              ),

                              //new price
                              Row(
                                children: [
                                  const Text(
                                    "New Price:  ",
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,

                                    ),
                                  ),

                                  const Text(
                                    "\₹",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.red,

                                    ),
                                  ), 
                                  Text(
                                   widget.itemsInfo!.itemPrice.toString(),
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.red,

                                    ),

                                  ),
                                ],
                              ),

                            ],
                          ),



                        ],
                      ),

                      const SizedBox(
                        height: 8.0,
                      ),


                      const Divider(
                        height: 4,
                        color: Colors.white70,
                      )

                    ],
                  ),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}
