//
//  ViewController.m
//  TipCalculator
//
//  Created by Sofia Knezevic on 2017-02-17.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;

@property (nonatomic, assign) CGFloat defaultTip;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.defaultTip = 0.15;
    
    
}

- (IBAction)calculateTip:(UIButton *)sender {
    
    double billAmount = [self.billAmountTextField.text floatValue];
    
    double tipAmount;
    
    if([self.tipPercentageTextField.text floatValue]){
        
        tipAmount = (billAmount * [self.tipPercentageTextField.text floatValue]);
        
    }else{
    
        
        tipAmount = (billAmount * self.defaultTip);
    }
    
    NSString *tipAmountText = [NSString stringWithFormat:@"You should tip $%0.2f", tipAmount];
    
    self.tipAmountLabel.text = tipAmountText;
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
