//
//  SceneDelegate.m
//  SwiftUIWidget
//
//  Created by 翁培钧 on 2020/11/22.
//

#import "SceneDelegate.h"
#import "WidgetURLViewController.h"
#import "LinkViewController.h"

@implementation SceneDelegate

- (void)scene:(UIScene *)scene openURLContexts:(NSSet<UIOpenURLContext *> *)URLContexts {
    if (URLContexts.allObjects.count != 0) {
        UIOpenURLContext *urlContext = URLContexts.allObjects.firstObject;
        NSURL *url = urlContext.URL;
        if ([url.absoluteString isEqualToString:@"urlschema://pjhubsWidgetURL"]) {
            [self.window.rootViewController presentViewController:[WidgetURLViewController new] animated:YES completion:nil];
        }
        
        if ([url.absoluteString isEqualToString:@"urlschema://pjhubsLink"]) {
            [self.window.rootViewController presentViewController:[LinkViewController new] animated:YES completion:nil];
        }
    }
    
}

@end
