.class public Lcom/android/systemui/statusbar/phone/StatusBarIconController;
.super Lcom/android/systemui/statusbar/phone/StatusBarIconList;
.source "StatusBarIconController.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarIconController$1;
    }
.end annotation


# static fields
.field private static final sTmpInt2:[I

.field private static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field protected mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

.field protected mBatteryMeterViewKeyguard:Lcom/android/systemui/BatteryMeterView;

.field private mBatteryText:Landroid/widget/TextView;

.field private mClock:Landroid/widget/TextView;

.field protected mContext:Landroid/content/Context;

.field private mDarkIntensity:F

.field private mDarkModeIconColorSingleTone:I

.field private mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

.field private final mHandler:Landroid/os/Handler;

.field protected final mIconBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mIconHPadding:I

.field protected mIconSize:I

.field private mIconTint:I

.field private mKeyguardBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

.field private mKeyguardBatteryText:Landroid/widget/TextView;

.field private mKeyguardCarrierText:Landroid/widget/TextView;

.field private mKeyguardNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

.field private mKeyguardOperatorLogoView:Landroid/widget/ImageView;

.field private mKeyguardSignalCluster:Lcom/android/systemui/statusbar/SignalClusterView;

.field private mKeyguardTwoPhoneModeIcon:Landroid/widget/ImageView;

.field private mLightModeIconColorSingleTone:I

.field private mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

.field protected mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field protected mNotificationIconAreaInner:Landroid/view/View;

.field private mPendingDarkIntensity:F

.field protected mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field protected mSignalCluster:Lcom/android/systemui/statusbar/SignalClusterView;

.field private mStatusBarContents:Landroid/widget/LinearLayout;

.field protected mStatusIcons:Landroid/widget/LinearLayout;

.field protected mStatusIconsKeyguard:Landroid/widget/LinearLayout;

.field private mSystemIcon:Landroid/widget/LinearLayout;

.field private mSystemIconArea:Landroid/widget/LinearLayout;

.field private mSystemIconKeyguard:Landroid/widget/LinearLayout;

.field private mTintAnimator:Landroid/animation/ValueAnimator;

.field private final mTintArea:Landroid/graphics/Rect;

.field private mTintChangePending:Z

.field private mTransitionDeferring:Z

.field private final mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

.field private mTransitionDeferringDuration:J

.field private mTransitionDeferringStartTime:J

.field private mTransitionPending:Z

.field private mTwoPhoneModeIcon:Landroid/widget/ImageView;


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/StatusBarIconController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferring:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/StatusBarIconController;F)V
    .locals 0
    .param p1, "darkIntensity"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconTintInternal(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->sTmpRect:Landroid/graphics/Rect;

    .line 100
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->sTmpInt2:[I

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBar"    # Landroid/view/View;
    .param p3, "keyguardStatusBar"    # Landroid/view/View;
    .param p4, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    const v8, 0x7f130428

    const v7, 0x7f130427

    const v6, 0x7f130426

    const v5, 0x7f1303c6

    const v4, 0x7f13042a

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 145
    const v3, 0x107002c

    .line 144
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;-><init>([Ljava/lang/String;)V

    .line 96
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    .line 98
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintArea:Landroid/graphics/Rect;

    .line 120
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconBlacklist:Landroid/util/ArraySet;

    .line 122
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarIconController$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

    .line 146
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    .line 147
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 148
    const v2, 0x7f1303ec

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSystemIconArea:Landroid/widget/LinearLayout;

    .line 149
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 150
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/SignalClusterView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSignalCluster:Lcom/android/systemui/statusbar/SignalClusterView;

    .line 153
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSystemIcon:Landroid/widget/LinearLayout;

    .line 154
    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSystemIconKeyguard:Landroid/widget/LinearLayout;

    .line 157
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v2

    invoke-virtual {v2, p1, p4}, Lcom/android/systemui/SystemUIFactory;->createNotificationIconAreaController(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 160
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getNotificationInnerAreaView()Landroid/view/View;

    move-result-object v2

    .line 159
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconAreaInner:Landroid/view/View;

    .line 163
    const v2, 0x7f1303eb

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 164
    .local v1, "notificationIconArea":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 166
    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    .line 168
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/BatteryMeterView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    .line 169
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/BatteryMeterView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryMeterViewKeyguard:Lcom/android/systemui/BatteryMeterView;

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->scaleBatteryMeterViews(Landroid/content/Context;)V

    .line 173
    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/SignalClusterView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardSignalCluster:Lcom/android/systemui/statusbar/SignalClusterView;

    .line 174
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/BatteryMeterView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    .line 175
    const v2, 0x7f1301fc

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardCarrierText:Landroid/widget/TextView;

    .line 177
    instance-of v2, p3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v2, :cond_2

    move-object v0, p3

    .line 178
    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 179
    .local v0, "keyguardStatusBarView":Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
    const-string/jumbo v2, "LOCK"

    sget-object v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_OPERATOR_LOGO_ICON:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "BOTH"

    sget-object v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_OPERATOR_LOGO_ICON:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorLogoView:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardOperatorLogoView:Landroid/widget/ImageView;

    .line 182
    :cond_1
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_TWO_PHONE:Z

    if-eqz v2, :cond_2

    .line 183
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardTwoPhoneModeIcon:Landroid/widget/ImageView;

    .line 189
    .end local v0    # "keyguardStatusBarView":Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
    :cond_2
    const v2, 0x7f130429

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryText:Landroid/widget/TextView;

    .line 190
    const v2, 0x7f130429

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardBatteryText:Landroid/widget/TextView;

    .line 193
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_TWO_PHONE:Z

    if-eqz v2, :cond_3

    .line 194
    const v2, 0x7f1303ea

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusBarContents:Landroid/widget/LinearLayout;

    .line 197
    :cond_3
    const v2, 0x7f1301cf

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mClock:Landroid/widget/TextView;

    .line 198
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_REAL_TIME_NETWORK_SPEED:Z

    if-eqz v2, :cond_4

    .line 199
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetspeedView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    .line 200
    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetspeedView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    .line 202
    :cond_4
    const v2, 0x7f0b00e8

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkModeIconColorSingleTone:I

    .line 203
    const v2, 0x7f0b00eb

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mLightModeIconColorSingleTone:I

    .line 204
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mHandler:Landroid/os/Handler;

    .line 205
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->loadDimens()V

    .line 207
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "icon_blacklist"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, p0, v3}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method private animateIconTint(FJJ)V
    .locals 4
    .param p1, "targetDarkIntensity"    # F
    .param p2, "delay"    # J
    .param p4, "duration"    # J

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 554
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkIntensity:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    .line 555
    return-void

    .line 557
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkIntensity:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    .line 558
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 564
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 565
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 566
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 567
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 550
    return-void
.end method

.method private animateShow(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 483
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 484
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 485
    if-nez p2, :cond_0

    .line 486
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 487
    return-void

    .line 489
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 491
    const-wide/16 v2, 0x140

    .line 489
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 492
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 489
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 493
    const-wide/16 v2, 0x32

    .line 489
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 498
    const/4 v1, 0x0

    .line 489
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 501
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardFadingAway()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 503
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDuration()J

    move-result-wide v2

    .line 502
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 504
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 502
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 505
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v2

    .line 502
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 482
    :cond_1
    return-void
.end method

.method private deferIconTintChange(F)V
    .locals 1
    .param p1, "darkIntensity"    # F

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintChangePending:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPendingDarkIntensity:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 580
    return-void

    .line 582
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintChangePending:Z

    .line 583
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPendingDarkIntensity:F

    .line 578
    return-void
.end method

.method public static getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F
    .locals 1
    .param p0, "tintArea"    # Landroid/graphics/Rect;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "intensity"    # F

    .prologue
    .line 603
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    return p2

    .line 606
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 6
    .param p0, "blackListStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 716
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 717
    .local v1, "ret":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 718
    const-string/jumbo p0, "rotate,headset"

    .line 720
    :cond_0
    const-string/jumbo v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, "blacklist":[Ljava/lang/String;
    const/4 v3, 0x0

    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 722
    .local v2, "slot":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 723
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 721
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 726
    .end local v2    # "slot":Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method public static getTint(Landroid/graphics/Rect;Landroid/view/View;I)I
    .locals 1
    .param p0, "tintArea"    # Landroid/graphics/Rect;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "color"    # I

    .prologue
    .line 591
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    return p2

    .line 594
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private static isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z
    .locals 9
    .param p0, "area"    # Landroid/graphics/Rect;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 615
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 616
    return v5

    .line 618
    :cond_0
    sget-object v7, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 619
    sget-object v7, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->sTmpInt2:[I

    invoke-virtual {p1, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 620
    sget-object v7, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->sTmpInt2:[I

    aget v4, v7, v6

    .line 622
    .local v4, "left":I
    iget v7, p0, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 623
    .local v3, "intersectStart":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v4

    iget v8, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 624
    .local v2, "intersectEnd":I
    sub-int v7, v2, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 626
    .local v1, "intersectAmount":I
    iget v7, p0, Landroid/graphics/Rect;->top:I

    if-gtz v7, :cond_1

    const/4 v0, 0x1

    .line 627
    .local v0, "coversFullStatusBar":Z
    :goto_0
    mul-int/lit8 v7, v1, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    if-le v7, v8, :cond_2

    .line 628
    .local v5, "majorityOfWidth":Z
    :goto_1
    if-eqz v5, :cond_3

    .end local v0    # "coversFullStatusBar":Z
    :goto_2
    return v0

    .line 626
    .end local v5    # "majorityOfWidth":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "coversFullStatusBar":Z
    goto :goto_0

    :cond_2
    move v5, v6

    .line 627
    goto :goto_1

    .restart local v5    # "majorityOfWidth":Z
    :cond_3
    move v0, v6

    .line 628
    goto :goto_2
.end method

.method private setHeightAndCenter(Landroid/widget/ImageView;I)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "height"    # I

    .prologue
    .line 322
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 323
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 324
    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 325
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 327
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    return-void
.end method

.method private setIconTintInternal(F)V
    .locals 3
    .param p1, "darkIntensity"    # F

    .prologue
    .line 571
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkIntensity:F

    .line 572
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    .line 573
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mLightModeIconColorSingleTone:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkModeIconColorSingleTone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 572
    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    .line 574
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setIconTint(I)V

    .line 575
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->applyIconTint()V

    .line 570
    return-void
.end method

.method private updateBatteryLevelDensity()V
    .locals 2

    .prologue
    const v1, 0x7f0d03c6

    .line 772
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryText:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 773
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardBatteryText:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 771
    return-void
.end method

.method private updateClock()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 760
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mClock:Landroid/widget/TextView;

    const v1, 0x7f0d01d8

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 761
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mClock:Landroid/widget/TextView;

    .line 762
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 763
    const v2, 0x7f0d01d9

    .line 762
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 765
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 766
    const v3, 0x7f0d01da

    .line 765
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 761
    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 759
    return-void
.end method

.method private updateNetspeedView()V
    .locals 2

    .prologue
    const v1, 0x7f0d01d8

    .line 837
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 839
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 836
    :cond_0
    return-void
.end method


# virtual methods
.method protected addSystemIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 10
    .param p1, "index"    # I
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x2

    .line 275
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getSlot(I)Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "slot":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getViewIndex(I)I

    move-result v4

    .line 277
    .local v4, "viewIndex":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 278
    .local v0, "blocked":Z
    new-instance v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5, v2, v9, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;Z)V

    .line 279
    .local v3, "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v3, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 281
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 282
    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconSize:I

    .line 281
    invoke-direct {v1, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 283
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconHPadding:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconHPadding:I

    invoke-virtual {v1, v5, v7, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 284
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 286
    new-instance v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    .end local v3    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5, v2, v9, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;Z)V

    .line 287
    .restart local v3    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v3, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 288
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 289
    iget v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconSize:I

    .line 288
    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v3, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 290
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->applyIconTint()V

    .line 274
    return-void
.end method

.method protected animateHide(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 460
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 461
    if-nez p2, :cond_0

    .line 462
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 463
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 464
    return-void

    .line 466
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 468
    const-wide/16 v2, 0xa0

    .line 466
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 469
    const-wide/16 v2, 0x0

    .line 466
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 470
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 466
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 471
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarIconController;Landroid/view/View;)V

    .line 466
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 459
    return-void
.end method

.method public appTransitionCancelled()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 688
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionPending:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintChangePending:Z

    if-eqz v0, :cond_0

    .line 689
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintChangePending:Z

    .line 690
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPendingDarkIntensity:F

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x78

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateIconTint(FJJ)V

    .line 692
    :cond_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionPending:Z

    .line 687
    return-void
.end method

.method public appTransitionPending()V
    .locals 1

    .prologue
    .line 684
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionPending:Z

    .line 683
    return-void
.end method

.method public appTransitionStarting(JJ)V
    .locals 7
    .param p1, "startTime"    # J
    .param p3, "duration"    # J

    .prologue
    const/4 v6, 0x0

    .line 696
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionPending:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintChangePending:Z

    if-eqz v0, :cond_1

    .line 697
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintChangePending:Z

    .line 698
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPendingDarkIntensity:F

    .line 699
    const-wide/16 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v4, p1, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object v0, p0

    move-wide v4, p3

    .line 698
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateIconTint(FJJ)V

    .line 712
    :cond_0
    :goto_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionPending:Z

    .line 695
    return-void

    .line 702
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionPending:Z

    if-eqz v0, :cond_0

    .line 706
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferring:Z

    .line 707
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferringStartTime:J

    .line 708
    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferringDuration:J

    .line 709
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 710
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected applyIconTint()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 632
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 633
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 634
    .local v1, "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintArea:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-static {v2, v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 632
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 636
    .end local v1    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSignalCluster:Lcom/android/systemui/statusbar/SignalClusterView;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkIntensity:F

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconTint(IFLandroid/graphics/Rect;)V

    .line 637
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    .line 638
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintArea:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v2, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkIntensity:F

    .line 637
    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/systemui/BatteryMeterView;->setDarkIntensity(F)V

    .line 639
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mClock:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintArea:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mClock:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-static {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 642
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintArea:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryText:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-static {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 643
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardBatteryText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintArea:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardBatteryText:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-static {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 646
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_TWO_PHONE:Z

    if-eqz v2, :cond_1

    .line 647
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 648
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 653
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 654
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 655
    .restart local v1    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintArea:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-static {v2, v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v1    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_2
    move v2, v3

    .line 638
    goto :goto_1

    .line 658
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardSignalCluster:Lcom/android/systemui/statusbar/SignalClusterView;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkIntensity:F

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconTint(IFLandroid/graphics/Rect;)V

    .line 659
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    .line 660
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintArea:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkIntensity:F

    .line 659
    :cond_4
    invoke-virtual {v2, v3}, Lcom/android/systemui/BatteryMeterView;->setDarkIntensity(F)V

    .line 661
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardCarrierText:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 663
    const-string/jumbo v2, "LOCK"

    sget-object v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_OPERATOR_LOGO_ICON:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "BOTH"

    sget-object v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_OPERATOR_LOGO_ICON:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 664
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardOperatorLogoView:Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    .line 665
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardOperatorLogoView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 668
    :cond_6
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_TWO_PHONE:Z

    if-eqz v2, :cond_7

    .line 669
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardTwoPhoneModeIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    .line 670
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardTwoPhoneModeIcon:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 675
    :cond_7
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_REAL_TIME_NETWORK_SPEED:Z

    if-eqz v2, :cond_8

    .line 676
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    if-eqz v2, :cond_8

    .line 677
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setTextColor(I)V

    .line 678
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setTextColor(I)V

    .line 631
    :cond_8
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    if-nez v0, :cond_0

    .line 451
    new-instance v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconSize:I

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;-><init>(Landroid/widget/LinearLayout;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 449
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 431
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 432
    .local v0, "N":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  system icons: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 434
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 435
    .local v2, "ic":Lcom/android/systemui/statusbar/StatusBarIconView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] icon="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 439
    .end local v2    # "ic":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->size()I

    move-result v3

    .line 440
    .local v3, "slotNum":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  slot lists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    .line 442
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] slot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getSlot(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 446
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->dump(Ljava/io/PrintWriter;)V

    .line 430
    return-void
.end method

.method protected handleSet(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 384
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getViewIndex(I)I

    move-result v1

    .line 385
    .local v1, "viewIndex":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 386
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 388
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 389
    .restart local v0    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->applyIconTint()V

    .line 383
    return-void
.end method

.method public hideNotificationIconArea(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateHide(Landroid/view/View;Z)V

    .line 418
    return-void
.end method

.method public hideSystemIcon(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSystemIcon:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateHide(Landroid/view/View;Z)V

    .line 401
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSystemIconKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateHide(Landroid/view/View;Z)V

    .line 399
    return-void
.end method

.method public hideSystemIconArea(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateHide(Landroid/view/View;Z)V

    .line 410
    return-void
.end method

.method protected loadDimens()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 269
    const v1, 0x105001e

    .line 268
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconSize:I

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 271
    const v1, 0x7f0d01ea

    .line 270
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconHPadding:I

    .line 267
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 730
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->loadDimens()V

    .line 731
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->onDensityOrFontScaleChanged(Landroid/content/Context;)V

    .line 732
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->updateClock()V

    .line 735
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->updateBatteryLevelDensity()V

    .line 737
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 738
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 739
    .local v0, "child":Landroid/view/View;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 740
    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconSize:I

    .line 739
    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 741
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconHPadding:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconHPadding:I

    invoke-virtual {v2, v3, v6, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 742
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 737
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 744
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 745
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 746
    .restart local v0    # "child":Landroid/view/View;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 747
    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconSize:I

    .line 746
    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 748
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 744
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 750
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->scaleBatteryMeterViews(Landroid/content/Context;)V

    .line 753
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->applyIconTint()V

    .line 754
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_REAL_TIME_NETWORK_SPEED:Z

    if-eqz v3, :cond_2

    .line 755
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->updateNetspeedView()V

    .line 729
    :cond_2
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 247
    const-string/jumbo v2, "icon_blacklist"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 248
    return-void

    .line 250
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 251
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconBlacklist:Landroid/util/ArraySet;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 252
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/StatusBarIconView;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 255
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 259
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSlot()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIcon(Ljava/lang/String;)V

    .line 258
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 262
    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 263
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSlot()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 246
    :cond_3
    return-void
.end method

.method public removeIcon(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v1

    if-nez v1, :cond_0

    .line 352
    return-void

    .line 354
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->removeIcon(I)V

    .line 355
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getViewIndex(I)I

    move-result v0

    .line 358
    .local v0, "viewIndex":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 359
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 360
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 361
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 350
    :cond_2
    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 1
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    .line 335
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getSlotIndex(Ljava/lang/String;)I

    move-result v0

    .line 336
    .local v0, "index":I
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIcon(I)V

    .line 334
    return-void
.end method

.method protected scaleBatteryMeterViews(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 219
    .local v4, "res":Landroid/content/res/Resources;
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 221
    .local v6, "typedValue":Landroid/util/TypedValue;
    const v7, 0x7f0d01dd

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v6, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 222
    invoke-virtual {v6}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    .line 224
    .local v2, "iconScaleFactor":F
    const v7, 0x7f0d01d6

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 225
    .local v0, "batteryHeight":I
    const v7, 0x7f0d01d7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 226
    .local v1, "batteryWidth":I
    const v7, 0x7f0d02f7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 228
    .local v3, "marginBottom":I
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 229
    int-to-float v7, v1

    mul-float/2addr v7, v2

    float-to-int v7, v7

    int-to-float v8, v0

    mul-float/2addr v8, v2

    float-to-int v8, v8

    .line 228
    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 230
    .local v5, "scaledLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, v9, v9, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginsRelative(IIII)V

    .line 232
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v7, v5}, Lcom/android/systemui/BatteryMeterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryMeterViewKeyguard:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v7, v5}, Lcom/android/systemui/BatteryMeterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    return-void
.end method

.method public setClockVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 427
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mClock:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 426
    return-void

    .line 427
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setExternalIcon(Ljava/lang/String;)V
    .locals 6
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 308
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getSlotIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getViewIndex(I)I

    move-result v2

    .line 309
    .local v2, "viewIndex":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 310
    const v4, 0x7f0d01e8

    .line 309
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 311
    .local v0, "height":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 312
    .local v1, "imageView":Landroid/widget/ImageView;
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 313
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 314
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setHeightAndCenter(Landroid/widget/ImageView;I)V

    .line 315
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "imageView":Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 316
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 317
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 318
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setHeightAndCenter(Landroid/widget/ImageView;I)V

    .line 307
    return-void
.end method

.method public setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 370
    if-nez p2, :cond_0

    .line 371
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIcon(I)V

    .line 372
    return-void

    .line 374
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 375
    .local v0, "isNew":Z
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 376
    if-eqz v0, :cond_2

    .line 377
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addSystemIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 369
    :goto_1
    return-void

    .line 374
    .end local v0    # "isNew":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isNew":Z
    goto :goto_0

    .line 379
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->handleSet(ILcom/android/internal/statusbar/StatusBarIcon;)V

    goto :goto_1
.end method

.method public setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V
    .locals 8
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "resourceId"    # I
    .param p3, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 294
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getSlotIndex(Ljava/lang/String;)I

    move-result v7

    .line 295
    .local v7, "index":I
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    .line 296
    .local v0, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-nez v0, :cond_0

    .line 297
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    .end local v0    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 298
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    move v5, v4

    move-object v6, p3

    .line 297
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 299
    .restart local v0    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 293
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    .line 302
    iput-object p3, v0, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    .line 303
    invoke-virtual {p0, v7, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->handleSet(ILcom/android/internal/statusbar/StatusBarIcon;)V

    goto :goto_0
.end method

.method public setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 1
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getSlotIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 330
    return-void
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "visibility"    # Z

    .prologue
    .line 340
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getSlotIndex(Ljava/lang/String;)I

    move-result v1

    .line 341
    .local v1, "index":I
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    .line 342
    .local v0, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-ne v2, p2, :cond_1

    .line 343
    :cond_0
    return-void

    .line 345
    :cond_1
    iput-boolean p2, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 346
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->handleSet(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 339
    return-void
.end method

.method public setIconsDark(ZZ)V
    .locals 8
    .param p1, "dark"    # Z
    .param p2, "animate"    # Z

    .prologue
    const-wide/16 v2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 530
    if-nez p2, :cond_2

    .line 532
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    .line 533
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 537
    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconTintInternal(F)V

    .line 529
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 537
    goto :goto_0

    .line 538
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionPending:Z

    if-eqz v4, :cond_4

    .line 539
    if-eqz p1, :cond_3

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->deferIconTintChange(F)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 540
    :cond_4
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferring:Z

    if-eqz v4, :cond_6

    .line 541
    if-eqz p1, :cond_5

    move v1, v0

    .line 542
    :cond_5
    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferringStartTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 543
    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferringDuration:J

    move-object v0, p0

    .line 541
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateIconTint(FJJ)V

    goto :goto_1

    .line 545
    :cond_6
    if-eqz p1, :cond_7

    move v1, v0

    :cond_7
    const-wide/16 v4, 0x78

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateIconTint(FJJ)V

    goto :goto_1
.end method

.method public setIconsDarkArea(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "darkArea"    # Landroid/graphics/Rect;

    .prologue
    .line 517
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    return-void

    .line 520
    :cond_0
    if-nez p1, :cond_1

    .line 521
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 525
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->applyIconTint()V

    .line 526
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setTintArea(Landroid/graphics/Rect;)V

    .line 516
    return-void

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public setOperatorLogoIndicator(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setOperatorLogoIndicator(Landroid/widget/ImageView;)V

    .line 793
    return-void
.end method

.method public setSignalCluster(Lcom/android/systemui/statusbar/SignalClusterView;)V
    .locals 0
    .param p1, "signalCluster"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSignalCluster:Lcom/android/systemui/statusbar/SignalClusterView;

    .line 210
    return-void
.end method

.method setStatusBarCarrierLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setStatusBarCarrierLabelView(Landroid/widget/TextView;)V

    .line 811
    return-void
.end method

.method public setTwoPhoneModeIcon(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 822
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    .line 823
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSystemIconArea:Landroid/widget/LinearLayout;

    instance-of v1, v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 824
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSystemIconArea:Landroid/widget/LinearLayout;

    .line 825
    .local v0, "linearlayout":Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 827
    .end local v0    # "linearlayout":Landroid/widget/LinearLayout;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 821
    return-void
.end method

.method public showNotificationIconArea(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateShow(Landroid/view/View;Z)V

    .line 422
    return-void
.end method

.method showStatusBarCarrierLabel()V
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->showStatusBarCarrierLabel()V

    .line 803
    return-void
.end method

.method public showSystemIcon(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSystemIcon:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateShow(Landroid/view/View;Z)V

    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSystemIconKeyguard:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateShow(Landroid/view/View;Z)V

    .line 404
    return-void
.end method

.method public showSystemIconArea(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateShow(Landroid/view/View;Z)V

    .line 414
    return-void
.end method

.method public updateBatteryTextLevel(I)V
    .locals 7
    .param p1, "level"    # I

    .prologue
    const v6, 0x7f0f0614

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 777
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardBatteryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    return-void
.end method

.method public updateBatteryTextVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 782
    if-eqz p1, :cond_0

    .line 783
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 784
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardBatteryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 781
    :goto_0
    return-void

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 787
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mKeyguardBatteryText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateNotificationIcons(Lcom/android/systemui/statusbar/NotificationData;)V
    .locals 1
    .param p1, "notificationData"    # Lcom/android/systemui/statusbar/NotificationData;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateNotificationIcons(Lcom/android/systemui/statusbar/NotificationData;)V

    .line 394
    return-void
.end method

.method public updateOperatorLogoVisibility()V
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateOperatorLogoVisibility()V

    .line 797
    return-void
.end method

.method public updateTwoPhoneModeIcon(ZI)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "iconID"    # I

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 832
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 830
    return-void

    .line 832
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
