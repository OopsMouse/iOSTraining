//
//  EFMViewController.m
//  EternalForceModal
//
//  Created by 武田 祐一 on 2013/04/16.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import "EFMViewController.h"

@interface EFMViewController () <EMFSecondViewControllerDelegate>

@end

@implementation EFMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonTapped:(id)sender {

    EFMSecondViewController *secondViewController = [[EFMSecondViewController alloc] initWithNibName:@"EFMSecondViewController" bundle:nil];
    // TODO secondViewControllerのdelegateを自分にセット
    [secondViewController setDelegate:self];
    // TODO [self presentViewController:￼ animated:￼ completion:￼] を呼ぶ
    [self presentViewController:secondViewController animated:YES completion:nil];
}

#pragma EMFSecondViewController delegate
// TODO EFMSecondViewController の delegateメソッドを実装

- (void)didDismissModalView {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
