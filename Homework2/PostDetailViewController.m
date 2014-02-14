//
//  PostDetailViewController.m
//  Homework2
//
//  Created by Frazier Moore on 2/13/14.
//  Copyright (c) 2014 Frazier Moore. All rights reserved.
//

#import "PostDetailViewController.h"

@interface PostDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UITextField *userNameLabel;
@property (weak, nonatomic) IBOutlet UITextView *contentTextView;

@end

@implementation PostDetailViewController

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

- (void) setPost:(Post *)post
{
    _post = post;
    

}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    // set up UI with the post
    self.userNameLabel.text = _post.userName;
    self.contentTextView.text = _post.content;
    self.navigationItem.title = _post.title;
    self.dateLabel.text = [_post.timeStamp description];
}

- (void) viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    _post.content = self.contentTextView.text;
    _post.userName = self.userNameLabel.text;
    
}









@end
