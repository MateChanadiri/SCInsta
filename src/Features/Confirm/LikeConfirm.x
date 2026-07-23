#import "../../Utils.h"

///////////////////////////////////////////////////////////

// Confirmation handlers - Fixed to capture arguments properly

#define CONFIRMPOSTLIKE(selector, ...)                         \
    if ([SCIUtils getBoolPref:@"like_confirm"]) {              \
        NSLog(@"[SCInsta] Confirm post like triggered");        \
        __weak typeof(self) weakSelf = self;                    \
        [SCIUtils showConfirmation:^(void) {                    \
            [weakSelf selector];                                \
        }];                                                     \
        return;                                                 \
    }                                                           \
    else {                                                      \
        return %orig;                                           \
    }

#define CONFIRMREELSLIKE(selector, ...)                        \
    if ([SCIUtils getBoolPref:@"like_confirm_reels"]) {        \
        NSLog(@"[SCInsta] Confirm reels like triggered");       \
        __weak typeof(self) weakSelf = self;                    \
        [SCIUtils showConfirmation:^(void) {                    \
            [weakSelf selector];                                \
        }];                                                     \
        return;                                                 \
    }                                                           \
    else {                                                      \
        return %orig;                                           \
    }

///////////////////////////////////////////////////////////

// Liking posts
%hook IGUFIButtonBarView
- (void)_onLikeButtonPressed:(id)arg1 {
    if ([SCIUtils getBoolPref:@"like_confirm"]) {
        NSLog(@"[SCInsta] Confirm post like triggered");
        __weak typeof(self) weakSelf = self;
        id capturedArg1 = arg1;
        [SCIUtils showConfirmation:^(void) { 
            [weakSelf _onLikeButtonPressed:capturedArg1];
        }];
        return;
    }
    return %orig;
}
%end
%hook IGFeedPhotoView
- (void)_onDoubleTap:(id)arg1 {
    if ([SCIUtils getBoolPref:@"like_confirm"]) {
        NSLog(@"[SCInsta] Confirm post like triggered");
        __weak typeof(self) weakSelf = self;
        id capturedArg1 = arg1;
        [SCIUtils showConfirmation:^(void) { 
            [weakSelf _onDoubleTap:capturedArg1];
        }];
        return;
    }
    return %orig;
}
%end
%hook IGVideoPlayerOverlayContainerView
- (void)_handleDoubleTapGesture:(id)arg1 {
    if ([SCIUtils getBoolPref:@"like_confirm"]) {
        NSLog(@"[SCInsta] Confirm post like triggered");
        __weak typeof(self) weakSelf = self;
        id capturedArg1 = arg1;
        [SCIUtils showConfirmation:^(void) { 
            [weakSelf _handleDoubleTapGesture:capturedArg1];
        }];
        return;
    }
    return %orig;
}
%end

