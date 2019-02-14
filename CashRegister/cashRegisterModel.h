//
//  cashRegisterModel.h
//  CashRegister
//
//  Created by Parth Patel on 2018-02-22.
//  Copyright © 2018 Seneca College. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"

@interface cashRegisterModel : NSObject

@property (nonatomic,strong) NSMutableArray* list1;
@property (nonatomic, strong) Item* itm1;
@property (nonatomic, strong) Item* itm2;
@property (nonatomic, strong) Item* itm3;
@property (nonatomic, strong) Item* itm4;

@end
