#ifdef RCT_NEW_ARCH_ENABLED
#import "GoldenTemplateView.h"

#import <react/renderer/components/RNGoldenTemplateSpec/ComponentDescriptors.h>
#import <react/renderer/components/RNGoldenTemplateSpec/EventEmitters.h>
#import <react/renderer/components/RNGoldenTemplateSpec/Props.h>
#import <react/renderer/components/RNGoldenTemplateSpec/RCTComponentViewHelpers.h>

#import "RCTFabricComponentsPlugins.h"
#import "Utils.h"

using namespace facebook::react;

@interface GoldenTemplateView () <RCTGoldenTemplateViewViewProtocol>

@end

@implementation GoldenTemplateView {
    UIView * _view;
}

+ (ComponentDescriptorProvider)componentDescriptorProvider
{
    return concreteComponentDescriptorProvider<GoldenTemplateViewComponentDescriptor>();
}

- (instancetype)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
    static const auto defaultProps = std::make_shared<const GoldenTemplateViewProps>();
    _props = defaultProps;

    _view = [[UIView alloc] init];

    self.contentView = _view;
  }

  return self;
}

- (void)updateProps:(Props::Shared const &)props oldProps:(Props::Shared const &)oldProps
{
    const auto &oldViewProps = *std::static_pointer_cast<GoldenTemplateViewProps const>(_props);
    const auto &newViewProps = *std::static_pointer_cast<GoldenTemplateViewProps const>(props);

    if (oldViewProps.color != newViewProps.color) {
        NSString * colorToConvert = [[NSString alloc] initWithUTF8String: newViewProps.color.c_str()];
        [_view setBackgroundColor: [Utils hexStringToColor:colorToConvert]];
    }

    [super updateProps:props oldProps:oldProps];
}

Class<RCTComponentViewProtocol> GoldenTemplateViewCls(void)
{
    return GoldenTemplateView.class;
}

@end
#endif
