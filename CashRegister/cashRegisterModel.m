//
//  cashRegisterModel.m
//  CashRegister
//
//  Created by Parth Patel on 2018-02-22.
//  Copyright © 2018 Seneca College. All rights reserved.
//

#import "cashRegisterModel.h"
#import "Item.h"
@implementation cashRegisterModel


-(NSMutableArray*)list1{
    
    _itm1 = [[Item alloc]init];
    _itm1.itemName = @"pants";
    _itm1.quantity = 5;
    _itm1.price = 109.99;
    
    _itm2 = [[Item alloc]init];
    _itm2.itemName = @"shoes";
    _itm2.quantity = 10;
    _itm2.price = 300.99;
    
    _itm3 = [[Item alloc]init];
    _itm3.itemName = @"shirts";
    _itm3.quantity = 10;
    _itm3.price = 99.99;
    
    _itm4 = [[Item alloc]init];
    _itm4.itemName = @"dress";
    _itm4.quantity = 10;
    _itm4.price = 499.99;
    
    if (_list1 == nil)
        _list1 = [[NSMutableArray alloc]initWithObjects: _itm1, _itm2, _itm3, _itm4,  nil];
    
    return _list1;
}
@end
