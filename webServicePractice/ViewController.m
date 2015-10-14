//
//  ViewController.m
//  webServicePractice for live information in app
//   extract and parse Json
//  Created by GuoRui on 10/14/15.
//  Copyright © 2015 GuoRui. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)click_btn_showContent:(id)sender;

@end
//url http://phobos.apple.com/WebObjects/MZStoreServices.woa/ws/RSS/toppaidapplications/limit=2/json
// have to use https in IOS
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click_btn_showContent:(id)sender {
    // have to use https in IOS ,change http to https
    //creat a NSURL object
    NSString *str_url=@"https://phobos.apple.com/WebObjects/MZStoreServices.woa/ws/RSS/toppaidapplications/limit=2/json";
    NSURL *url=[NSURL URLWithString:str_url];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    
    //NSURLConnection *connect_url=[NSURLConnection connectionWithRequest:<#(nonnull NSURLRequest *)#> delegate:<#(nullable id)#>] out of date
    
    
    //NSURLSession is ios9 new stuff
    NSURLSession *session=[NSURLSession sharedSession];
    [session dataTaskWithRequest:request completionHandler:<#^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error)completionHandler#>]
}
@end
