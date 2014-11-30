//
//  PPAddPennyPotViewController.m
//  Pennypot
//
//  Created by Matthew Nydam on 30/11/14.
//  Copyright (c) 2014 PP. All rights reserved.
//

#import "PPModifyPennyPotViewController.h"

@interface PPModifyPennyPotViewController ()

@property (nonatomic, strong) UIBarButtonItem *saveBarButton;
@property (nonatomic, strong) UIBarButtonItem *cancelBarButton;

@end

@implementation PPModifyPennyPotViewController

- (id)initWithMode:(PPModifyMode)mode
{
    if (self = [super init]) {
        self.title = (mode == PPModifyModeAdd) ? @"New" : @"Edit";
        
        self.navigationItem.rightBarButtonItem = self.saveBarButton;
        self.navigationItem.leftBarButtonItem = self.cancelBarButton;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
}

#pragma mark - Actions

- (IBAction)saveBarButtonItemPressed:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
   
}

- (IBAction)cancelBarButtonItemPressed:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - Getters

- (UIBarButtonItem *)saveBarButton
{
    if (!_saveBarButton) {
        _saveBarButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"addEnabled"] style:UIBarButtonItemStyleDone target:self action:@selector(saveBarButtonItemPressed:)];
    }
    return _saveBarButton;
}

- (UIBarButtonItem *)cancelBarButton
{
    if (!_cancelBarButton) {
        _cancelBarButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"cross"] style:UIBarButtonItemStyleDone target:self action:@selector(cancelBarButtonItemPressed:)];
    }
    return _cancelBarButton;
}


@end