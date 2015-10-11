//
//  ContactListViewController.m
//  WeChatDemo
//
//  Created by 魏博 on 15/10/10.
//  Copyright © 2015年 魏博. All rights reserved.
//

#import "ContactListViewController.h"

@interface ContactListViewController ()

@end

@implementation ContactListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _contacts = [[NSMutableDictionary alloc] init];
    [self setLabelTags];
    _groups = [[NSMutableArray alloc] initWithArray:[_contacts allKeys]];

}

- (void) setLabelTags{
    ContactItem *item = [ContactItem new];
    NSMutableArray *items = [[NSMutableArray alloc] init];
    item.markName = @"新的朋友";
    item.avatar = [UIImage imageNamed:@"plugins_FriendNotify.png"];
    [items addObject:item];
    
    ContactItem *item1 = [ContactItem new];
    item1.markName = @"群聊";
    item1.avatar = [UIImage imageNamed:@"add_friend_icon_addgroup.png"];
    [items addObject:item1];
    
    ContactItem *item2 = [ContactItem new];
    item2.markName = @"标签";
    item2.avatar = [UIImage imageNamed:@"Contact_icon_ContactTag.png"];
    [items addObject:item2];

    ContactItem *item3 = [ContactItem new];
    item3.markName = @"公众号";
    item3.avatar = [UIImage imageNamed:@"add_friend_icon_offical.png"];
    [items addObject:item3];
 
    [self.contacts setObject:items forKey:@"↑"];
}

- (void) loadContacts {
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _groups.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSString *index = [_groups objectAtIndex:section];
    NSUInteger count = [[_contacts objectForKey:index] count];
    return count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactListCell"];
    NSString *index = [_groups objectAtIndex:indexPath.section];
    NSArray *contactsInGroup = [[_contacts objectForKey:index] copy];
    ContactItem *item = [contactsInGroup objectAtIndex:indexPath.row];
    cell.imageView.image = item.avatar;
    cell.textLabel.text = item.markName;
    
    // Configure the cell...
    
    return cell;
}

- (NSArray *) sectionIndexTitlesForTableView: (UITableView *)tableView{
    return _groups;
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

@end
