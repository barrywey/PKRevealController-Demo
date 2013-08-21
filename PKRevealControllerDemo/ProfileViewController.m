//
//  ProfileViewController.m
//  PKRevealControllerDemo
//
//  Created by Barry Wey on 8/21/13.
//  Copyright (c) 2013 Barry Wey. All rights reserved.
//

#import "ProfileViewController.h"
#import "PKRevealController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:@"Porifle"];
    //左上角导航按钮
    UIBarButtonItem *btnLeft = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(showLeftView)];
    self.navigationItem.leftBarButtonItem = btnLeft;
}

#pragma mark -
#pragma mark Event Hanlde
//按钮点击事件
- (void) showLeftView {
    [self.navigationController.revealController showViewController:self.navigationController.revealController.leftViewController];
}


@end
