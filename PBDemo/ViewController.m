//
//  ViewController.m
//  PBDemo
//
//  Created by gpp on 14/03/2017.
//  Copyright © 2017 EC. All rights reserved.
//

#import "ViewController.h"
#import "Person.pbobjc.h"
#import "GPBProtocolBuffers.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    Person *p = [Person message];
    p.name = @"gpp";
    p.age = 10;
    p.address = @"梅山苑二期";
    NSLog(@"p=%@",p);
    
    NSData *data = [p data];
    NSLog(@"data=%@",data);;
    NSLog(@"data.length==%lu",(unsigned long)data.length);
    
    Person *p2 = [Person parseFromData:data error:nil];
    NSLog(@"p2=%@",p2);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
