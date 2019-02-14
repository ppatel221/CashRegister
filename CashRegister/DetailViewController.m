//
//  DetailViewController.m
//  CashRegister
//
//  Created by Parth Patel on 2018-03-15.
//  Copyright © 2018 Seneca College. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _itemName.text = _detItem.itemName;
    _quantity.text = [NSString stringWithFormat:@"%d", _detItem.quantity];
    _price.text = [NSString stringWithFormat:@"%.2f", _detItem.price];
    _date.text = [NSString stringWithFormat:@"%@", _detItem.date];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
