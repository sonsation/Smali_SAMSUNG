.class public interface abstract Lcom/sec/android/app/camera/interfaces/ShootingMode;
.super Ljava/lang/Object;
.source "ShootingMode.java"


# static fields
.field public static final CAPTURE_CANCEL_COMPLETED:I = 0x4

.field public static final CAPTURE_COMPLETED:I = 0x3

.field public static final CAPTURE_REQUESTED:I = 0x0

.field public static final CAPTURE_REQUEST_CANCELLED:I = 0x1

.field public static final CAPTURE_STARTED:I = 0x2


# virtual methods
.method public abstract isCapturing()Z
.end method

.method public abstract isChangingShootingModeDisabled()Z
.end method

.method public abstract isZoomDisabled()Z
.end method

.method public abstract onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
.end method

.method public abstract onActivityTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
.end method

.method public abstract onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
.end method

.method public abstract onImageStoringCompleted()Z
.end method

.method public abstract onInactivate()V
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onMenuSelected(II)Z
.end method

.method public abstract onRecordKeyReleased()Z
.end method

.method public abstract onShutterKeyLongPressed()Z
.end method

.method public abstract onShutterKeyPressed()Z
.end method

.method public abstract onShutterKeyReleased(I)Z
.end method

.method public abstract onSingleCaptureEvent(I)V
.end method

.method public abstract onTimerEvent(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onVideoStoringCompleted()Z
.end method
