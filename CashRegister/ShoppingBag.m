//
//  ShoppingBag.m
//  CashRegister
//
//  Created by Parth Patel on 2018-03-14.
//  Copyright © 2018 Seneca College. All rights reserved.
//

#import "ShoppingBag.h"

@implementation ShoppingBag
-(NSMutableArray*) bag{
    
    if (_bag == nil)
        _bag = [[NSMutableArray alloc]init];
    
    return _bag;
}
@end

