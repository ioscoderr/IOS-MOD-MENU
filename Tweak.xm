#import "Macros.h"



void setup() {
    
    [switches addSwitch:NSSENCRYPT("HI")
      description:NSSENCRYPT("Teleport all enemies to you without them knowing")
    ];
    
    
    [switches addTextfieldSwitch:NSSENCRYPT("Custom Gold")
      description:NSSENCRYPT("Here you can enter your own gold amount")
      inputBorderColor:UIColorFromHex(0xBD0000)
    ];

    [switches addSwitch2:NSSENCRYPT("LOL")
      description:NSSENCRYPT("Teleport all enemies to you without them knowing")
    ];



    [switches addSwitch3:NSSENCRYPT("Masskill")
      description:NSSENCRYPT("Teleport all enemies to you without them knowing")
    ];
    
    
    [switches addSliderSwitch3:NSSENCRYPT("Custom Move Speed")
      description:NSSENCRYPT("Set your custom move speed")
      minimumValue:0
      maximumValue:10
      sliderColor:UIColorFromHex(0xBD0000)
    ];
}


void setupMenu() {

 
 
    [menu setFrameworkName:"UnityFramework"];

    menu = [[Menu alloc]  initWithTitle:@"IRON LEGION"
        titleColor:[UIColor blackColor]
        titleFont:@"Avenir-Black"
        credits:@""
        headerColor:[UIColor orangeColor]
        switchOffColor:[UIColor blackColor]
        switchOnColor:[UIColor colorWithRed:1.0 green:0.35 blue:0.0 alpha:0.60]
        switchTitleFont:@"Avenir-Black"
        switchTitleColor:[UIColor whiteColor]
        infoButtonColor:[UIColor blackColor]
        maxVisibleSwitches:5
        menuWidth:450
        #import "base64.x"
        menuButton:@""
    ];

    setup();
}

static void didFinishLaunching(CFNotificationCenterRef center, void *observer, CFStringRef name, const void *object, CFDictionaryRef info) {

timer(2) {
setupMenu();
});
}


%ctor {
  CFNotificationCenterAddObserver(CFNotificationCenterGetLocalCenter(), NULL, &didFinishLaunching, (CFStringRef)UIApplicationDidFinishLaunchingNotification, NULL, CFNotificationSuspensionBehaviorDeliverImmediately);
}