// Liking reels
%hook IGSundialViewerVideoCell
- (void)controlsOverlayControllerDidTapLikeButton:(id)arg1 {
    if ([SCIUtils getBoolPref:@"like_confirm_reels"]) {
        NSLog(@"[SCInsta] Confirm reels like triggered");
        __weak typeof(self) weakSelf = self;
        id capturedArg1 = arg1;
        [SCIUtils showConfirmation:^(void) { 
            [weakSelf controlsOverlayControllerDidTapLikeButton:capturedArg1];
        }];
        return;
    }
    return %orig;
}
- (void)controlsOverlayControllerDidLongPressLikeButton:(id)arg1 gestureRecognizer:(id)arg2 {
    if ([SCIUtils getBoolPref:@"like_confirm_reels"]) {
        NSLog(@"[SCInsta] Confirm reels like triggered");
        __weak typeof(self) weakSelf = self;
        id capturedArg1 = arg1;
        id capturedArg2 = arg2;
        [SCIUtils showConfirmation:^(void) { 
            [weakSelf controlsOverlayControllerDidLongPressLikeButton:capturedArg1 gestureRecognizer:capturedArg2];
        }];
        return;
    }
    return %orig;
}
- (void)gestureController:(id)arg1 didObserveDoubleTap:(id)arg2 {
    if ([SCIUtils getBoolPref:@"like_confirm_reels"]) {
        NSLog(@"[SCInsta] Confirm reels like triggered");
        __weak typeof(self) weakSelf = self;
        id capturedArg1 = arg1;
        id capturedArg2 = arg2;
        [SCIUtils showConfirmation:^(void) { 
            [weakSelf gestureController:capturedArg1 didObserveDoubleTap:capturedArg2];
        }];
        return;
    }
    return %orig;
}
%end
%hook IGSundialViewerPhotoCell
- (void)controlsOverlayControllerDidTapLikeButton:(id)arg1 {
    if ([SCIUtils getBoolPref:@"like_confirm_reels"]) {
        NSLog(@"[SCInsta] Confirm reels like triggered");
        __weak typeof(self) weakSelf = self;
        id capturedArg1 = arg1;
        [SCIUtils showConfirmation:^(void) { 
            [weakSelf controlsOverlayControllerDidTapLikeButton:capturedArg1];
        }];
        return;
    }
    return %orig;
}
- (void)gestureController:(id)arg1 didObserveDoubleTap:(id)arg2 {
    if ([SCIUtils getBoolPref:@"like_confirm_reels"]) {
        NSLog(@"[SCInsta] Confirm reels like triggered");
        __weak typeof(self) weakSelf = self;
        id capturedArg1 = arg1;
        id capturedArg2 = arg2;
        [SCIUtils showConfirmation:^(void) { 
            [weakSelf gestureController:capturedArg1 didObserveDoubleTap:capturedArg2];
        }];
        return;
    }
    return %orig;
}
%end
%hook IGSundialViewerCarouselCell
- (void)controlsOverlayControllerDidTapLikeButton:(id)arg1 {
    if ([SCIUtils getBoolPref:@"like_confirm_reels"]) {
        NSLog(@"[SCInsta] Confirm reels like triggered");
        __weak typeof(self) weakSelf = self;
        id capturedArg1 = arg1;
        [SCIUtils showConfirmation:^(void) { 
            [weakSelf controlsOverlayControllerDidTapLikeButton:capturedArg1];
        }];
        return;
    }
    return %orig;
}
- (void)gestureController:(id)arg1 didObserveDoubleTap:(id)arg2 {
    if ([SCIUtils getBoolPref:@"like_confirm_reels"]) {
        NSLog(@"[SCInsta] Confirm reels like triggered");
        __weak typeof(self) weakSelf = self;
        id capturedArg1 = arg1;
        id capturedArg2 = arg2;
        [SCIUtils showConfirmation:^(void) { 
            [weakSelf gestureController:capturedArg1 didObserveDoubleTap:capturedArg2];
        }];
        return;
    }
    return %orig;
}
%end

// Liking comments
%hook IGCommentCellController
- (void)commentCell:(id)arg1 didTapLikeButton:(id)arg2 {
    if ([SCIUtils getBoolPref:@"like_confirm"]) {
        NSLog(@"[SCInsta] Confirm post like triggered");
        __weak typeof(self) weakSelf = self;
        id capturedArg1 = arg1;
        id capturedArg2 = arg2;
        [SCIUtils showConfirmation:^(void) { 
            [weakSelf commentCell:capturedArg1 didTapLikeButton:capturedArg2];
        }];
        return;
    }
    return %orig;
}
- (void)commentCell:(id)arg1 didTapLikedByButtonForUser:(id)arg2 {
    if ([SCIUtils getBoolPref:@"like_confirm"]) {
        NSLog(@"[SCInsta] Confirm post like triggered");
        __weak typeof(self) weakSelf = self;
        id capturedArg1 = arg1;
        id capturedArg2 = arg2;
        [SCIUtils showConfirmation:^(void) { 
            [weakSelf commentCell:capturedArg1 didTapLikedByButtonForUser:capturedArg2];
        }];
        return;
    }
    return %orig;
}
- (void)commentCellDidLongPressOnLikeButton:(id)arg1 {
    if ([SCIUtils getBoolPref:@"like_confirm"]) {
        NSLog(@"[SCInsta] Confirm post like triggered");
        __weak typeof(self) weakSelf = self;
        id capturedArg1 = arg1;
        [SCIUtils showConfirmation:^(void) { 
            [weakSelf commentCellDidLongPressOnLikeButton:capturedArg1];
        }];
        return;
    }
    return %orig;
}
- (void)commentCellDidEndLongPressOnLikeButton:(id)arg1 {
    if ([SCIUtils getBoolPref:@"like_confirm"]) {
        NSLog(@"[SCInsta] Confirm post like triggered");
        __weak typeof(self) weakSelf = self;
        id capturedArg1 = arg1;
        [SCIUtils showConfirmation:^(void) { 
            [weakSelf commentCellDidEndLongPressOnLikeButton:capturedArg1];
        }];
        return;
    }
    return %orig;
}
- (void)commentCellDidDoubleTap:(id)arg1 {
    if ([SCIUtils getBoolPref:@"like_confirm"]) {
        NSLog(@"[SCInsta] Confirm post like triggered");
        __weak typeof(self) weakSelf = self;
        id capturedArg1 = arg1;
        [SCIUtils showConfirmation:^(void) { 
            [weakSelf commentCellDidDoubleTap:capturedArg1];
        }];
        return;
    }
    return %orig;
}
%end
%hook IGFeedItemPreviewCommentCell
- (void)_didTapLikeButton {
    if ([SCIUtils getBoolPref:@"like_confirm"]) {
        NSLog(@"[SCInsta] Confirm post like triggered");
        __weak typeof(self) weakSelf = self;
        [SCIUtils showConfirmation:^(void) { 
            [weakSelf _didTapLikeButton];
        }];
        return;
    }
    return %orig;
}
%end

