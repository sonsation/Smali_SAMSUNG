.class public Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
.super Landroid/widget/RelativeLayout;
.source "KeyguardStatusBarView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# instance fields
.field private mBatteryCharging:Z

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryLevel:Landroid/widget/TextView;

.field private mBatteryListening:Z

.field private mCarrierLabel:Landroid/widget/TextView;

.field private mClock:Lcom/android/systemui/statusbar/policy/Clock;

.field private mClockAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mClockTranslationAniamtor:Lcom/android/systemui/qs/TouchAnimator;

.field private mContext:Landroid/content/Context;

.field private mEmergencyModeActivated:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsDeskTopMode:Z

.field private mIsUserSwitcherAnimating:Z

.field private mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field private mKeyguardUserSwitcherShowing:Z

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field private mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field protected mOperatorLogoView:Landroid/widget/ImageView;

.field private mServiceContainerScrolledAmount:F

.field private mSystemIconsBaseMargin:I

.field private mSystemIconsContainer:Landroid/view/View;

.field private mSystemIconsSuperContainer:Landroid/view/View;

.field private mSystemIconsSwitcherHiddenExpandedMargin:I

.field protected mTwoPhoneModeIcon:Landroid/widget/ImageView;

.field private mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/policy/Clock;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mServiceContainerScrolledAmount:F

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIsUserSwitcherAnimating:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateClockPositionAnimation()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateVisibilities()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEmergencyModeActivated:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mServiceContainerScrolledAmount:F

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIsDeskTopMode:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private animateNextLayoutChange()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/Clock;->getLeft()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;ZII)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getPixel(I)I
    .locals 2

    int-to-float v0, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private loadDimens()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0312

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSwitcherHiddenExpandedMargin:I

    const v1, 0x7f0d023f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsBaseMargin:I

    return-void
.end method

.method private updateClockPositionAnimation()V
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateCLockAnimator()V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mServiceContainerScrolledAmount:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setClockPosition(F)V

    :cond_0
    return-void
.end method

.method private updateSidePadding()V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    sget v2, Lcom/android/systemui/SystemUIRune;->CONFIG_DEVICE_CORNER_ROUND:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d04ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d04ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v1, v4, v0, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setPaddingRelative(IIII)V

    return-void

    :cond_0
    sget v2, Lcom/android/systemui/SystemUIRune;->CONFIG_STATUSBAR_SIDE_PADDING:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getPixel(I)I

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method private updateSystemIconsLayoutParams()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsBaseMargin:I

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherShowing:Z

    if-eqz v3, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSwitcherHiddenExpandedMargin:I

    :goto_1
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$LayoutParams;->getMarginEnd()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1
.end method

