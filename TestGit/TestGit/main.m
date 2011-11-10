//
//  main.m
//  TestGit
//
//  Created by Benson Rajan on 10/13/11.
//  Copyright 2011 UNFCU. All rights reserved.
//

#import <UIKit/UIKit.h>

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    //This is a Test
    
    NSLog(@"This is output produced by NSLog.");
    
    int retVal = UIApplicationMain(argc, argv, nil, nil);
    [pool release];
    return retVal;
}
