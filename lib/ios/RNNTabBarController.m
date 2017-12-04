
#import "RNNTabBarController.h"
#import "RNNRootViewController.h"

@implementation RNNTabBarController

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
	return self.selectedViewController.supportedInterfaceOrientations;
}

- (void)setSelectedIndexByContainerID:(NSString *)containerID {
	for (id child in self.childViewControllers) {
		RNNRootViewController* vc = child;
		if ([child isKindOfClass:[UINavigationController class]]) {
			vc = ((UINavigationController *)child).childViewControllers.firstObject;
		}
		if ([vc.containerId isEqualToString:containerID]) {
			[self setSelectedIndex:[self.childViewControllers indexOfObject:child]];
		}
	}
}

@end
