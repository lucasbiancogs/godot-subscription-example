## Godot Subscription Example

This project was created to test the (Godot Subscription Library)[https://github.com/olmps/godot-subscription].

To setup this test you must initially go to the Godot Subscription Library and within the folder `ios/GodotSubscription` run the following command:

```$ ./build.sh ios debug```

Once this is built, copy the packages created within the `ios/GodotSubscription/Bin/ios/` folder: `GodotSubscription.framework` and `SwiftGodot.framework`.

Then paste these 2 packages in this package within the `bin/` folder.

Then open `project.godot`, export the project to iOS, setup targets and capabilities within XCode and run.
