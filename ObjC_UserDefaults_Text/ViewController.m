//
//  ViewController.m
//  ObjC_UserDefaults_Text
//
//  Created by Илья Юхновский on 11.07.2018.
//  Copyright © 2018 Илья Юхновский. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)Save:(id)sender {
    NSString *savestring = self.Label.text;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:savestring forKey:@"savedstring"];
    [defaults synchronize];
}

- (IBAction)Load:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *loadstring = [defaults objectForKey:@"savedstring"];
    [self.Label setText:loadstring];
}

- (IBAction)DismissKeyboard:(id)sender {
    [self resignFirstResponder];
    self.Label.text = self.Textfield.text;
}
@end
