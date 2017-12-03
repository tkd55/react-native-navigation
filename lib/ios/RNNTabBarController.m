
#import "RNNTabBarController.h"
#import "RNNRootViewController.h"

@implementation RNNTabBarController

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
	return self.selectedViewController.supportedInterfaceOrientations;
}

- (void)setSelectedIndexByContainerID:(NSString *)containerID {
	for (RNNRootViewController* child in self.childViewControllers) {
		if ([child.containerId isEqualToString:containerID]) {
			[self setSelectedIndex:[self.childViewControllers indexOfObject:child]];
		}
	}
}

@end
