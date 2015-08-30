//
// Auto Create JsonModel File
// TopicsDataItemJsonModel.h
//
//

#import "JSONModel.h"

@protocol TopicsDataItemJsonModel

@end
#import "TopicsAuthorJsonModel.h"



@interface TopicsDataItemJsonModel : JSONModel

@property (nonatomic, strong) NSNumber<Optional> *visit_count;
@property (nonatomic, strong) NSNumber<Optional> *good;

@property (nonatomic, strong) TopicsAuthorJsonModel<Optional> *author;
@property (nonatomic, strong) NSString<Optional> *title;
@property (nonatomic, strong) NSString<Optional> *last_reply_at;
@property (nonatomic, strong) NSNumber<Optional> *top;
@property (nonatomic, strong) NSString<Optional> *create_at;
@property (nonatomic, strong) NSString<Optional> *content;
@property (nonatomic, strong) NSNumber<Optional> *reply_count;
@property (nonatomic, strong) NSString<Optional> *tab;
@property (nonatomic, strong) NSString<Optional> *author_id;
@property (nonatomic, strong) NSString<Optional> *id;

@end