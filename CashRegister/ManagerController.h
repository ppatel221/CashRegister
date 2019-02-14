//
//  ManagerController.h
//  CashRegister
//
//  Created by Parth Patel on 2018-03-10.
//  Copyright © 2018 Seneca College. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cashRegisterModel.h"
@interface ManagerController : UIViewController
{
    ManagerController *manager;
}
@property(strong, nonatomic) NSMutableArray *mItems;
@property(strong, nonatomic) cashRegisterModel *reStock;

@end
