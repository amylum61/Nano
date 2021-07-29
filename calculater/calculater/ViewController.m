#import "ViewController.h"

@interface ViewController ()
//输出框
@property (weak, nonatomic) IBOutlet UILabel *expression;
@property (weak, nonatomic) IBOutlet UILabel *answer;
//@property(nonatomic,retain)Calculator* cal;

//上行字符串
@property (nonatomic, strong) NSMutableString *myString;
//答案部分字符串 下行
@property (nonatomic, strong) NSMutableString *ansString;



@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [_myString setString:@""];
    _myString = [NSMutableString stringWithCapacity:20];
    symbol = 0;
    ac = 1;
}
- (IBAction)ac:(UIButton *)sender {
    [_myString setString:@""];
    //self.expression.text = _myString;
    [_expression setText:_myString];
    symbol = 0;
    ac = 1;
}
- (IBAction)num1:(UIButton *)sender {
    [_myString appendString:@"1"];
    [_expression setText:_myString];
    symbol = 0;
}
- (IBAction)num2:(UIButton *)sender {
    [_myString appendString:@"2"];
    [_expression setText:_myString];
    symbol = 0;
}
- (IBAction)num3:(UIButton *)sender {
    [_myString appendString:@"3"];
    [_expression setText:_myString];
    symbol = 0;
}
- (IBAction)num4:(UIButton *)sender {
    [_myString appendString:@"4"];
    [_expression setText:_myString];
    symbol = 0;
}
- (IBAction)num5:(UIButton *)sender {
    [_myString appendString:@"5"];
    [_expression setText:_myString];
    symbol = 0;
}
- (IBAction)num6:(UIButton *)sender {
    [_myString appendString:@"6"];
    [_expression setText:_myString];
    symbol = 0;
}
- (IBAction)num7:(UIButton *)sender {
    [_myString appendString:@"7"];
    [_expression setText:_myString];
    symbol = 0;
}
- (IBAction)num8:(UIButton *)sender {
    [_myString appendString:@"8"];
    [_expression setText:_myString];
    symbol = 0;
}
- (IBAction)num9:(UIButton *)sender {
    [_myString appendString:@"9"];
    [_expression setText:_myString];
    symbol = 0;
}
- (IBAction)num0:(UIButton *)sender {
    [_myString appendString:@"0"];
    [_expression setText:_myString];
    symbol = 0;
}
- (IBAction)add:(UIButton *)sender {
    if(symbol)
    {
        [_myString setString:[_myString substringWithRange:NSMakeRange(0, [_myString length]-1)]];
        [_myString appendString:@"+"];
        [_expression setText:_myString];
    }
    else
    {
        [_myString appendString:@"+"];
        [_expression setText:_myString];
        symbol = 1;
    }
}
- (IBAction)sub:(UIButton *)sender {
    if(symbol)
    {
        [_myString setString:[_myString substringWithRange:NSMakeRange(0, [_myString length]-1)]];
        [_myString appendString:@"-"];
        [_expression setText:_myString];
    }
    else
    {
        [_myString appendString:@"-"];
        [_expression setText:_myString];
        symbol = 1;
    }
}
- (IBAction)mul:(UIButton *)sender {
    if(symbol)
    {
        [_myString setString:[_myString substringWithRange:NSMakeRange(0, [_myString length]-1)]];
        [_myString appendString:@"×"];
        [_expression setText:_myString];
    }
    else
    {
        [_myString appendString:@"×"];
        [_expression setText:_myString];
        symbol = 1;
    }
}
- (IBAction)div:(UIButton *)sender {
    if(symbol)
    {
        [_myString setString:[_myString substringWithRange:NSMakeRange(0, [_myString length]-1)]];
        [_myString appendString:@"÷"];
        [_expression setText:_myString];
    }
    else
    {
        [_myString appendString:@"÷"];
        [_expression setText:_myString];
        symbol = 1;
    }
}
- (IBAction)dot:(UIButton *)sender {
    //[_myString appendString:@"."];
    //[_expression setText:_myString];
}
- (IBAction)mod:(UIButton *)sender {
    /*if(symbol)
    {
        [_myString setString:[_myString substringWithRange:NSMakeRange(0, [_myString length]-1)]];
        [_myString appendString:@"%"];
        [_expression setText:_myString];
    }
    else
    {
        [_myString appendString:@"%"];
        [_expression setText:_myString];
        symbol = 1;
    }*/
}
- (IBAction)back:(UIButton *)sender {
    if([_myString length]>0)
    {
        [_myString setString:[_myString substringWithRange:NSMakeRange(0, [_myString length]-1)]];
    }
    else
    {
        ac = 1;
    }
    [_expression setText:_myString];
}
//计算部分代码
- (IBAction)culculate:(UIButton *)sender
{
    [_ansString setString:_myString];
    char last = [_myString characterAtIndex:[_myString length]-1];
    if(!(last <= '9' && last >= '0'))
    {
        [_ansString setString:[_ansString substringWithRange:NSMakeRange(0, [_ansString length]-1)]];
    }
    //去除最后一个运算符
    
    
    
    [_answer setText:@"0"];
}
@end
