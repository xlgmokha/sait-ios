
@interface Human : NSObject
@property (strong, nonatomic) NSString* name;
-(NSString *)sayHello;
@end

@implementation Human
-(NSString *)sayHello
{
  return @"HELLO";
}
@end
