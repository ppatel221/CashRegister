//
//  RestockController.m
//  CashRegister
//
//  Created by Parth Patel on 2018-03-10.
//  Copyright © 2018 Seneca College. All rights reserved.
//

#import "RestockController.h"
#import "cashRegisterModel.h"
#import "AddedItem.h"
#import "Item.h"
#import "ViewController.h"
@interface RestockController ()
{
    NSArray *test;

}
@end
NSInteger m;
@implementation RestockController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    test = @[@"One", @"Two" , @"Three"];
    m=0;
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

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.stock.list1.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"restockRow" forIndexPath:indexPath];
    
    //AddedItem *a = [self.items objectAtIndex:indexPath.row];
    //Item *cashM = [self.myModel.list1 objectAtIndex:row];
    // Configure the cell...
    
    
    Item *a = [self.stock.list1 objectAtIndex:indexPath.row];
    //Item *cashM = [self.myModel.list1 objectAtIndex:row];
    // Configure the cell...
    cell.textLabel.text = [NSString stringWithFormat:@"%@ : %d and the total is: %.2f", a.itemName, a.quantity, a.price];
    
    
    //cell.textLabel.text =test[indexPath.row];
    
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    //i = indexPath;
    
    //Item *cashM = [self.stock.list1 objectAtIndex:indexPath.row];
    m = indexPath.row;
    
}

-(IBAction)addQuantityBttn:(id)sender{
    Item *change = [self.stock.list1 objectAtIndex:m];
    change.quantity = change.quantity + _addQuantity.text.intValue;
    [tableView reloadData];
    [self.myDelegate restockDoneUpdatingCashRegister:self.stock];
    _addQuantity.text = @"";
}

@end
