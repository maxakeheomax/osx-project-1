//
//  Cell.m
//  ProjectOne_DNK
//
//  Created by Максим on 30.10.12.
//  Copyright (c) 2012 CarelessApps. All rights reserved.
//

#import "Cell.h"


@implementation Cell

-(id)init{
    self = [super init];
    if (self) {
        _DNA = [NSMutableArray arrayWithCapacity:100];
        
        NSArray *lettersArray = [NSArray arrayWithObjects:@"A",@"T",@"G",@"C", nil];
        int i;
        for (i = 0; i <100; i++) {
            int randomIndex = arc4random() %4;
            [_DNA insertObject:lettersArray[randomIndex] atIndex:i];

        }
    }
    return self; 
}

-(int)hammingDistance: (id)cellObject{
    int i;
    for (i = 0; i<100; i++) {
        if ([[cellObject objectAtIndex:i] isNotEqualTo:[_DNA objectAtIndex:i]]){
            _errorRows = _errorRows+1;
        }
    }
    NSLog(@"hamming distance %i",_errorRows);
    return _errorRows;
}


@end
