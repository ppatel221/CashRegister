//
//  HistoryController.h
//  CashRegister
//
//  Created by Parth Patel on 2018-03-11.
//  Copyright © 2018 Seneca College. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddedItem.h"
@interface HistoryController : UITableViewController
@property(strong, nonatomic) NSMutableArray *items;
@property(strong, nonatomic) AddedItem *a;
@end
