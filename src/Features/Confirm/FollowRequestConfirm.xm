#import "../../Utils.h"

%hook IGPendingRequestView
- (void)_onApproveButtonTapped {
    if ([SCIUtils getBoolPref:@"follow_request_confirm"]) {
        NSLog(@"[SCInsta] Confirm follow request triggered");
        
        __weak typeof(self) weakSelf = self;
        [SCIUtils showConfirmation:^(void) { 
            [weakSelf _onApproveButtonTapped];
        }];
    } else {
        return %orig;
    }
}
- (void)_onIgnoreButtonTapped {
    if ([SCIUtils getBoolPref:@"follow_request_confirm"]) {
        NSLog(@"[SCInsta] Confirm follow request triggered");
        
        __weak typeof(self) weakSelf = self;
        [SCIUtils showConfirmation:^(void) { 
            [weakSelf _onIgnoreButtonTapped];
        }];
    } else {
        return %orig;
    }
}
%end
