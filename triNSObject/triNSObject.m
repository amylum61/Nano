#import <Foundation/Foundation.h>
#import "Tri.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"\n--------\n");
        
        int a,b,c;
        
        Triangle *tri;
        tri=[Triangle new];
        scanf("%i %i %i",&a,&b,&c);
        
        [tri setabc:a :b :c];
        [tri printabc];
        [tri area];
        [tri zc];
    }
    return 0;
}
