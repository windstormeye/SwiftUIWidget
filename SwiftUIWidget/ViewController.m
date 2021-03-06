//
//  ViewController.m
//  SwiftUIWidget
//
//  Created by 翁培钧 on 2020/11/22.
//

#import "ViewController.h"
#import "SwiftUIWidget-HeaderPrefix.h"
#import "SwiftUIWidget-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *textLabel = [[UILabel alloc] init];
    textLabel.text = @"这是 OC 页面";
    textLabel.font = [UIFont systemFontOfSize:30];
    [textLabel sizeToFit];
    textLabel.frame = CGRectMake((self.view.frame.size.width - textLabel.frame.size.width)/2, (self.view.frame.size.height - textLabel.frame.size.height)/2, textLabel.frame.size.width, textLabel.frame.size.height);
    [self.view addSubview:textLabel];
            
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [PJWidgetCenter reloadWidgetTimeline];
    });
}


@end
