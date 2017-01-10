# VisRotate
view --rotate--> a full screen view --rotate--> view

## Premise

```objc
- (BOOL)shouldAutorotate {
    return NO;
}
```
## Use
```objc
 [view vis_rotateToOrientation:Orientation
                        bounds:bounds
                      duration:duration];
```
