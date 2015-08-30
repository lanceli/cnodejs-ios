//
//  TopicCell.h
//  cnodejs
//
//  Created by Lance Li on 8/30/15.
//  Copyright (c) 2015 Lance Li. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TopicCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIImageView *avatarImageView;
@property (strong, nonatomic) IBOutlet UILabel *topicTitleLabel;
@property (strong, nonatomic) IBOutlet UILabel *topicAuthorLabel
;
@property (strong, nonatomic) IBOutlet UILabel *tabLabel;

@end
