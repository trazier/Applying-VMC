//
//  Post.m
//  Homework2
//
//  Created by Frazier Moore on 2/13/14.
//  Copyright (c) 2014 Frazier Moore. All rights reserved.
//

#import "Post.h"

@implementation Post

-(id)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    
    if (self) {
        self.userName = [dictionary objectForKey:@"name"];
        self.title = [dictionary objectForKey:@"title"];
        self.content = [dictionary objectForKey:@"content"];
        self.timeStamp = [dictionary objectForKey:@"timeStamp"];
    }
    
    return self;
}

@end