.method private updateUserSwitcher()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setKeyguardMode(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateVisibilities()V
    .locals 5

    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_LOCKSCREEN_MUM_BUTTON:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KnoxStateMonitor;->isUsersEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherShowing:Z

    if-eqz v1, :cond_5

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->removeView(Landroid/view/View;)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEmergencyModeActivated:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->IS_LDU_POPUP:Z

    if-eqz v3, :cond_4

    move v1, v2

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->addView(Landroid/view/View;I)V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->removeView(Landroid/view/View;)V

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getSwitchableUserCount()I

    move-result v3

    if-le v3, v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setVisibility(I)V

    goto :goto_1

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInMultiUserSwitch(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    new-array v0, v3, [I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getLocationInWindow([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    aget v3, v0, v5

    if-lt v1, v3, :cond_0

    aget v3, v0, v5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-gt v1, v3, :cond_0

    aget v3, v0, v6

    if-lt v2, v3, :cond_0

    aget v3, v0, v6

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-gt v2, v3, :cond_0

    return v6

    :cond_0
    return v5
.end method

.method public isKeyguardUserSwitcherShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherShowing:Z

    return v0
.end method

.method public onBatteryLevelChanged(IZZIIIIZ)V
    .locals 8

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    int-to-double v4, p1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryCharging:Z

    if-eq v2, p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryCharging:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateVisibilities()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d031c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d031a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0310

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0311

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d023a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d023e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d032a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0518

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0329

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryLevel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0323

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0327

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_LOCKSCREEN_MUM_BUTTON:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d023d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateClockPositionAnimation()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d023c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_LOCKSCREEN_MUM_BUTTON:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d023d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    const v2, 0x7f0d043e

    invoke-static {v1, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateSidePadding()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d023c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public onEmergencyModeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEmergencyModeActivated:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateVisibilities()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 10

    const/4 v9, -0x1

    const/4 v8, -0x2

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v3, 0x7f13029e

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    const v3, 0x7f13029f

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    const v3, 0x7f13029b

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const v3, 0x7f13029c

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    const v3, 0x7f1302a0

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryLevel:Landroid/widget/TextView;

    const v3, 0x7f1302a2

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    const v3, 0x7f13029d

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    new-instance v6, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/policy/Clock;->setCallback(Lcom/android/systemui/statusbar/policy/Clock$Callback;)V

    :cond_0
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateSidePadding()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->loadDimens()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateUserSwitcher()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/SettingsHelper;->isEmergencyMode()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEmergencyModeActivated:Z

    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_LOCKSCREEN_MUM_BUTTON:Z

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0d023d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateVisibilities()V

    :cond_1
    :goto_0
    const-string/jumbo v3, "LOCK"

    sget-object v6, Lcom/android/systemui/SystemUIRune;->SUPPORT_OPERATOR_LOGO_ICON:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "BOTH"

    sget-object v6, Lcom/android/systemui/SystemUIRune;->SUPPORT_OPERATOR_LOGO_ICON:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorLogoView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorLogoView:Landroid/widget/ImageView;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v3, "ORANGE"

    sget-object v6, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorLogoView:Landroid/widget/ImageView;

    const v6, 0x7f020616

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0327

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v3, v6, v5, v5, v5}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    const v3, 0x7f1302a1

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorLogoView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorLogoView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_TWO_PHONE:Z

    if-eqz v3, :cond_5

    new-instance v3, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x7f13019c

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateClockPositionAnimation()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIsDeskTopMode:Z

    if-eqz v3, :cond_b

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const-string/jumbo v3, "LOCK"

    sget-object v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_OPERATOR_LOGO_ICON:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateOperatorLogoVisibility()V

    :cond_6
    return-void

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->removeView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v3, "KTT"

    sget-object v6, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorLogoView:Landroid/widget/ImageView;

    const v6, 0x7f020614

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v3, "LGT"

    sget-object v6, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorLogoView:Landroid/widget/ImageView;

    const v6, 0x7f020615

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v3, "SKT"

    sget-object v6, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorLogoView:Landroid/widget/ImageView;

    const v6, 0x7f020618

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_b
    move v3, v5

    goto :goto_2
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIsUserSwitcherAnimating:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateClockPositionAnimation()V

    :cond_0
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0

    return-void
.end method

.method public setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    const v0, 0x7f1301a2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/BatteryMeterView;->setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    return-void
.end method

.method public setBgColor(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->invalidate()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->bringToFront()V

    :cond_0
    return-void
.end method

.method public setClockPosition(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClockTranslationAniamtor:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClockTranslationAniamtor:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClockAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClockAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mServiceContainerScrolledAmount:F

    return-void
.end method

.method public setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateUserSwitcher()V

    return-void
.end method

.method public setKeyguardUserSwitcherShowing(ZZ)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIsUserSwitcherAnimating:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherShowing:Z

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->animateNextLayoutChange()V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateVisibilities()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateSystemIconsLayoutParams()V

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryListening:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryListening:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryListening:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    goto :goto_0
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    return-void
.end method

.method public setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->addListener(Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;)V

    return-void
.end method

.method public setUserSwitcherController(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setUserSwitcherController(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateVisibilities()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateSystemIconsLayoutParams()V

    goto :goto_0
.end method

.method public updateCLockAnimator()V
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/Clock;->getWidth()I

    move-result v1

    int-to-float v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/Clock;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    const-string/jumbo v3, "translationX"

    new-array v4, v8, [F

    aput v0, v4, v6

    aput v5, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    const-string/jumbo v3, "translationX"

    new-array v4, v8, [F

    aput v0, v4, v6

    aput v5, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClockTranslationAniamtor:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    const-string/jumbo v3, "alpha"

    new-array v4, v8, [F

    aput v5, v4, v6

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClockAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClockTranslationAniamtor:Lcom/android/systemui/qs/TouchAnimator;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClockAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0
.end method

.method public updateDeskTopMode(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIsDeskTopMode:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const-string/jumbo v0, "LOCK"

    sget-object v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_OPERATOR_LOGO_ICON:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateOperatorLogoVisibility()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateOperatorLogoVisibility()V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIsDeskTopMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->shouldDisplayOperatorIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method updateTwoPhoneModeIcon(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
