//
//  LeftFaceController.m
//  PKRevealControllerDemo
//
//  Created by Barry Wey on 8/21/13.
//  Copyright (c) 2013 Barry Wey. All rights reserved.
//

#import "LeftFaceController.h"
#import "MainFaceController.h"
#import "PKRevealController.h"
#import "ProfileViewController.h"   

@interface LeftFaceController ()

@property (strong,nonatomic) MainFaceController *mainFaceController;
@property (strong,nonatomic) ProfileViewController *profileViewController;

@end

@implementation LeftFaceController

@synthesize mainFaceController = _mainFaceController , profileViewController = _profileViewController;


- (ProfileViewController *) profileViewController {
    if(!_profileViewController)
    {
        _profileViewController = [[ProfileViewController alloc] init];
    }
    return _profileViewController;
}

- (MainFaceController *) mainFaceController
{
    if(!_mainFaceController)
    {
        _mainFaceController = [[MainFaceController alloc] init];
    }
    return _mainFaceController;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}


#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CellReuseIndentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    switch (indexPath.row) {
        case 0:
            [cell.textLabel setText:@"Home"];
            break;
        case 1:
            [cell.textLabel setText:@"Profile"];
            break;
    }
    return cell;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UINavigationController *frontViewController = nil;
    switch (indexPath.row)
    {
        case 0:
            //Home
            frontViewController = [[UINavigationController alloc] initWithRootViewController:self.mainFaceController];
            break;
        case 1:
            //Profile
            frontViewController = [[UINavigationController alloc] initWithRootViewController:self.profileViewController];
            break;
    }
    [self.revealController setFrontViewController:frontViewController];
    [self.revealController showViewController:self.revealController.frontViewController];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
