//
//  NoPuedesViewController.m
//  AlertView
//
//  Created by LLBER on 04/06/13.
//  Copyright (c) 2013 LLBER air. All rights reserved.
//

#import "NoPuedesViewController.h"

@interface NoPuedesViewController ()

@end

@implementation NoPuedesViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)logearse:(id)sender {
    
    ViewController *logear = [self.storyboard instantiateViewControllerWithIdentifier:@"Inicio"];
    logear.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:logear animated:YES completion:nil];
    
    
}
@end




















