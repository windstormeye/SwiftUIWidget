//
//  WidgetURLViewController.m
//  SwiftUIWidget
//
//  Created by 翁培钧 on 2020/11/23.
//

#import "WidgetURLViewController.h"

@interface WidgetURLViewController ()

@end

@implementation WidgetURLViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *textLabel = [[UILabel alloc] init];
    textLabel.text = @"这是 widgetURL 进来的页面";
    textLabel.font = [UIFont systemFontOfSize:30];
    [textLabel sizeToFit];
    textLabel.frame = CGRectMake((self.view.frame.size.width - textLabel.frame.size.width)/2, (self.view.frame.size.height - textLabel.frame.size.height)/2, textLabel.frame.size.width, textLabel.frame.size.height);
    [self.view addSubview:textLabel];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
