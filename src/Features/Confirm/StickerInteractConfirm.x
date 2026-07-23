#import "../../Utils.h"

%hook IGStoryViewerTapTarget
- (void)_didTap:(id)arg1 forEvent:(id)arg2 {
    if ([SCIUtils getBoolPref:@"sticker_interact_confirm"]) {
        NSLog(@"[SCInsta] Confirm sticker interact triggered");
        
        __weak typeof(self) weakSelf = self;
        id capturedArg1 = arg1;
        id capturedArg2 = arg2;
        [SCIUtils showConfirmation:^(void) { 
            [weakSelf _didTap:capturedArg1 forEvent:capturedArg2];
        }];
    } else {
        return %orig;
    }
}
%end
