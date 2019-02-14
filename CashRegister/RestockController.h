//
//  RestockController.h
//  CashRegister
//
//  Created by Parth Patel on 2018-03-10.
//  Copyright © 2018 Seneca College. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cashRegisterModel.h"
#import "Item.h"
@protocol nextViewControllerDelegate

@required
-(void)restockDoneUpdatingCashRegister : (cashRegisterModel*)p;

@end
@interface RestockController : UIViewController <UITableViewDelegate, UITableViewDataSource>{
    

IBOutlet UITableView *tableView;
}
@property(strong, nonatomic) cashRegisterModel *stock;
@property (strong, nonatomic) IBOutlet UITextField *addQuantity;
- (IBAction)addQuantityBttn:(id)sender;
@property (nonatomic,strong)id<nextViewControllerDelegate> myDelegate;


@end

