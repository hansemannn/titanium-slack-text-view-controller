/**
 * titanium-slack-text-view
 *
 * Created by Hans Knoechel
 * Copyright (c) 2018 Your Company. All rights reserved.
 */

#import "TiSlacktextviewModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"
#import "TiApp.h"
#import "TiTextViewController.h"

@implementation TiSlacktextviewModule

#pragma mark Internal

// This is generated for your module, please do not change it
- (id)moduleGUID
{
  return @"7d73ba40-5714-4f09-bb09-fb6e4ec2f661";
}

// This is generated for your module, please do not change it
- (NSString *)moduleId
{
  return @"ti.slacktextview";
}

#pragma mark Lifecycle

- (void)startup
{
  // This method is called when the module is first loaded
  // You *must* call the superclass
  [super startup];
  DebugLog(@"[DEBUG] %@ loaded", self);
}

#pragma Public APIs

- (void)showTextViewDialog:(id)args
{
  ENSURE_UI_THREAD(showTextViewDialog, args);

  TiTextViewController *dialog = [[TiTextViewController alloc] init];
  [[TiApp app] showModalController:dialog animated:YES];
}

@end
