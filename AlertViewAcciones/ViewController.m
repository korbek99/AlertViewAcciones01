//
//  ViewController.m
//  AlertViewAcciones
//
//  Created by Jose David Bustos H on 22-01-17.
//  Copyright © 2017 Jose David Bustos H. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)click:(id)sender{
    
    UIAlertView * alerta =[[UIAlertView alloc] initWithTitle:@"Titulo" message:@"Mensaje de Alerta" delegate:nil cancelButtonTitle:@"Cancelar" otherButtonTitles:@"Action1",@"Action2",nil];
    
    [alerta show];
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 1)
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.youtube.com/watch?v=vO4clNuNaLI"]];
    }
    if (buttonIndex == 2)
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.youtube.com/watch?v=Y29EWY-PInc"]];
    }
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
