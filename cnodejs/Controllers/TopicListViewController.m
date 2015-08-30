//
//  TopicListViewController.m
//  cnodejs
//
//  Created by Lance Li on 8/30/15.
//  Copyright (c) 2015 Lance Li. All rights reserved.
//

#import "TopicListViewController.h"
#import "APIManager.h"
#import "TopicCell.h"
#import "UIImageView+AFNetworking.h"

@interface TopicListViewController () {
    TopicsJsonModel *topics;
}

@end

@implementation TopicListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //Setup delegate for navigation contorller
    [self.navigationController setDelegate:self];
    
    self.tableView.rowHeight = 73;
    
    [[APIManager sharedInstance] getTopics:^(TopicsJsonModel *data) {
        topics = data;
        [self.tableView reloadData];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [topics.data count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TopicCell *cell = [tableView dequeueReusableCellWithIdentifier:@"topicCell"];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"TopicCell" owner:nil options:nil] firstObject];
    }
    DDLogDebug(@"cell %@", cell);
    TopicsDataItemJsonModel *topic = topics.data[indexPath.row];
    [cell.avatarImageView setImageWithURL:[NSURL URLWithString:topic.author.avatar_url]];
    cell.topicTitleLabel.text = topic.title;
    cell.topicAuthorLabel.text = topic.author.loginname;
    return cell;
}

@end
