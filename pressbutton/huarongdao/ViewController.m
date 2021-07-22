#import "ViewController.h"

@implementation ViewController

- (IBAction)connection:(UIButton *)sender
{
    NSString *title = [sender titleForState:UIControlStateNormal];
    NSString *plainText = [NSString stringWithFormat:@"%@ button pressed.",title];
    _label.text = plainText;
}
@end
