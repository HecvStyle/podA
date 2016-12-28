//
//  AViewController.m
//  MainPreject
//
//  Created by 何巍 on 16/12/27.
//  Copyright © 2016年 东田教育. All rights reserved.
//

#import "AViewController.h"
//#import "BViewController.h"

@interface AViewController ()

@property (nonatomic, strong) UIButton *pushBViewControllerButton;

@end

@implementation AViewController

#pragma mark - life cycle
- (void)viewDidLoad
{
	[super viewDidLoad];
	self.view.backgroundColor = [UIColor whiteColor];
	[self.view addSubview:self.pushBViewControllerButton];
}

- (void)viewWillLayoutSubviews
{
	[super viewWillLayoutSubviews];

	[self.pushBViewControllerButton sizeToFit];
	self.pushBViewControllerButton.center = self.view.center;
}

#pragma mark - event response
- (void)didTappedPushBViewControllerButton:(UIButton *)button
{
//	BViewController *viewController = [[BViewController alloc] initWithContentText:@"hello, world!"];
//	[self.navigationController pushViewController:viewController animated:YES];
}

#pragma mark - getters and setters
- (UIButton *)pushBViewControllerButton
{
	if (_pushBViewControllerButton == nil) {
		_pushBViewControllerButton = [UIButton buttonWithType:UIButtonTypeCustom];
		[_pushBViewControllerButton setTitle:@"push B view controller" forState:UIControlStateNormal];
		[_pushBViewControllerButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
		[_pushBViewControllerButton addTarget:self action:@selector(didTappedPushBViewControllerButton:) forControlEvents:UIControlEventTouchUpInside];
	}
	return _pushBViewControllerButton;
}

@end