// Liking stories
%hook IGStoryFullscreenDefaultFooterView
- (void)_handleLikeTapped {
    if ([SCIUtils getBoolPref:@"like_confirm"]) {
        NSLog(@"[SCInsta] Confirm post like triggered");
        __weak typeof(self) weakSelf = self;
        [SCIUtils showConfirmation:^(void) { 
            [weakSelf _handleLikeTapped];
        }];
        return;
    }
    return %orig;
}
- (void)_likeTapped {
    if ([SCIUtils getBoolPref:@"like_confirm"]) {
        NSLog(@"[SCInsta] Confirm post like triggered");
        __weak typeof(self) weakSelf = self;
        [SCIUtils showConfirmation:^(void) { 
            [weakSelf _likeTapped];
        }];
        return;
    }
    return %orig;
}
- (void)inputView:(id)arg1 didTapLikeButton:(id)arg2 {
    if ([SCIUtils getBoolPref:@"like_confirm"]) {
        NSLog(@"[SCInsta] Confirm post like triggered");
        __weak typeof(self) weakSelf = self;
        id capturedArg1 = arg1;
        id capturedArg2 = arg2;
        [SCIUtils showConfirmation:^(void) { 
            [weakSelf inputView:capturedArg1 didTapLikeButton:capturedArg2];
        }];
        return;
    }
    return %orig;
}

// For some stupid reason they removed the "liketapped" methods on newer Instagram versions
// Now we have to do a shitty workaround instead :(
// Works 99% of the time, but sometimes clicks get through directly to the like button (somehow)
- (void)layoutSubviews {
    %orig;

    if (![SCIUtils getBoolPref:@"like_confirm"]) return;

    UIButton *likeButton = [self valueForKey:@"likeButton"];
    if (!likeButton) return;

    // 129115 = L(12) I(9) K(11) E(5)
    static NSInteger kOverlayTag = 129115;
    if ([likeButton viewWithTag:kOverlayTag]) return;

    UIButton *overlay = [UIButton buttonWithType:UIButtonTypeCustom];
    overlay.tag = kOverlayTag;
    overlay.frame = likeButton.bounds;
    overlay.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [overlay addTarget:self action:@selector(overlayTapped:) forControlEvents:UIControlEventTouchUpInside];
    [likeButton addSubview:overlay];
}

%new - (void)overlayTapped:(UIButton *)overlay {
    UIButton *likeButton = (UIButton *)overlay.superview;

    [SCIUtils showConfirmation:^{
        dispatch_async(dispatch_get_main_queue(), ^{
            [likeButton sendActionsForControlEvents:UIControlEventTouchUpInside];
        });
    }];
}
%end

// DM like button (seems to be hidden)
%hook IGDirectThreadViewController
- (void)_didTapLikeButton {
    if ([SCIUtils getBoolPref:@"like_confirm"]) {
        NSLog(@"[SCInsta] Confirm post like triggered");
        __weak typeof(self) weakSelf = self;
        [SCIUtils showConfirmation:^(void) { 
            [weakSelf _didTapLikeButton];
        }];
        return;
    }
    return %orig;
}
%end
