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
    [self.tableView setSectionIndexBackgroundColor:[UIColor clearColor]];
    [self.tableView setSectionIndexColor:[UIColor blackColor]];
    //[self.tableView setSectionFooterHeight:0];
    [_searchBar.layer setBorderWidth:0.5];
    [_searchBar.layer setBorderColor:[UIColor headerColor].CGColor];
    _metaData = [[NSMutableArray alloc] init];
    _functions = [[NSMutableArray alloc] init];
    [self setLabelTags];
    [self loadContacts];
    [self setFooterView];
}

- (void) setFooterView {
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, WIDTH_SCREEN, 49.0f)];
    [label setFont:[UIFont systemFontOfSize:14.5]];
    [label setBackgroundColor:[UIColor headerColor]];
    [label setTextColor:[UIColor grayColor]];
    [label setTextAlignment:NSTextAlignmentCenter];
    [label setText:[NSString stringWithFormat:@"共有%lu个联系人", [_metaData count]]];
    [self.tableView setTableFooterView:label];
}

- (void) setLabelTags{
    ContactItem *item = [ContactItem new];
    item.nickName =  item.markName = @"新的朋友";
    item.avatar = [UIImage imageNamed:@"plugins_FriendNotify.png"];
    [_functions addObject:item];
    
    ContactItem *item1 = [ContactItem new];
    item1.nickName = item1.markName = @"群聊";
    item1.avatar = [UIImage imageNamed:@"add_friend_icon_addgroup.png"];
    [_functions addObject:item1];
    
    ContactItem *item2 = [ContactItem new];
    item2.nickName = item2.markName = @"标签";
    item2.avatar = [UIImage imageNamed:@"Contact_icon_ContactTag.png"];
    [_functions addObject:item2];

    ContactItem *item3 = [ContactItem new];
    item3.nickName = item3.markName = @"公众号";
    item3.avatar = [UIImage imageNamed:@"add_friend_icon_offical.png"];
    [_functions addObject:item3];
 }

- (void) loadContacts {
    NSArray *testName = @[@"赵", @"钱", @"孙", @"李", @"周", @"吴", @"郑", @"王", @"冯", @"陈", @"啊", @"贝"];
    for (int i = 0; i < 20; i++) {
        ContactItem *item = [ContactItem new];
        item.nickName = item.markName = [NSString stringWithFormat:@"%@ %d",testName[arc4random() % 12], arc4random() % 12];
        item.alif = [NSString getPinYinAlif:item.markName];
        item.avatar = [UIImage imageNamed:[NSString stringWithFormat:@"%d.png", 1 + arc4random() % 8]];
        [_metaData addObject:item];
    }
    _contacts = [DemoTool getDataWithArray:_metaData];
    _groups = [DemoTool getSectionWtihArray:_contacts];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view delegate
- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 54.0f;
}

- (CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        return 0;
    }
    return 20.0f;
}

- (UIView *) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        return nil;
    }
    
    id label = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"headerView"];
    if (label == nil) {
        label = [[UILabel alloc] init];
        [label setFont:[UIFont systemFontOfSize:14.5]];
        [label setTextColor:[UIColor grayColor]];
        [label setBackgroundColor:[UIColor headerColor]];
    }
    [label setText:[NSString stringWithFormat:@"   %@", [_groups objectAtIndex:section]]];
    return label;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _groups.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return [_functions count];
    }
    NSArray *array = [_contacts objectAtIndex:section - 1];
    return [array count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ContactListCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactListCell"];
    if (indexPath.section == 0) {
        cell.contact = _functions[indexPath.row];
    }else{
        NSArray *array = [_contacts objectAtIndex:indexPath.section - 1];
        ContactItem *item = [array objectAtIndex:indexPath.row];
        cell.contact = item;
    }
    
    
    // Configure the cell...
    
    return cell;
}

- (NSArray *) sectionIndexTitlesForTableView: (UITableView *)tableView{
    return _groups;
}

- (NSInteger) tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index{
    if (index == 0) {
        [self.tableView scrollRectToVisible:_searchBar.frame animated:NO];
        return -1;
    }else{
        return index;
    }
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
