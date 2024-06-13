
#ifdef RCT_NEW_ARCH_ENABLED
#import "RNGoldenTemplateSpec.h"

@interface GoldenTemplate : NSObject <NativeGoldenTemplateSpec>
#else
#import <React/RCTBridgeModule.h>

@interface GoldenTemplate : NSObject <RCTBridgeModule>
#endif

@end
