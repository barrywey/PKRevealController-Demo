//
//  RevealControllerAppDelegate.m
//  PKRevealControllerDemo
//
//  Created by Barry Wey on 8/21/13.
//  Copyright (c) 2013 Barry Wey. All rights reserved.
//

#import "RevealControllerAppDelegate.h"
#import "PKRevealController.h"
#import "MainFaceController.h"
#import "LeftFaceController.h"  


@implementation RevealControllerAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    //主界面
    MainFaceController* mainFaceController = [[MainFaceController alloc] init];
    
    //菜单栏
    LeftFaceController* leftFaceController = [[LeftFaceController alloc] init];
    
    //构造PKRevealController对象
    UINavigationController *frontViewController = [[UINavigationController alloc] initWithRootViewController:mainFaceController];
    self.revealController = [PKRevealController revealControllerWithFrontViewController:frontViewController leftViewController:leftFaceController options:nil];

    //将其PKRevealController对象作为RootViewController
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = self.revealController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
