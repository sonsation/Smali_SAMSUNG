.class public Lcom/android/systemui/statusbar/phone/LockIcon;
.super Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
.source "LockIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/LockIcon$1;,
        Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;
    }
.end annotation


# instance fields
.field private mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private mDensity:I

.field private mDeviceInteractive:Z

.field private mHasFingerPrintIcon:Z

.field private mIconCallback:Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

.field private mIsFaceRecognitionRunning:Z

.field private mLastDeviceInteractive:Z

.field private mLastScreenOn:Z

.field private mLastState:I

.field private mScreenOn:Z

.field private mTransientFpError:Z

.field private mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIsFaceRecognitionRunning:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    .line 69
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIsFaceRecognitionRunning:Z

    .line 81
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockIcon$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/LockIcon$1;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 75
    new-instance v0, Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 77
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 73
    return-void
.end method

.method private getIconForState(IZZ)I
    .locals 1
    .param p1, "state"    # I
    .param p2, "screenOn"    # Z
    .param p3, "deviceInteractive"    # Z

    .prologue
    const/4 v0, -0x1

    .line 331
    packed-switch p1, :pswitch_data_0

    .line 354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 334
    :pswitch_0
    return v0

    .line 337
    :pswitch_1
    const v0, 0x7f02014f

    return v0

    .line 339
    :pswitch_2
    const v0, 0x7f020179

    return v0

    .line 341
    :pswitch_3
    return v0

    .line 343
    :pswitch_4
    const v0, 0x1080371

    return v0

    .line 348
    :pswitch_5
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 349
    const v0, 0x7f02017a

    .line 348
    :goto_0
    return v0

    .line 350
    :cond_0
    const v0, 0x7f0202ff

    goto :goto_0

    .line 352
    :pswitch_6
    const v0, 0x7f02017b

    return v0

    .line 331
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getState()I
    .locals 4

    .prologue
    .line 383
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    .line 384
    .local v2, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    .line 385
    .local v0, "fingerprintRunning":Z
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v1

    .line 387
    .local v1, "unlockingAllowed":Z
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 388
    const/4 v3, 0x1

    return v3

    .line 389
    :cond_0
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 396
    :cond_1
    const/4 v3, 0x5

    return v3

    .line 393
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method private isOnIconExact(Landroid/view/View;FF)Z
    .locals 5
    .param p1, "icon"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 483
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 484
    .local v0, "pos":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 486
    aget v3, v0, v2

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-lez v3, :cond_1

    aget v3, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gez v3, :cond_1

    .line 487
    aget v3, v0, v1

    int-to-float v3, v3

    cmpl-float v3, p3, v3

    if-lez v3, :cond_0

    aget v3, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p3, v3

    if-gez v3, :cond_0

    .line 486
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 487
    goto :goto_0

    :cond_1
    move v1, v2

    .line 486
    goto :goto_0
.end method

.method private lockIconPossible()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 491
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 492
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getImageAlpha()I

    move-result v1

    const/16 v2, 0xbf

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 491
    :cond_0
    return v0
.end method

