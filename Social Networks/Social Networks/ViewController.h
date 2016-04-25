//
//  ViewController.h
//  Social Networks
//
//  Created by Computer Science (YR1) on 25/04/2016.
//  Copyright © 2016 Robert. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *faceBook;
@property (strong, nonatomic) IBOutlet UIView *tweetMe;




-(IBAction)tweetTapped:(id)sender;
-(IBAction)faceBookTapped:(id)sender;
@end

