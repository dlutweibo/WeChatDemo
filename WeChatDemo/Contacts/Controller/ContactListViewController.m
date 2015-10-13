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
    [self loadContacts];
    _groups = [[NSMutableArray alloc] initWithArray:[_contacts allKeys]];
    [_groups sortUsingSelector:@selector(compare:)];
    [_groups removeObject:@"↑"];
    [_groups insertObject:@"↑" atIndex:0];
}

- (void) setLabelTags{
    ContactItem *item = [ContactItem new];
    NSMutableArray *items = [[NSMutableArray alloc] init];
    item.nickName =  item.markName = @"新的朋友";
    item.avatar = [UIImage imageNamed:@"plugins_FriendNotify.png"];
    [items addObject:item];
    
    ContactItem *item1 = [ContactItem new];
    item1.nickName = item1.markName = @"群聊";
    item1.avatar = [UIImage imageNamed:@"add_friend_icon_addgroup.png"];
    [items addObject:item1];
    
    ContactItem *item2 = [ContactItem new];
    item2.nickName = item2.markName = @"标签";
    item2.avatar = [UIImage imageNamed:@"Contact_icon_ContactTag.png"];
    [items addObject:item2];

    ContactItem *item3 = [ContactItem new];
    item3.nickName = item3.markName = @"公众号";
    item3.avatar = [UIImage imageNamed:@"add_friend_icon_offical.png"];
    [items addObject:item3];
 
    [self.contacts setObject:items forKey:@"↑"];
}

- (void) loadContacts {
    
    for (int i = 0; i < 4; i++) {
        NSMutableArray *items = [NSMutableArray new];

        for (int j = 0; j < 5; j++) {
            ContactItem *item = [ContactItem new];
            item.nickName = item.markName = [NSString stringWithFormat:@"ceshi %d", j];
            item.alif = [NSString getPinYinAlif:item.markName];
            item.avatar = [UIImage imageNamed:[NSString stringWithFormat:@"%d.png", 1 + arc4random() % 8]];
            item.moto = @"其实我感觉这字有点大？youyouyouyouyouyoudianda";
            [items addObject:item];
        }
        [self.contacts setObject:items forKey:[NSString stringWithFormat:@"%d", i]];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view delegate

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        return 0;
    }
    return 5;
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
    ContactListCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactListCell"];
    NSString *index = [_groups objectAtIndex:indexPath.section];
    NSArray *contactsInGroup = [[_contacts objectForKey:index] copy];
    cell.contact = [contactsInGroup objectAtIndex:indexPath.row];
    
    // Configure the cell...
    
    return cell;
}

- (NSArray *) sectionIndexTitlesForTableView: (UITableView *)tableView{
    return _groups;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        return nil;
    }
    return _groups[section];
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    if (section == _groups.count - 1) {
        int sum = 0;
        for (int i = 1; i < _groups.count; i++) {
            sum += [[_contacts objectForKey:_groups[i]] count] ;
        }
        return [NSString stringWithFormat:@"共%d个联系人", sum];
    }
    return nil;
}

// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    if (indexPath.section == 0) {
        return NO;
    }
    return YES;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }  
}


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
