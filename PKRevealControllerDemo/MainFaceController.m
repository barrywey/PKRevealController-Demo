//
//  MainFaceController.m
//  PKRevealControllerDemo
//
//  Created by Barry Wey on 8/21/13.
//  Copyright (c) 2013 Barry Wey. All rights reserved.
//

#import "MainFaceController.h"
#import "PKRevealController.h"

@interface MainFaceController ()

@property (weak, nonatomic) IBOutlet UILabel *lblWelcome;

@end

@implementation MainFaceController

@synthesize greetingMessage = _greetingMessage;

-(NSString*) greetingMessage
{
    if(!_greetingMessage)
    {
        return [NSString stringWithFormat:@"It's now %@", [NSDate date]];
    } else
    {
        return _greetingMessage;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //设置当前标题
    [self setTitle:@"Home"];
    //设置标题栏上左边的按钮
    UIBarButtonItem *btnLeft = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(showLeftView)];
    self.navigationItem.leftBarButtonItem = btnLeft;
}

#pragma mark -
#pragma mark Event Hanlde

//按钮点击事件
- (void) showLeftView {
    [self.navigationController.revealController showViewController:self.navigationController.revealController.leftViewController];
}

- (void) viewDidAppear:(BOOL)animated
{
    [self.lblWelcome setText:self.greetingMessage];
}

@end
