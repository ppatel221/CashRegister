//
//  ViewController.m
//  CashRegister
//
//  Created by Parth Patel on 2018-02-22.
//  Copyright © 2018 Seneca College. All rights reserved.
//

#import "ViewController.h"
#import "cashRegisterModel.h"
#import "Item.h"
#import "ManagerController.h"
#import "AddedItem.h"
#import "HistoryController.h"
#import "ShoppingBag.h"
#import "RestockController.h"
@interface ViewController ()<UIPickerViewDelegate, UIPickerViewDataSource, nextViewControllerDelegate>
@property (nonatomic,strong)cashRegisterModel* myModel;
@property (nonatomic,strong)AddedItem* itemInBag;
@property (nonatomic,strong)NSMutableArray* ShoppingList;

@property (nonatomic,strong)ShoppingBag* myBag;

@property (weak, nonatomic) IBOutlet UIPickerView *pickerView1;

@end

@implementation ViewController
NSInteger i;
HistoryController *hs;
ManagerController *vm;
NSMutableArray *list;
NSInteger counter;
-(cashRegisterModel*)myModel{
    
    if (_myModel == nil)
        _myModel = [[cashRegisterModel alloc]init];
    
    return _myModel;
    
}
-(void)viewWillAppear:(BOOL)animated {
    [self.pickerView1 reloadAllComponents];

}
-(void)restockDoneUpdatingCashRegister : (cashRegisterModel*)p{
    self.myModel = p;
   // [self.pickerView1 reloadAllComponents];
    [self.navigationController popViewControllerAnimated:YES];
}

-(ShoppingBag*)myBag{
    if (_myBag == nil)
        _myBag = [[ShoppingBag alloc]init];
    
    return _myBag;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"manager"]){
        ManagerController *his = (ManagerController *)segue.destinationViewController;
        his.mItems = _ShoppingList;
        his.reStock = _myModel;
        //vm = [segue destinationViewController];
        //_itm = list;
        //h.items = list;
        //vm.mItems = _ShoppingList;
    
    }
}
- (void)viewDidLoad {
    [super viewDidLoad];
    firstEntry = NULL;
    self.quantity.text=@"";
    self.price.text=@"";
    self.item.text=@"";
    list = [[NSMutableArray alloc]init];
    _itemInBag = [[AddedItem alloc]init];
    _ShoppingList = [[NSMutableArray alloc]init];
    counter =0;

    
    // Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)DigitPressed:(id)sender{
    firstEntry = [sender currentTitle];
    
    
    self.quantity.text = [_quantity.text stringByAppendingString:firstEntry];
    
}
-(IBAction)Enter_pressed:(id)sender{
    
    firstEntry = _quantity.text;
    
    //int i = [firstEntry intValue];
    
    //[_itm pushItem:i];
    
    double totalPrice;
    int numOfItems;
    
    
    Item *cashM = [self.myModel.list1 objectAtIndex:i];
    
    self.item.text = [NSString stringWithFormat: @"%@", cashM.itemName];
    //self.quantity.text = [NSString stringWithFormat: @"%d", cashM.quantity];
    
    if(_quantity != nil ){
        
        numOfItems = cashM.quantity - _quantity.text.intValue;
        if(numOfItems >= 0){
            totalPrice = _quantity.text.intValue * cashM.price;
            self.price.text = [NSString stringWithFormat: @"%.2f", totalPrice];
            cashM.quantity = cashM.quantity - _quantity.text.intValue;
            [self.pickerView1 reloadAllComponents];
            //[list addObject:[NSString stringWithString:cashM.itemName]];
            //history.itm = itm;
            //hs.items = @[@"_itm",@"test"];
            _itemInBag = [[AddedItem alloc]init];
            _itemInBag.itemName = cashM.itemName;
            _itemInBag.quantity = _quantity.text.intValue;
            _itemInBag.price = totalPrice;
            _itemInBag.date = [NSDate date];
            [_ShoppingList insertObject:_itemInBag atIndex:counter];
            counter++;
           
            hs.items = _ShoppingList;
            
            
            
            
            
        }
    }
    
    self.quantity.text = @"";
    


    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return self.myModel.list1.count;
}

- (nullable NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
   
    Item *cashM = [self.myModel.list1 objectAtIndex:row];
    
    return [NSString stringWithFormat:@"%@ %d price: %.2f", cashM.itemName, cashM.quantity, cashM.price];
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    
    Item *cashM = [self.myModel.list1 objectAtIndex:row];
    i = row;
    self.item.text = [NSString stringWithFormat: @"%@", cashM.itemName];
}
@end
