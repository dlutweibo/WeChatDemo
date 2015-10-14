//
//  MeListViewController.m
//  WeChatDemo
//
//  Created by 魏博 on 15/10/10.
//  Copyright © 2015年 魏博. All rights reserved.
//

#import "MeListViewController.h"

@interface MeListViewController ()

@end

@implementation MeListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setData];
}

- (void) setData {
    User *item = [User new];
    item.nickName = @"我是昵称";
    item.ID = @"**************";
//    item.avatar = [UIImage imageNamed:@"1.png"];
    NSArray *array0 = [NSArray arrayWithObject:item];
    
    DiscoverItem *item1 = [DiscoverItem new];
    item1.title = @"相册";
    item1.image = [UIImage imageNamed:@"MoreMyAlbum.png"];
    DiscoverItem *item2 = [DiscoverItem new];
    item2.title = @"收藏";
    item2.image = [UIImage imageNamed:@"MoreMyFavorites.png"];
    NSArray *array1 = [NSArray arrayWithObjects:item1, item2, nil];
    
    DiscoverItem *item3 = [DiscoverItem new];
    item3.title = @"钱包";
    item3.image = [UIImage imageNamed:@"MoreMyBankCard.png"];
    DiscoverItem *item4 = [DiscoverItem new];
    item4.title = @"卡包";
    item4.image = [UIImage imageNamed:@"MyCardPackageIcon.png"];
    NSArray *array2 = [NSArray arrayWithObjects:item3, item4, nil];
    
    DiscoverItem *item5 = [DiscoverItem new];
    item5.title = @"表情";
    item5.image = [UIImage imageNamed:@"MoreExpressionShops.png"];
    NSArray *array3 = [NSArray arrayWithObject:item5];
    
    DiscoverItem *item6 = [DiscoverItem new];
    item6.title = @"设置";
    item6.image = [UIImage imageNamed:@"MoreSetting.png"];
    NSArray *array4 = [NSArray arrayWithObject:item6];
    
    _datas = [NSArray arrayWithObjects:array0, array1, array2, array3, array4, nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _datas.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_datas[section] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        MeListUserCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MeListUserCell" forIndexPath:indexPath];
        cell.user = [_datas[indexPath.section] objectAtIndex:indexPath.row];
        return cell;
    }
     MeListFunctionCell*cell = [tableView dequeueReusableCellWithIdentifier:@"MeListFunctionCell" forIndexPath:indexPath];
    cell.item = [_datas[indexPath.section] objectAtIndex:indexPath.row];
    
    // Configure the cell...
    
    return cell;
}

#pragma mark - Table view delegate

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        return 90;
    }
    return 44;
}

- (CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 8;
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
