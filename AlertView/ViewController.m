//
//  ViewController.m
//  AlertView
//
//  Created by LLBER air on 23/03/13.
//  Copyright (c) 2013 LLBER air. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
 
    [super viewDidLoad];
    
    
    
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle: @"Este es el Titulo"
                                                    message: @"Este es el Mensaje"
                                                   delegate: self // en la primera vez poner a nil
                                          cancelButtonTitle: @"Confirmar"
                                          otherButtonTitles: nil];  //@"Cancelar", @"Otra opción", nil
    
    
    alert.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput;  //en la primera vez no mostrar
    
    
    
    [alert show];
	
}





-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    if (buttonIndex==0) {
        NSLog(@"El Login introducido es %@ ", [alertView textFieldAtIndex:0].text);
    }
    
    if (buttonIndex==0) {
        NSLog(@"La contraseña introducida es %@ ", [alertView textFieldAtIndex:1].text);
    }
    
    if ([[alertView textFieldAtIndex:0].text isEqualToString:@"Luis"] && [[alertView textFieldAtIndex:1].text isEqualToString:@"1234"]) {
        
    
        NuevaPantallaViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"SiPuedes"];
        controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
        [self presentViewController:controller animated:YES completion:nil];
    
    }else{
        
        NuevaPantallaViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"NoPuedes"];
        controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
        [self presentViewController:controller animated:YES completion:nil];
    }
    
    
    
    
    
}













- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (IBAction)cambiarPantallla:(id)sender {
//    
//    NuevaPantallaViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"NuevaPantallaViewController"];
//    controller.modalTransitionStyle = UIModalTransitionStylePartialCurl;
//    [self presentViewController:controller animated:YES completion:nil];
//    
//}
@end
