.method private updateClickability()V
    .locals 4

    .prologue
    .line 299
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    if-nez v3, :cond_0

    .line 300
    return-void

    .line 302
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isTouchExplorationEnabled()Z

    move-result v1

    .line 303
    .local v1, "clickToUnlock":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 304
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    .line 305
    .local v0, "clickToForceLock":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 306
    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 307
    .local v2, "longClickToForceLock":Z
    :goto_1
    if-nez v0, :cond_5

    .end local v1    # "clickToUnlock":Z
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setClickable(Z)V

    .line 308
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setLongClickable(Z)V

    .line 309
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/LockIcon;->setFocusable(Z)V

    .line 298
    return-void

    .line 304
    .end local v0    # "clickToForceLock":Z
    .end local v2    # "longClickToForceLock":Z
    .restart local v1    # "clickToUnlock":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "clickToForceLock":Z
    goto :goto_0

    .line 303
    .end local v0    # "clickToForceLock":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "clickToForceLock":Z
    goto :goto_0

    .line 306
    :cond_3
    const/4 v2, 0x1

    .restart local v2    # "longClickToForceLock":Z
    goto :goto_1

    .line 305
    .end local v2    # "longClickToForceLock":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "longClickToForceLock":Z
    goto :goto_1

    .line 307
    :cond_5
    const/4 v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method public isLockIconSelected(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->lockIconPossible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/LockIcon;->isOnIconExact(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    const/4 v0, 0x1

    return v0

    .line 479
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onAttachedToWindow()V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 135
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 172
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 173
    .local v0, "density":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDensity:I

    if-eq v0, v1, :cond_0

    .line 174
    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDensity:I

    .line 175
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    .line 176
    new-instance v1, Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/TrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    .line 177
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 170
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onDetachedFromWindow()V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconCallback:Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 143
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 314
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 313
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0202df

    .line 442
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 443
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 444
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 445
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 460
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageResource(I)V

    .line 465
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_0
    :goto_0
    return v5

    .line 447
    .restart local v0    # "x":F
    .restart local v1    # "y":F
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v2, v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingStarted(Z)V

    .line 449
    :pswitch_1
    const v2, 0x7f0202e0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageResource(I)V

    goto :goto_0

    .line 452
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageResource(I)V

    goto :goto_0

    .line 455
    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageResource(I)V

    .line 456
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconCallback:Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->isLockIconSelected(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 457
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconCallback:Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;->trustCircleSelected()V

    goto :goto_0

    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 123
    return-void
.end method

.method public setAccessibilityController(Lcom/android/systemui/statusbar/policy/AccessibilityController;)V
    .locals 0
    .param p1, "accessibilityController"    # Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 326
    return-void
.end method

.method public setBottomIconsCallback(Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconCallback:Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

    .line 472
    return-void
.end method

.method public setDeviceInteractive(Z)V
    .locals 0
    .param p1, "deviceInteractive"    # Z

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 159
    return-void
.end method

.method public setScreenOn(Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 164
    return-void
.end method

.method public setTransientFpError(Z)V
    .locals 0
    .param p1, "transientFpError"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTransientFpError:Z

    .line 156
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 154
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    .line 182
    return-void
.end method

.method public update(Z)V
    .locals 7
    .param p1, "force"    # Z

    .prologue
    .line 264
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v4

    if-nez v4, :cond_0

    .line 265
    return-void

    .line 268
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getState()I

    move-result v2

    .line 269
    .local v2, "state":I
    const-string/jumbo v4, "LockIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mLastState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 270
    const-string/jumbo v6, ", mDeviceInteractive = "

    .line 269
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 270
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    .line 269
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 270
    const-string/jumbo v6, ", mLastDeviceInteractive = "

    .line 269
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 271
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    .line 269
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 272
    const-string/jumbo v6, ", mScreenOn = "

    .line 269
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 272
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    .line 269
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 272
    const-string/jumbo v6, ", mLastScreenOn = "

    .line 269
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 272
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    .line 269
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 272
    const-string/jumbo v6, ",  force = "

    .line 269
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget v4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    if-ne v2, v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    if-eq v4, v5, :cond_4

    .line 275
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    invoke-direct {p0, v2, v4, v5}, Lcom/android/systemui/statusbar/phone/LockIcon;->getIconForState(IZZ)I

    move-result v1

    .line 276
    .local v1, "iconRes":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    .line 277
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 278
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/LockIcon;->setVisibility(I)V

    .line 280
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 281
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0676

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/LockIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 286
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    iput v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    .line 287
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    .line 288
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    .line 292
    .end local v1    # "iconRes":I
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v3

    .line 293
    .local v3, "trustManaged":Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->setTrustManaged(Z)V

    .line 294
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateClickability()V

    .line 263
    return-void

    .line 274
    .end local v3    # "trustManaged":Z
    :cond_4
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    if-ne v4, v5, :cond_1

    .line 273
    if-eqz p1, :cond_3

    goto :goto_0

    .line 284
    .restart local v1    # "iconRes":I
    :cond_5
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/LockIcon;->setVisibility(I)V

    goto :goto_1
.end method
