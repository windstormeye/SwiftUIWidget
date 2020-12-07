//
//  OCView.m
//  SwiftUIWidget
//
//  Created by 翁培钧 on 2020/11/24.
//

#import "OCView.h"

@implementation OCView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self initView];
    }
    return self;
}

- (void)initView {
    self.backgroundColor = [UIColor whiteColor];
    
    UILabel *textLabel = [[UILabel alloc] init];
    textLabel.text = @"这是 OC View";
    textLabel.font = [UIFont systemFontOfSize:30];
    [textLabel sizeToFit];
    textLabel.frame = CGRectMake((self.frame.size.width - textLabel.frame.size.width)/2, (self.frame.size.height - textLabel.frame.size.height)/2, textLabel.frame.size.width, textLabel.frame.size.height);
    [self addSubview:textLabel];
}

@end
