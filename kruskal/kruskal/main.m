//
//  main.m
//  kruskal
//
//  Created by Admin on 2021/7/18.
//  Copyright © 2021 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>

struct Edge
{
    int u,v,w;
}e[200005];
int f[5005],n,m;

bool comp(struct Edge a,struct Edge b)
{
    if(a.w<b.w)return 1;
    else return 0;
}

int find(int x)
{
    if(f[x]==x)return x;
    else return f[x]=find(f[x]);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int n,m;
        scanf("%d %d",&n,&m);
        for(int i=1;i<=m;i++)
        {
            scanf("%d %d %d",&e[i].u,&e[i].v,&e[i].w);
        }
        sort(e+1,e+m+1,comp);
        for(int i=1;i<=n;i++)
            f[i]=i;
        int k=0,ans=0;
        for(int i=1;i<=m;i++)
        {
            if(find(e[i].u)!=find(e[i].v))
            {
                f[find(e[i].u)]=find(e[i].v);
                k++;
                ans+=e[i].w;
            }
            if(k==n-1)
            {
                break;
            }
        }
        if(k!=n-1)
            NSLog(@"orz");
        else
            NSLog(@"%d",ans);
        
    }
    return 0;
}
