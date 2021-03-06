#import <SVGKit/CSSRuleList.h>
#import <SVGKit/CSSRuleList+Mutable.h>

@implementation CSSRuleList

@synthesize internalArray;

- (void)dealloc {
    self.internalArray = nil;
    [super dealloc];
}

- (id)init
{
    self = [super init];
    if (self) {
        self.internalArray = [NSMutableArray array];
    }
    return self;
}

-(unsigned long)length
{
	return self.internalArray.count;
}

-(CSSRule *)item:(unsigned long)index
{
	return (self.internalArray)[index];
}

-(NSString *)description
{
	return [NSString stringWithFormat:@"CSSRuleList: array(%@)", self.internalArray];
}

@end
