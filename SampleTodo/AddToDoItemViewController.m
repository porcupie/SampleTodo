//
//  AddToDoItemViewController.m
//  SampleTodo
//
//  Created by d on 11/2/15.
//  Copyright (c) 2015 d. All rights reserved.
//

#import "AddToDoItemViewController.h"

@interface AddToDoItemViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@end

@implementation AddToDoItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.

    // Tutorial: Add Data: determine whether Save button was pressed (or not)
    if (sender != self.saveButton) return;
    
    // check whether use entered anything
    if (self.textField.text.length > 0) {
        self.toDoItem = [DoItItem new];
        self.toDoItem.itemName = self.textField.text;
        self.toDoItem.completed = NO;
    }
}


@end
