//
//  ManagerController.m
//  CashRegister
//
//  Created by Parth Patel on 2018-03-10.
//  Copyright © 2018 Seneca College. All rights reserved.
//

#import "ManagerController.h"
#import "HistoryController.h"
#import "RestockController.h"
@interface ManagerController ()

@end

@implementation ManagerController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"historySeg"]){
        //NSString *intro = @"Hello my friends";
        HistoryController *hist = (HistoryController *)segue.destinationViewController;
        hist.items = _mItems;
       
        
        //vm = [segue destinationViewController];
        //_itm = list;
        //h.items = list;
        //vm.mItems = _ShoppingList;
        
    }else if([segue.identifier isEqualToString:@"restock"]){
        RestockController *rs = (RestockController *)segue.destinationViewController;
        rs.stock = _reStock;
    }
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
