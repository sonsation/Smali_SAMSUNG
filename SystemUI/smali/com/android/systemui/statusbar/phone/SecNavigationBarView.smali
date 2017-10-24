.class public Lcom/android/systemui/statusbar/phone/SecNavigationBarView;
.super Lcom/android/systemui/statusbar/phone/NavigationBarView;
.source "SecNavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;,
        Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;,
        Lcom/android/systemui/statusbar/phone/SecNavigationBarView$3;
    }
.end annotation


# instance fields
.field private final mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

.field private mChangeIconColorWhenIMEState:Ljava/lang/Runnable;

.field mCurrentRemoteView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mImageIcon:Z

.field private mIsThemeDefault:Z

.field private mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

.field private mMarqueeList:[[I

.field private mMarqueePos:I

.field mNaviBarRemoteViewCallback:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteViewCallback;

.field mNaviBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

.field private mNavigationBarIconcolor:I

.field private mNavigationBarSettingsCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

.field private mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

.field private mRandom:Ljava/util/Random;

.field private mRightRemoteViewContainer:Landroid/widget/LinearLayout;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Lcom/android/systemui/statusbar/phone/NavigationBarController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setMenuImeSidePadding()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;Z)V
    .locals 0
    .param p1, "themeDefault"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateNavigationBarColor(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateRemoteView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHandler:Landroid/os/Handler;

    .line 63
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImageIcon:Z

    .line 64
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    .line 68
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    .line 74
    const/16 v1, 0x11

    new-array v1, v1, [[I

    .line 75
    filled-new-array {v5, v5, v5, v5}, [I

    move-result-object v2

    aput-object v2, v1, v5

    filled-new-array {v5, v5, v4, v8}, [I

    move-result-object v2

    aput-object v2, v1, v6

    filled-new-array {v5, v5, v6, v7}, [I

    move-result-object v2

    aput-object v2, v1, v4

    filled-new-array {v4, v5, v5, v8}, [I

    move-result-object v2

    aput-object v2, v1, v7

    .line 76
    filled-new-array {v6, v5, v5, v7}, [I

    move-result-object v2

    aput-object v2, v1, v8

    filled-new-array {v8, v5, v5, v4}, [I

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    filled-new-array {v7, v5, v5, v6}, [I

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    filled-new-array {v8, v4, v5, v5}, [I

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 77
    filled-new-array {v7, v6, v5, v5}, [I

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    filled-new-array {v4, v8, v5, v5}, [I

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    filled-new-array {v6, v7, v5, v5}, [I

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    filled-new-array {v5, v8, v4, v5}, [I

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 78
    filled-new-array {v5, v7, v6, v5}, [I

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

    filled-new-array {v5, v4, v8, v5}, [I

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    filled-new-array {v5, v6, v7, v5}, [I

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v1, v3

    filled-new-array {v5, v5, v8, v4}, [I

    move-result-object v2

    const/16 v3, 0xf

    aput-object v2, v1, v3

    .line 79
    filled-new-array {v5, v5, v7, v6}, [I

    move-result-object v2

    const/16 v3, 0x10

    aput-object v2, v1, v3

    .line 74
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeList:[[I

    .line 81
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRandom:Ljava/util/Random;

    .line 82
    iput v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    .line 87
    new-instance v1, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

    .line 133
    new-instance v1, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mChangeIconColorWhenIMEState:Ljava/lang/Runnable;

    .line 301
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNaviBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    .line 302
    new-instance v1, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$3;-><init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNaviBarRemoteViewCallback:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteViewCallback;

    .line 425
    iput v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarIconcolor:I

    .line 109
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarController;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    .line 111
    invoke-static {p1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    .line 112
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_CUSTOM_NAVIBAR_BGCOLOR:Z

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarColor()I

    move-result v0

    .line 114
    .local v0, "naviColor":I
    if-nez v0, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0164

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 116
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->setNavigationBarColor(I)V

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

    new-array v3, v6, [Landroid/net/Uri;

    const-string/jumbo v4, "navigationbar_color"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->registerCallback(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 119
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

    new-array v3, v6, [Landroid/net/Uri;

    const-string/jumbo v4, "navigationbar_use_theme_default"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->registerCallback(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 120
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

    new-array v3, v6, [Landroid/net/Uri;

    const-string/jumbo v4, "navigationbar_key_order"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->registerCallback(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 121
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarCurrentColor()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->updateModeBackgroundColor(II)V

    .line 106
    .end local v0    # "naviColor":I
    :cond_1
    return-void
.end method

.method private setMenuImeSidePadding()V
    .locals 10

    .prologue
    const-wide v8, 0x3f96bb98c0000000L    # 0.022199999541044235

    const/4 v6, 0x0

    .line 192
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 193
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v3

    mul-double/2addr v4, v8

    double-to-int v2, v4

    .line 194
    .local v2, "widthPadding":I
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v4, v3

    mul-double/2addr v4, v8

    double-to-int v0, v4

    .line 195
    .local v0, "heightPadding":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateCurrentView()V

    .line 198
    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 199
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6, v0, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6, v0, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 191
    :goto_0
    return-void

    .line 201
    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 202
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6, v6, v6, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 203
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6, v6, v6, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 205
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6, v6, v2, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 206
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6, v6, v2, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method private setRemoteViewContainerLayout()V
    .locals 10

    .prologue
    const-wide v8, 0x3f96bb98c0000000L    # 0.022199999541044235

    const/4 v6, 0x0

    .line 310
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 311
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 312
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v3

    mul-double/2addr v4, v8

    double-to-int v2, v4

    .line 313
    .local v2, "widthPadding":I
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v4, v3

    mul-double/2addr v4, v8

    double-to-int v0, v4

    .line 315
    .local v0, "heightPadding":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    const v4, 0x7f1302b6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    .line 316
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    const v4, 0x7f1302b7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    .line 318
    iget v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-nez v3, :cond_1

    .line 319
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 320
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6, v6, v2, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 309
    .end local v0    # "heightPadding":I
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    .end local v2    # "widthPadding":I
    :cond_0
    :goto_0
    return-void

    .line 321
    .restart local v0    # "heightPadding":I
    .restart local v1    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v2    # "widthPadding":I
    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 322
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6, v0, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 323
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6, v6, v6, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method private updateNavigationBarColor(Z)V
    .locals 4
    .param p1, "themeDefault"    # Z

    .prologue
    const/4 v3, 0x0

    .line 462
    if-eqz p1, :cond_0

    .line 463
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0165

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 467
    .local v0, "color":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->setNavigationBarCurrentColor(I)V

    .line 468
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->isDarkNavigation()Z

    move-result v1

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setIconsLight(ZZ)V

    .line 469
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v1, v3, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->updateModeBackgroundColor(II)V

    .line 460
    return-void

    .line 465
    .end local v0    # "color":I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarColor()I

    move-result v0

    .restart local v0    # "color":I
    goto :goto_0
.end method

.method private updateOpenThemeIcon(Landroid/content/Context;)Z
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 275
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    if-eqz v1, :cond_0

    .line 277
    const v1, 0x7f020758

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mDockedIcon:Landroid/graphics/drawable/Drawable;

    .line 278
    const v1, 0x7f020756

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 279
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    .line 280
    const v1, 0x7f020759

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    .line 281
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    .line 282
    const v1, 0x7f020755

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeDefaultIcon:Landroid/graphics/drawable/Drawable;

    .line 283
    const v1, 0x7f020754

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRecentIcon:Landroid/graphics/drawable/Drawable;

    .line 284
    const v1, 0x7f020757

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMenuIcon:Landroid/graphics/drawable/Drawable;

    .line 285
    const v1, 0x7f02075a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImeIcon:Landroid/graphics/drawable/Drawable;

    .line 286
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImageIcon:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    return v2

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v1, "SecNavigationBarView"

    const-string/jumbo v2, "updateOpenThemeIcon OpenThemeIconReousrce NotFoundException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImageIcon:Z

    .line 291
    return v3

    .line 294
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImageIcon:Z

    .line 296
    return v3
.end method

.method private updateRemoteView()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 329
    const-string/jumbo v4, "SecNavigationBarView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateRemoteView mCurrentRemoteView visibility : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setRemoteViewContainerLayout()V

    .line 331
    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-ne v4, v8, :cond_4

    .line 332
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNaviBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->getRightRemoteView()Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;

    move-result-object v0

    .line 333
    .local v0, "leftIcon":Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;
    :goto_0
    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-ne v4, v8, :cond_5

    .line 334
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNaviBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->getLeftRemoteView()Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;

    move-result-object v2

    .line 336
    .local v2, "rightIcon":Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;
    :goto_1
    if-eqz v0, :cond_6

    .line 337
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;->getView()Landroid/view/View;

    move-result-object v3

    .line 338
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 339
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 340
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 341
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 344
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 345
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 346
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 352
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    :goto_2
    if-eqz v2, :cond_7

    .line 353
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;->getView()Landroid/view/View;

    move-result-object v3

    .line 354
    .restart local v3    # "view":Landroid/view/View;
    if-eqz v3, :cond_3

    .line 355
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 356
    .restart local v1    # "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_2

    .line 357
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 360
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 361
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 362
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 328
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v3    # "view":Landroid/view/View;
    :cond_3
    :goto_3
    return-void

    .line 332
    .end local v0    # "leftIcon":Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;
    .end local v2    # "rightIcon":Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNaviBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->getLeftRemoteView()Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;

    move-result-object v0

    .restart local v0    # "leftIcon":Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;
    goto :goto_0

    .line 334
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNaviBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->getRightRemoteView()Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;

    move-result-object v2

    .restart local v2    # "rightIcon":Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;
    goto :goto_1

    .line 349
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 350
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 365
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 366
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3
.end method


# virtual methods
.method public getBarController()Lcom/android/systemui/statusbar/phone/NavigationBarController;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    return-object v0
.end method

.method public marqueeNavigationBar()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 373
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentView:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v8, :cond_2

    const/4 v0, 0x1

    .line 377
    .local v0, "isLandscape":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    invoke-virtual {v1, v7, v7, v7, v7}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPaddingRelative(IIII)V

    .line 378
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    invoke-virtual {v1, v7, v7, v7, v7}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPaddingRelative(IIII)V

    .line 379
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    invoke-virtual {v1, v7, v7, v7, v7}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPaddingRelative(IIII)V

    .line 381
    if-nez v0, :cond_1

    .line 382
    iget v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x11

    iput v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    .line 385
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    .line 386
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeList:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    aget-object v2, v2, v3

    aget v2, v2, v7

    .line 387
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeList:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    aget-object v3, v3, v4

    aget v3, v3, v9

    .line 388
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeList:[[I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    aget-object v4, v4, v5

    aget v4, v4, v8

    .line 389
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeList:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    aget-object v5, v5, v6

    aget v5, v5, v10

    .line 385
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPaddingRelative(IIII)V

    .line 391
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    .line 392
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeList:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    aget-object v2, v2, v3

    aget v2, v2, v7

    .line 393
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeList:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    aget-object v3, v3, v4

    aget v3, v3, v9

    .line 394
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeList:[[I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    aget-object v4, v4, v5

    aget v4, v4, v8

    .line 395
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeList:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    aget-object v5, v5, v6

    aget v5, v5, v10

    .line 391
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPaddingRelative(IIII)V

    .line 397
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    .line 398
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeList:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    aget-object v2, v2, v3

    aget v2, v2, v7

    .line 399
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeList:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    aget-object v3, v3, v4

    aget v3, v3, v9

    .line 400
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeList:[[I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    aget-object v4, v4, v5

    aget v4, v4, v8

    .line 401
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueeList:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    aget-object v5, v5, v6

    aget v5, v5, v10

    .line 397
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPaddingRelative(IIII)V

    .line 404
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->invalidate()V

    .line 372
    return-void

    .line 375
    .end local v0    # "isLandscape":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isLandscape":Z
    goto/16 :goto_0
.end method

.method public onFinishInflate()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 165
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onFinishInflate()V

    .line 166
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIBAR_REMOTEVIEW:Z

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNaviBarRemoteViewCallback:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteViewCallback;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->setRemoteViewCallback(Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteViewCallback;)V

    .line 169
    :cond_0
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIGATIONBAR:Z

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRandom:Ljava/util/Random;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMarqueePos:I

    .line 171
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->marqueeNavigationBar()V

    .line 174
    :cond_1
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIBAR_OPEN_THEME:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarUseThemeDefault()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 177
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationIconHints:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setNavigationIconHints(IZ)V

    .line 164
    :cond_2
    return-void

    .line 175
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOpenThemeChanged()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 410
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onOpenThemeChanged()V

    .line 411
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 413
    iget v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationIconHints:I

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setNavigationIconHints(IZ)V

    .line 415
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_CUSTOM_NAVIBAR_BGCOLOR:Z

    if-eqz v1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "current_sec_active_themepackage"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "currentTheme":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    .line 418
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    if-eqz v4, :cond_3

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->setNavigationBarUseThemeDefault(I)V

    .line 419
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateNavigationBarColor(Z)V

    .line 409
    .end local v0    # "currentTheme":Ljava/lang/String;
    :cond_1
    return-void

    .restart local v0    # "currentTheme":Ljava/lang/String;
    :cond_2
    move v1, v2

    .line 417
    goto :goto_0

    :cond_3
    move v2, v3

    .line 418
    goto :goto_1
.end method

.method public reorient()V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 215
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIBAR_REMOTEVIEW:Z

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f1302ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    .line 217
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateRemoteView()V

    .line 212
    :cond_0
    return-void
.end method

.method public setIconColor(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    const/4 v4, 0x0

    .line 448
    const-string/jumbo v1, "SecNavigationBarView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIconColor() called - color : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iput p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarIconcolor:I

    .line 450
    iget v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarIconcolor:I

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mDockedStackExists:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mDockedStackMinimized:Z

    if-eqz v1, :cond_1

    .line 454
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 455
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImageIcon:Z

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->applyIconTint(IZ)V

    .line 456
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->applyIconRipple(I)V

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 451
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->isDarkNavigation()Z

    move-result v1

    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setIconsLight(ZZ)V

    .line 452
    return-void

    .line 447
    .restart local v0    # "i":I
    :cond_2
    return-void
.end method

.method public setIconsLight(ZZ)V
    .locals 4
    .param p1, "isLight"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 427
    iget v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarIconcolor:I

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mDockedStackExists:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mDockedStackMinimized:Z

    if-eqz v2, :cond_3

    .line 428
    :cond_0
    const-string/jumbo v2, "SecNavigationBarView"

    const-string/jumbo v3, "setIconLight() mNavigationBarIconcolor is not 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mVertical:Z

    if-eqz v2, :cond_2

    .line 432
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarIconcolor:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setIconColor(I)V

    .line 433
    return-void

    .line 430
    :cond_2
    const/4 p1, 0x0

    .line 437
    .end local p1    # "isLight":Z
    :cond_3
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_LIGHT_NAVIGATIONBAR:Z

    if-eqz v2, :cond_4

    .line 438
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->getIconColor(Z)I

    move-result v1

    .line 439
    .local v1, "iconColor":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 440
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImageIcon:Z

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->applyIconTint(IZ)V

    .line 441
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->applyIconRipple(I)V

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    .end local v0    # "i":I
    .end local v1    # "iconColor":I
    :cond_4
    return-void
.end method

.method public setNavigationIconHints(I)V
    .locals 1
    .param p1, "hints"    # I

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setNavigationIconHints(IZ)V

    .line 129
    return-void
.end method

.method public setNavigationIconHints(IZ)V
    .locals 8
    .param p1, "hints"    # I
    .param p2, "force"    # Z

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    .line 144
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_LIGHT_NAVIGATIONBAR:Z

    if-eqz v3, :cond_0

    .line 145
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mChangeIconColorWhenIMEState:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 146
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mChangeIconColorWhenIMEState:Ljava/lang/Runnable;

    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    :cond_0
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIGATIONBAR:Z

    if-eqz v3, :cond_1

    .line 150
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    if-eqz v3, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setMenuImeSidePadding()V

    .line 155
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIBAR_REMOTEVIEW:Z

    if-eqz v3, :cond_4

    .line 156
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    const/4 v1, 0x1

    .line 157
    .local v1, "showMenuButton":Z
    :goto_0
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_6

    const/4 v0, 0x1

    .line 158
    .local v0, "showImeButton":Z
    :goto_1
    const-string/jumbo v3, "SecNavigationBarView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setNavigationIconHints showMenuButton : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", showImeButton : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const/4 v2, 0x4

    :cond_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 141
    .end local v0    # "showImeButton":Z
    .end local v1    # "showMenuButton":Z
    :cond_4
    return-void

    .line 156
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "showMenuButton":Z
    goto :goto_0

    .line 157
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "showImeButton":Z
    goto :goto_1
.end method

.method protected updateBackgroundWhenDockedStackExists()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 474
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mDockedStackExists:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mDockedStackMinimized:Z

    if-eqz v0, :cond_1

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setAlwaysOpaque(Z)V

    .line 479
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->getBarMode()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->transitionTo(IZ)V

    .line 480
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->isDarkNavigation()Z

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setIconsLight(ZZ)V

    .line 473
    return-void

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setAlwaysOpaque(Z)V

    goto :goto_0
.end method

.method protected updateCarMode(Landroid/content/res/Configuration;)Z
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 266
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCarMode(Landroid/content/res/Configuration;)Z

    move-result v0

    .line 267
    .local v0, "uiCarModeChanged":Z
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCarMode:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setCarMode(Z)V

    .line 268
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCarMode:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setCarMode(Z)V

    .line 269
    return v0
.end method

.method protected updateCurrentView()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCurrentView()V

    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateBackgroundWhenDockedStackExists()V

    .line 185
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIBAR_REMOTEVIEW:Z

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f1302ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    .line 182
    :cond_0
    return-void
.end method

.method protected updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 12
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "oldConfig"    # Landroid/content/res/Configuration;
    .param p3, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v10, 0x7f020215

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 223
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 224
    iget v2, p2, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p3, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v2, v3, :cond_0

    .line 225
    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 226
    :cond_0
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIBAR_OPEN_THEME:Z

    if-eqz v2, :cond_2

    .line 227
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateOpenThemeIcon(Landroid/content/Context;)Z

    move-result v9

    .line 229
    :goto_0
    const-string/jumbo v2, "SecNavigationBarView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateIcons mIsThemeDefault : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", useThemeIcon : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 230
    const-string/jumbo v4, ", isRTL : "

    .line 229
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 230
    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    .line 229
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    if-eqz v2, :cond_3

    if-eqz v9, :cond_3

    .line 259
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateCarModeIcons(Landroid/content/Context;)V

    .line 222
    :cond_1
    return-void

    .line 227
    :cond_2
    const/4 v9, 0x0

    .local v9, "useThemeIcon":Z
    goto :goto_0

    .line 233
    .end local v9    # "useThemeIcon":Z
    :cond_3
    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v6, :cond_5

    const/4 v7, 0x1

    .line 234
    .local v7, "isRtl":Z
    :goto_2
    if-eqz v7, :cond_7

    .line 235
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 236
    .local v5, "horizontalFlip":Landroid/graphics/Matrix;
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 237
    invoke-virtual {p1, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 238
    .local v8, "originalImage":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 240
    .local v0, "bitmapBackIcon":Landroid/graphics/Bitmap;
    instance-of v2, v8, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_6

    .line 241
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .end local v8    # "originalImage":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 245
    .end local v0    # "bitmapBackIcon":Landroid/graphics/Bitmap;
    :cond_4
    :goto_3
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 246
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 245
    invoke-direct {v10, v11, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v10, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 250
    .end local v5    # "horizontalFlip":Landroid/graphics/Matrix;
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    .line 251
    const v1, 0x7f020217

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mDockedIcon:Landroid/graphics/drawable/Drawable;

    .line 252
    const v1, 0x7f020216

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    .line 253
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    .line 254
    const v1, 0x7f020218

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeDefaultIcon:Landroid/graphics/drawable/Drawable;

    .line 255
    const v1, 0x7f02021d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRecentIcon:Landroid/graphics/drawable/Drawable;

    .line 256
    const v1, 0x7f02021c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMenuIcon:Landroid/graphics/drawable/Drawable;

    .line 257
    const v1, 0x7f020219

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImeIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 233
    .end local v7    # "isRtl":Z
    :cond_5
    const/4 v7, 0x0

    .restart local v7    # "isRtl":Z
    goto :goto_2

    .line 242
    .restart local v0    # "bitmapBackIcon":Landroid/graphics/Bitmap;
    .restart local v5    # "horizontalFlip":Landroid/graphics/Matrix;
    .restart local v8    # "originalImage":Landroid/graphics/drawable/Drawable;
    :cond_6
    instance-of v2, v8, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v2, :cond_4

    .line 243
    check-cast v8, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    .end local v8    # "originalImage":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmapBackIcon":Landroid/graphics/Bitmap;
    goto :goto_3

    .line 248
    .end local v0    # "bitmapBackIcon":Landroid/graphics/Bitmap;
    .end local v5    # "horizontalFlip":Landroid/graphics/Matrix;
    :cond_7
    invoke-virtual {p1, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_4
.end method
