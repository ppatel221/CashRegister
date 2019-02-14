//
//  DetailViewController.h
//  CashRegister
//
//  Created by Parth Patel on 2018-03-15.
//  Copyright © 2018 Seneca College. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddedItem.h"
@interface DetailViewController : UIViewController
@property(strong, nonatomic) AddedItem *detItem;
@property (strong, nonatomic) IBOutlet UILabel *itemName;
@property (strong, nonatomic) IBOutlet UILabel *quantity;
@property (strong, nonatomic) IBOutlet UILabel *price;
@property (strong, nonatomic) IBOutlet UILabel *date;


@end
