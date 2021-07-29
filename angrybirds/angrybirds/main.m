#import <Foundation/Foundation.h>

const double eps=1e-7;
bool dy(double a,double b)
{
    return fabs(a-b)<eps;
}
int n=0,m=0,ans=0;
double x[20],y[20],pwxa[20],pwxb[20],tx[20],ty[20];
void dfs(int c,int u,int v)
{
    if(u+v>=ans) return;
    if(c>n)
    {
        ans=u+v;
        return;
    }
    bool flag=false;
    for(int i=1;i<=u;i++)
        
        if(dy(pwxa[i]*x[c]*x[c]+pwxb[i]*x[c],y[c]))
        {
            dfs(c+1,u,v);
            flag=true;
            break;
        }
    if(!flag)
    {
        for(int i=1;i<=v;i++)
        {
            if(dy(x[c],tx[i])) continue;
            double a=(y[c]*tx[i]-ty[i]*x[c])/(x[c]*x[c]*tx[i]-tx[i]*tx[i]*x[c]);
            double b=(y[c]-x[c]*x[c]*a)/x[c];
            if(a<0)
            {
                pwxa[u+1]=a;
                pwxb[u+1]=b;
                double q=tx[i],w=ty[i];
                for(int j=i;j<v;j++)
                {
                    tx[j]=tx[j+1];
                    ty[j]=ty[j+1];
                }
                dfs(c+1,u+1,v-1);
                for(int j=v;j>i;j--)
                {
                    tx[j]=tx[j-1];
                    ty[j]=ty[j-1];
                }
                tx[i]=q;
                ty[i]=w;
            }
        }
        tx[v+1]=x[c];
        ty[v+1]=y[c];
        dfs(c+1,u,v+1);
    }
    return;
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int t=0;
        scanf("%d",&t);
        while(t--)
        {
            scanf("%d%d",&n,&m);
            for(int i=1;i<=n;i++)
                scanf("%lf%lf",&x[i],&y[i]);
            ans=100;
            dfs(1,0,0);
            NSLog(@"%d\n",ans);
        }
    }
    return 0;
}
