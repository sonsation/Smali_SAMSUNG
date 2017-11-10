.class public interface abstract Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;
.super Ljava/lang/Object;
.source "VisualInteractionProvider.java"


# static fields
.field public static final MULTI_WINDOW_RECORDING_STOP_ANIMATION:I = 0x3

.field public static final NONE_ANIMATION:I = 0x0

.field public static final PREVIEW_CHANGE_ANIMATION:I = 0x2

.field public static final SCREEN_FLASH_DURATION:I = 0x12c

.field public static final SWITCH_CAMERA_ANIMATION:I = 0x1


# virtual methods
.method public abstract cancelPreviewAnimation()V
.end method

.method public abstract hideBlackOverlay()V
.end method

.method public abstract hideBlackOverlayWithAnimation(Landroid/view/animation/Animation;)V
.end method

.method public abstract hidePreviewAnimation()V
.end method

.method public abstract hideScreenFlashAnimation()V
.end method

.method public abstract isBlackOverlayVisible()Z
.end method

.method public abstract isCameraSwitchingAnimationRunning()Z
.end method

.method public abstract isCameraSwitchingAnimationStarted()Z
.end method

.method public abstract isPreviewChangingAnimationRunning()Z
.end method

.method public abstract isWhiteOverlayVisible()Z
.end method

.method public abstract setBlackOverlayAlpha(F)V
.end method

.method public abstract setPreviewAnimation(I)V
.end method

.method public abstract setPreviewRect()V
.end method

.method public abstract showBlackOverlay(FLcom/samsung/android/glview/GLViewGroup;)V
.end method

.method public abstract showBlackOverlayWithAnimation(Landroid/view/animation/Animation;Lcom/samsung/android/glview/GLViewGroup;)V
.end method

.method public abstract startPreviewAnimation([B)V
.end method

.method public abstract startScreenFlashAnimation()V
.end method

.method public abstract startShutterAnimation()V
.end method
