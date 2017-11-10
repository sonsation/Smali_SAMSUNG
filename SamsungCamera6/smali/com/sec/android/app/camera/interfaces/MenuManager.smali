.class public interface abstract Lcom/sec/android/app/camera/interfaces/MenuManager;
.super Ljava/lang/Object;
.source "MenuManager.java"


# virtual methods
.method public abstract collapseMenu()V
.end method

.method public abstract createMenu(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract dumpViewStack()Ljava/lang/String;
.end method

.method public abstract exists(I)Z
.end method

.method public abstract getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;
.end method

.method public abstract getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;
.end method

.method public abstract hideMenu(I)V
.end method

.method public abstract isActive(I)Z
.end method

.method public abstract isBaseMenuInitialized()Z
.end method

.method public abstract isPreviewTouchEnabled()Z
.end method

.method public abstract onActivityTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onLowMemory(I)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onReset()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStop()V
.end method

.method public abstract processBack()V
.end method

.method public abstract removeMenu(I)V
.end method

.method public abstract setAlpha(F)V
.end method

.method public abstract setHideAnimation(ILandroid/view/animation/Animation;)V
.end method

.method public abstract setOnHideListener(ILcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V
.end method

.method public abstract setOnShowListener(ILcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V
.end method

.method public abstract setOneTimeHideAnimation(ILandroid/view/animation/Animation;)V
.end method

.method public abstract setOneTimeShowAnimation(ILandroid/view/animation/Animation;)V
.end method

.method public abstract setShootingMode(I)V
.end method

.method public abstract setShowAnimation(ILandroid/view/animation/Animation;)V
.end method

.method public abstract showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract showMenu(IZ)Lcom/sec/android/app/camera/interfaces/MenuBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
