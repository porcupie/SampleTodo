//
//  DoItListTableViewController.m
//  SampleTodo
//
//  Created by d on 11/2/15.
//  Copyright (c) 2015 d. All rights reserved.
//

#import "DoItListTableViewController.h"
#import "DoItItem.h"

@interface DoItListTableViewController ()

@property NSMutableArray *doItItems;

@end

@implementation DoItListTableViewController


// Tutorial: Add Data -- in a real app, this would load stored items
// private method
- (void)loadInitialData {
    DoItItem *item1 = [DoItItem new];
    item1.itemName = @"Buy Sweet Brown Rice";
    DoItItem *item2 = [DoItItem new];
    item2.itemName = @"Buy Miso Paste";
    DoItItem *item3 = [DoItItem new];
    item3.itemName = @"Hike Lookout Peak";
    DoItItem *item4 = [DoItItem new];
    item4.itemName = @"Something Something Darkside";
    
    [self.doItItems addObject:item1];
    [self.doItItems addObject:item2];
    [self.doItItems addObject:item3];
    [self.doItItems addObject:item4];
}


- (IBAction)unwindToList:(UIStoryboardSegue *)segue {
    
}


- (void)viewDidLoad {
    [super viewDidLoad];

    // Tutorial: Add Data - create the private array of items
    self.doItItems = [[NSMutableArray alloc] init];
    [self loadInitialData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    // Tutorial: Add Data -- only need 1 section for item lists
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (self.doItItems) {
        return [self.doItItems count];
    } else {
        return 0;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListPrototypeCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    // Tutorial: Add Data -- grab data info and set in cell
    DoItItem *doThis = [self.doItItems objectAtIndex:indexPath.row];
    cell.textLabel.text = doThis.itemName;
    NSLog(@"cell At Index %d=%@", (int)indexPath.row, doThis.itemName);
    
    // add the completion state icon 
    if (doThis.isCompleted) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    // In this method, you want to respond to a tap but not actually leave the cell selected. 
    // Add the following code to deselect the cell immediately after selection:

    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
    // Add this code line to search for the ToDoItem in your toDoItems array that corresponds to the cell that was tapped.
    DoItItem *tappedItem = [self.doItItems objectAtIndex:indexPath.row];
    
    // toggle completion state
    tappedItem.completed = !tappedItem.completed;
    
    // Tell the table view to reload the row whose data you just updated.
    [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
}

@end
