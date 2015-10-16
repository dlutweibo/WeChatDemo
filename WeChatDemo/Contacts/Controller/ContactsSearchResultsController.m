//
//  ContactsSearchResultsController.m
//  WeChatDemo
//
//  Created by 魏博 on 15/10/15.
//  Copyright © 2015年 魏博. All rights reserved.
//

#import "ContactsSearchResultsController.h"
#import "ContactItem.h"
#import "ContactListCell.h"

@implementation ContactsSearchResultsController

- (void) viewDidLoad{
    [super viewDidLoad];
    self.tableView.dataSource = self;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _filteredContacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ContactListCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"ContactListCell" forIndexPath:indexPath];
    cell.contact = _filteredContacts[indexPath.row];
    return cell;
}

@end
