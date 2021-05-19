//
//  ViewController.m
//  EffectsDemo
//
//  Created by Tian on 2021/5/19.
//

#import "ViewController.h"
#import "CAEmitterCellTest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [[CAEmitterCellTest new] testCellWithView:self.view];
}

@end
