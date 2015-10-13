//
//  DiscoverListViewController.m
//  WeChatDemo
//
//  Created by 魏博 on 15/10/10.
//  Copyright © 2015年 魏博. All rights reserved.
//

#import "DiscoverListViewController.h"

@interface DiscoverListViewController ()

@end

@implementation DiscoverListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setData];
    
}

- (void) setData {
    DiscoverItem *item = [DiscoverItem new];
    item.title = @"朋友圈";
    item.image = [UIImage imageNamed:@"ff_IconShowAlbum.png"];
    NSArray *array0 = [NSArray arrayWithObject:item];
    
    DiscoverItem *item1 = [DiscoverItem new];
    item1.title = @"扫一扫";
    item1.image = [UIImage imageNamed:@"ff_IconQRCode.png"];
    DiscoverItem *item2 = [DiscoverItem new];
    item2.title = @"摇一摇";
    item2.image = [UIImage imageNamed:@"ff_IconShake.png"];
    NSArray *array1 = [NSArray arrayWithObjects:item1, item2, nil];
    
    DiscoverItem *item3 = [DiscoverItem new];
    item3.title = @"附近的人";
    item3.image = [UIImage imageNamed:@"ff_IconLocationService.png"];
    DiscoverItem *item4 = [DiscoverItem new];
    item4.title = @"漂流瓶";
    item4.image = [UIImage imageNamed:@"ff_IconBottle.png"];
    NSArray *array2 = [NSArray arrayWithObjects:item3, item4, nil];
    
    DiscoverItem *item5 = [DiscoverItem new];
    item5.title = @"购物";
    item5.detail = @"京东商城";
    item5.image = [UIImage imageNamed:@"ff_IconShop.png"];
    DiscoverItem *item6 = [DiscoverItem new];
    item6.title = @"游戏";
    item6.image = [UIImage imageNamed:@"MoreGame.png"];
    NSArray *array3 = [NSArray arrayWithObjects:item5, item6, nil];
    
    _discovers = [NSMutableArray arrayWithObjects:array0, array1, array2, array3, nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _discovers.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_discovers[section] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    DiscoverListCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DiscoverListCell" forIndexPath:indexPath];
    cell.item = [_discovers[indexPath.section] objectAtIndex:indexPath.row];
    // Configure the cell...
    
    return cell;
}

- (CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 10;
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
