//
//  AddedItem.h
//  CashRegister
//
//  Created by Parth Patel on 2018-03-11.
//  Copyright © 2018 Seneca College. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddedItem : NSObject

@property NSString *itemName;
@property int quantity;
@property double price;
@property (nonatomic,strong) NSMutableArray* list1;
@property (nonatomic,strong) NSDate* date;
@end
