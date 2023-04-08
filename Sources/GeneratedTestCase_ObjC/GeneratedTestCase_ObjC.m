//
//  GeneratedTestCase_ObjC.m
//  
//
//  Created by Stefan Ueter on 28.03.23.
//

#import <Foundation/Foundation.h>
#import "GeneratedTestCase_ObjC.h"


@implementation GeneratedTestCase_ObjC

+ (NSArray<NSInvocation*>*)testInvocations
{
    NSArray<NSString*>* selectorStrings = [self testSelectorStrings];
    
    NSMutableArray<NSInvocation*>* invocations = [NSMutableArray arrayWithCapacity: selectorStrings.count];

    for (NSString* selectorString in selectorStrings)
    {
        SEL selector = NSSelectorFromString(selectorString);
        
        NSMethodSignature* signature = [self instanceMethodSignatureForSelector: selector];
        
        NSInvocation* invocation = [NSInvocation invocationWithMethodSignature: signature];
        
        invocation.selector = selector;

        [invocations addObject: invocation];
    }

    return invocations;
}


+ (NSArray<NSString*>*) testSelectorStrings
{
    return @[];
}

@end
