//
//  ViewController.h
//  ObjC_UserDefaults_Text
//
//  Created by Илья Юхновский on 11.07.2018.
//  Copyright © 2018 Илья Юхновский. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *Textfield;
@property (weak, nonatomic) IBOutlet UILabel *Label;
- (IBAction)Save:(id)sender;
- (IBAction)Load:(id)sender;

- (IBAction)DismissKeyboard:(id)sender;

@end

