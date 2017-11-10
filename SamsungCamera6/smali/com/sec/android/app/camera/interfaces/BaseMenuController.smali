.class public interface abstract Lcom/sec/android/app/camera/interfaces/BaseMenuController;
.super Ljava/lang/Object;
.source "BaseMenuController.java"


# static fields
.field public static final ALL:I = -0x1

.field public static final INDICATORS:I = 0x40

.field public static final OVERLAY_LAYOUT:I = 0x80

.field public static final PAGE_NAVIGATOR:I = 0x200

.field public static final RECORDING_BUTTON:I = 0x2

.field public static final SHOOTING_MODE_BUTTON:I = 0x10

.field public static final SHOOTING_MODE_VIEW:I = 0x100

.field public static final SHUTTER_BUTTON:I = 0x1

.field public static final SIDE_QUICK_MENU:I = 0x20

.field public static final SWITCH_CAMERA_BUTTON:I = 0x4

.field public static final THUMBNAIL_BUTTON:I = 0x8


# virtual methods
.method public abstract disableView(I)V
.end method

.method public abstract enableRecordingAnimation()V
.end method

.method public abstract enableView(I)V
.end method

.method public abstract endShutterProgressWheel()V
.end method

.method public abstract getLastGestureDirection()I
.end method

.method public abstract getOverlayHelp()Lcom/sec/android/app/camera/interfaces/OverlayHelpController;
.end method

.method public abstract getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;
.end method

.method public abstract hideCaptureProgressText()V
.end method

.method public abstract hidePage(I)V
.end method

.method public abstract hidePageNavigators()V
.end method

.method public abstract hideReview(Z)V
.end method

.method public abstract hideView(I)V
.end method

.method public abstract isDefaultPageSelected()Z
.end method

.method public abstract isDimmed(I)Z
.end method

.method public abstract isPressed(I)Z
.end method

.method public abstract isReviewShowing()Z
.end method

.method public abstract isReviewUpdating()Z
.end method

.method public abstract isShareViaWorking()Z
.end method

.method public abstract isShutterProgressWheelVisible()Z
.end method

.method public abstract registerEAM(I)V
.end method

.method public abstract removeSideQuickSettingItems()V
.end method

.method public abstract requestFocus(I)V
.end method

.method public abstract resetPageNavigatorItem()V
.end method

.method public abstract setBaseMenuAlpha(F)V
.end method

.method public abstract setCapturingProgress(I)V
.end method

.method public abstract setCoverCamera(Z)V
.end method

.method public abstract setDim(IZ)V
.end method

.method public abstract setRecordingButtonForAnimation(Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;)V
.end method

.method public abstract setShutterProgress(I)V
.end method

.method public varargs abstract setSideQuickSettingItems([I)V
.end method

.method public abstract setThumbnailOrientation(I)V
.end method

.method public abstract setThumbnailUri(Landroid/net/Uri;)V
.end method

.method public abstract showCaptureProgressText()V
.end method

.method public abstract showPage(I)V
.end method

.method public abstract showPageNavigators()V
.end method

.method public abstract showReview(Landroid/graphics/Bitmap;ILjava/lang/String;Landroid/net/Uri;)V
.end method

.method public abstract showView(I)V
.end method

.method public abstract startBaseMenuAnimation(Landroid/view/animation/Animation;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract startShutterProgressWheel()V
.end method

.method public abstract unregisterEAM(I)V
.end method

.method public abstract updateThumbnailButton()V
.end method

.method public abstract updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V
.end method
