//
//  ViewController.m
//  13.4.2 单个对象归档、解档
//
//  Created by 李维佳 on 2017/4/5.
//  Copyright © 2017年 Liz. All rights reserved.
//

#import "ViewController.h"
#import "ArchiveService.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)writeString:(id)sender {
    [ArchiveService writeStringToArchiveFile:self.nameTextField.text];
    
}
- (IBAction)readString:(id)sender {
    
    NSLog(@"%@",[ArchiveService readStringFromArchiveFile]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
