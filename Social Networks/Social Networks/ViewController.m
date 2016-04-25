//
//  ViewController.m
//  Social Networks
//
//  Created by Computer Science (YR1) on 25/04/2016.
//  Copyright © 2016 Robert. All rights reserved.
//
#import <Social/Social.h>
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tweetTapped:(id)sender {
    
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter])
    {
        SLComposeViewController *tweetSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        [tweetSheet setInitialText: @"Tweeting From My Own App!"];
        [self presentViewController: tweetSheet animated:YES completion:nil];
    }
    else {
        UIAlertView *alertView = [[UIAlertView alloc]
                                  initWithTitle:@"Sorry"
                                  message:@"You can't send a tweet right now cause fek you and your crappy internet"
                                  delegate:self
                                  cancelButtonTitle:@"OKi"
                                  otherButtonTitles:nil];
        [alertView show];
    }
}

- (IBAction)faceBookTapped:(id)sender {
    
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook])
    {
        SLComposeViewController *faceSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        [faceSheet addURL:[NSURL URLWithString:@"http://www.appcoda.com"]];
        [faceSheet addImage:[UIImage imageNamed:@"socialsharing-facebook-image.jpg"]];
        [faceSheet setInitialText: @"Oh boy, oh boy! FaceBooke"];
        [self presentViewController: faceSheet animated:YES completion:nil];
        
    }
    else {
        UIAlertView *alertView = [[UIAlertView alloc]
                                  initWithTitle:@"Sorry"
                                  message:@"You can't post right now cause fek you and your crappy internet"
                                  delegate:self
                                  cancelButtonTitle:@"OKi"
                                  otherButtonTitles:nil];
        [alertView show];
        
    }
}


@end


