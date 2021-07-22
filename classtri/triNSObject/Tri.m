//
//  Tri.m
//  hellowd
//
//  Created by Admin on 2021/7/10.
//  Copyright © 2021 Admin. All rights reserved.
//

#import "Tri.h"

@implementation Triangle
{
    int ta;
    int tb;
    int tc;
}
-(void)printabc
{
    NSLog(@"a:%i\nb:%i\nc:%d\n",ta,tb,tc);
}
-(void)setabc:(int)a :(int)b :(int)c
{
    ta=a;
    tb=b;
    tc=c;
}
-(void)area
{
    NSLog(@"area is %d\n",ta*tb*tc);
}
-(void)zc
{
    NSLog(@"zc is %d\n",ta+tb+tc);
}
-(int)ta
{
    return ta;
}
-(int)tb
{
    return tb;
}
-(int)tc
{
    return tc;
}

@end
