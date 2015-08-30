//
// Auto Create JsonModel File
// TopicsJsonModel.h
//
//

#import "JSONModel.h"
#import "TopicsDataItemJsonModel.h"



@interface TopicsJsonModel : JSONModel


@property (nonatomic, strong) NSArray<Optional, TopicsDataItemJsonModel> *data;

@end