//
//  ViewController.h
//  CashRegister
//
//  Created by Parth Patel on 2018-02-22.
//  Copyright © 2018 Seneca College. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cashRegisterModel.h"
#import "HistoryController.h"
@interface ViewController : UIViewController{
    NSString *firstEntry;

}
- (IBAction)DigitPressed:(id)sender;
- (IBAction)Enter_pressed:(id)sender;

@property (nonatomic, weak) HistoryController *history;

@property (nonatomic, weak) NSMutableArray *itm;


@property (strong, nonatomic) IBOutlet UILabel *quantity;
@property (strong, nonatomic) IBOutlet UILabel *price;
@property (strong, nonatomic) IBOutlet UILabel *item;


@end

