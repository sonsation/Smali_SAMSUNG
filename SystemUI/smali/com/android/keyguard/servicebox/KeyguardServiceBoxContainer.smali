.class public Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;
.super Landroid/widget/FrameLayout;
.source "KeyguardServiceBoxContainer.java"

# interfaces
.implements Lcom/android/keyguard/servicebox/KeyguardStatusBase;
.implements Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$1;,
        Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$2;,
        Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;,
        Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;,
        Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$5;
    }
.end annotation


# static fields
.field private static final DENSITY_MAP:[[I

.field public static final EXPAND_ENABLED:Z

.field private static final SERVICEBOX_SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

.field private static final WHITE_WALLPAPER_SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

.field private static mIsDeskMode:Z

.field private static sIsSViewCovered:Z


# instance fields
.field private mCurrentLayoutDirection:I

.field private mDensityDpi:I

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHasCMAS:Z

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsExpanded:Z

.field private mIsMKeyboardConnected:Z

.field private mIsScreenTurnedOn:Z

.field private mIsShowingOwnerInfoByAnim:Z

.field mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

.field private mLeftArrowAnimator:Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;

.field private mLeftArrowView:Landroid/widget/ImageView;

.field private mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private mOwnerInfo:Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

.field private mPageAttachedStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mReadyToAnimation:Z

.field private mRemoteViewsItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;",
            ">;"
        }
    .end annotation
.end field

.field private mResetTimer:Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;

.field private mRightArrowAnimator:Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;

.field private mRightArrowView:Landroid/widget/ImageView;

.field private mServiceBoxDexMinHeight:I

.field private mServiceBoxExpandedHeight:I

.field private mServiceBoxItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceBoxMKCoverHeight:I

.field private mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

.field private mServiceBoxSCoverHeight:I

.field private mServiceBoxScailingView:Landroid/view/View;

.field private mServiceBoxSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

.field private mServiceBoxSmallHeight:I

.field private mServiceBoxViewPager:Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;

.field private mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

.field private mStatusCallback:Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

.field private mWhiteWallpaperSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

.field mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0()[Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->SERVICEBOX_SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1()[Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->WHITE_WALLPAPER_SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/util/SettingsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/KeyguardStatusCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDensityDpi:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsShowingOwnerInfoByAnim:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDensityDpi:I

    return p1
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    return p0
.end method

.method static synthetic -set2(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsShowingOwnerInfoByAnim:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->isKeyguardShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->isRTL()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->updateChildViewsLook()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->updateContainerLayout()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->updatePivotX()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V
    .locals 0
    .param p1, "item"    # Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->updateRemoteViewsPage(Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getCurrentPagePkgName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->handleScreenTurnedOff()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->handleScreenTurnedOn()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->initDimens()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->reissueAllPages()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->sendRequestRemoteViewsBroadcast()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "smoothScroll"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->setCurrentPage(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->showArrowAnimation()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 81
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    sput-boolean v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->EXPAND_ENABLED:Z

    .line 129
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/net/Uri;

    .line 130
    const-string/jumbo v1, "additional_information_val"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v4

    .line 131
    const-string/jumbo v1, "add_info_music_control"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v5

    .line 132
    const-string/jumbo v1, "add_info_today_schedule"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v6

    .line 133
    const-string/jumbo v1, "add_info_steps"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v7

    .line 134
    const-string/jumbo v1, "lockscreen_aod_servicebox_page"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v8

    .line 129
    sput-object v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->SERVICEBOX_SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    .line 139
    sput-boolean v4, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    .line 146
    new-array v0, v7, [[I

    .line 147
    const/16 v1, 0x118

    const/16 v2, 0x140

    const/16 v3, 0x168

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v4

    .line 148
    const/16 v1, 0x1a4

    const/16 v2, 0x1e0

    const/16 v3, 0x21c

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v5

    .line 149
    const/16 v1, 0x230

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v6

    .line 146
    sput-object v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->DENSITY_MAP:[[I

    .line 156
    sput-boolean v4, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    .line 177
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/net/Uri;

    .line 178
    const-string/jumbo v1, "white_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v4

    .line 179
    const-string/jumbo v1, "white_cover_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v5

    .line 180
    const-string/jumbo v1, "ultra_powersaving_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v6

    .line 181
    const-string/jumbo v1, "easy_mode_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v7

    .line 182
    const-string/jumbo v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v8

    .line 177
    sput-object v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->WHITE_WALLPAPER_SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 428
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 427
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 432
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 431
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 436
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDensityDpi:I

    .line 106
    iput-boolean v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsShowingOwnerInfoByAnim:Z

    .line 107
    iput-boolean v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mReadyToAnimation:Z

    .line 108
    iput-boolean v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemList:Ljava/util/ArrayList;

    .line 116
    sget-boolean v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->EXPAND_ENABLED:Z

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    .line 153
    iput-boolean v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    .line 159
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 163
    iput-boolean v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mHasCMAS:Z

    .line 190
    new-instance v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$1;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 217
    new-instance v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$2;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

    .line 225
    new-instance v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$3;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 299
    new-instance v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 413
    new-instance v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$5;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mPageAttachedStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 438
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mCurrentLayoutDirection:I

    .line 439
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    .line 440
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 441
    new-instance v0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;

    .line 442
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->initDimens()V

    .line 435
    return-void
.end method

.method private attachCalendarPage()V
    .locals 3

    .prologue
    .line 1039
    new-instance v0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;

    const-string/jumbo v1, "servicebox_calendar"

    sget v2, Lcom/android/keyguard/R$layout;->servicebox_today_page:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;Ljava/lang/String;I)V

    .line 1040
    .local v0, "item":Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1038
    return-void
.end method

.method private attachClockPage()V
    .locals 3

    .prologue
    .line 1029
    new-instance v0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;

    const-string/jumbo v1, "servicebox_clock"

    sget v2, Lcom/android/keyguard/R$layout;->keyguard_clock_page:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;Ljava/lang/String;I)V

    .line 1030
    .local v0, "item":Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1028
    return-void
.end method

.method private attachMusicPage()V
    .locals 3

    .prologue
    .line 1034
    new-instance v0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;

    const-string/jumbo v1, "servicebox_music"

    sget v2, Lcom/android/keyguard/R$layout;->servicebox_music_page:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;Ljava/lang/String;I)V

    .line 1035
    .local v0, "item":Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    return-void
.end method

.method private attachRemoteViewsPages()V
    .locals 6

    .prologue
    .line 1044
    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    .line 1045
    .local v0, "item":Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;
    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    .line 1046
    new-instance v3, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;

    iget-object v4, v0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    sget v5, Lcom/android/keyguard/R$layout;->servicebox_remoteviews_page:I

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;Ljava/lang/String;ILcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    .line 1045
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1043
    .end local v0    # "item":Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;
    :cond_0
    return-void
.end method

.method private getCoverContainerHeight()I
    .locals 3

    .prologue
    .line 832
    iget v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSCoverHeight:I

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getLargeOrSmallMark()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3d23d70a    # 0.04f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getCurrentPagePkgName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 922
    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v3}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    .line 923
    .local v0, "page":Ljava/lang/Object;
    instance-of v3, v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    if-nez v3, :cond_0

    .line 924
    const/4 v3, 0x0

    return-object v3

    :cond_0
    move-object v2, v0

    .line 927
    check-cast v2, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    .line 928
    .local v2, "serviceBoxPage":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    invoke-virtual {v2}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 930
    .local v1, "pkgName":Ljava/lang/String;
    const-string/jumbo v3, "clone_clock"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 931
    const-string/jumbo v1, "servicebox_clock"

    .line 934
    :cond_1
    return-object v1
.end method

.method private getLargeOrSmallMark()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 836
    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->densityDpi:I

    .line 839
    .local v0, "density":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v4, :cond_2

    .line 840
    sget-object v2, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->DENSITY_MAP:[[I

    aget-object v2, v2, v1

    aget v2, v2, v3

    if-ne v0, v2, :cond_0

    .line 841
    const/4 v2, -0x1

    return v2

    .line 842
    :cond_0
    sget-object v2, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->DENSITY_MAP:[[I

    aget-object v2, v2, v1

    aget v2, v2, v4

    if-ne v0, v2, :cond_1

    .line 843
    const/4 v2, 0x1

    return v2

    .line 839
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 847
    :cond_2
    return v3
.end method

.method private handleScreenTurnedOff()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 993
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mReadyToAnimation:Z

    .line 994
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mLeftArrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 995
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRightArrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 996
    iput-boolean v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    .line 997
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;

    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->setScreenTurnedOn(Z)V

    .line 998
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->setServiceBoxShowing(Z)V

    .line 1000
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper;->isAodEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1001
    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    const-string/jumbo v1, "Go to the clock page due to AOD is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->writeDefaultPageToSettings()V

    .line 992
    :cond_0
    return-void
.end method

.method private handleScreenTurnedOn()V
    .locals 2

    .prologue
    .line 987
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->showArrowAnimation()V

    .line 988
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    .line 989
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;

    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->setScreenTurnedOn(Z)V

    .line 986
    return-void
.end method

.method private hideArrowAnimation()V
    .locals 1

    .prologue
    .line 1018
    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mReadyToAnimation:Z

    if-eqz v0, :cond_0

    .line 1019
    return-void

    .line 1022
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mReadyToAnimation:Z

    .line 1024
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mLeftArrowAnimator:Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->hide()V

    .line 1025
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRightArrowAnimator:Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->hide()V

    .line 1017
    return-void
.end method

.method private initDimens()V
    .locals 3

    .prologue
    .line 779
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    .line 780
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 783
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 784
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/android/keyguard/R$dimen;->servicebox_page_small_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSmallHeight:I

    .line 785
    sget v1, Lcom/android/keyguard/R$dimen;->servicebox_page_expanded_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxExpandedHeight:I

    .line 786
    sget v1, Lcom/android/keyguard/R$dimen;->servicebox_page_scover_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSCoverHeight:I

    .line 787
    sget v1, Lcom/android/keyguard/R$dimen;->servicebox_page_mkcover_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxMKCoverHeight:I

    .line 788
    sget v1, Lcom/android/keyguard/R$dimen;->servicebox_page_dex_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxDexMinHeight:I

    .line 790
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v1, :cond_2

    .line 791
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mLeftArrowAnimator:Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;

    if-eqz v1, :cond_1

    .line 792
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mLeftArrowAnimator:Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->init(I)V

    .line 794
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRightArrowAnimator:Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;

    if-eqz v1, :cond_2

    .line 795
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRightArrowAnimator:Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->init(I)V

    .line 778
    :cond_2
    return-void
.end method

.method private isKeyguardShowing()Z
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    if-nez v0, :cond_0

    .line 909
    const/4 v0, 0x1

    return v0

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    invoke-interface {v0}, Lcom/android/keyguard/servicebox/KeyguardStatusCallback;->isKeyguardShowing()Z

    move-result v0

    return v0
.end method

.method private isRTL()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1103
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSViewCovered()Z
    .locals 1

    .prologue
    .line 1082
    sget-boolean v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    return v0
.end method

.method private reissueAllPages()V
    .locals 7

    .prologue
    .line 867
    const/4 v1, 0x0

    .line 868
    .local v1, "isEnabledMusicPage":Z
    const/4 v2, 0x0

    .line 870
    .local v2, "isEnabledTodaysPage":Z
    iget-object v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 871
    iget-object v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v4}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->clear()V

    .line 873
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->attachClockPage()V

    .line 874
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->writeDefaultPageToSettings()V

    .line 876
    sget-boolean v4, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v4, :cond_0

    .line 877
    const/4 v0, 0x0

    .line 878
    .local v0, "isEmergencyMode":Z
    const/4 v3, 0x0

    .line 880
    .local v3, "isUltraPowerSavingMode":Z
    iget-object v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/keyguard/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    .line 881
    .local v0, "isEmergencyMode":Z
    iget-object v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/keyguard/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v3

    .line 883
    .local v3, "isUltraPowerSavingMode":Z
    if-nez v0, :cond_0

    if-eqz v3, :cond_2

    .line 898
    .end local v0    # "isEmergencyMode":Z
    .end local v1    # "isEnabledMusicPage":Z
    .end local v2    # "isEnabledTodaysPage":Z
    .end local v3    # "isUltraPowerSavingMode":Z
    :cond_0
    :goto_0
    const-string/jumbo v4, "KeyguardServiceBoxContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reissueAllPages() SERVICEBOX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", m="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 899
    const-string/jumbo v6, ", t="

    .line 898
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v4}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->notifyDataSetChanged()V

    .line 902
    sget-boolean v4, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    if-eqz v4, :cond_1

    .line 903
    iget-boolean v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    invoke-direct {p0, v4}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->setMobileKeyboardState(Z)V

    .line 866
    :cond_1
    return-void

    .line 883
    .restart local v0    # "isEmergencyMode":Z
    .restart local v1    # "isEnabledMusicPage":Z
    .restart local v2    # "isEnabledTodaysPage":Z
    .restart local v3    # "isUltraPowerSavingMode":Z
    :cond_2
    sget-boolean v4, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    if-nez v4, :cond_0

    .line 884
    iget-object v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/keyguard/util/SettingsHelper;->isEnabledServiceBoxMusicPage()Z

    move-result v1

    .line 885
    .local v1, "isEnabledMusicPage":Z
    iget-object v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/keyguard/util/SettingsHelper;->isEnabledServiceBoxTodaysPage()Z

    move-result v2

    .line 887
    .local v2, "isEnabledTodaysPage":Z
    if-eqz v1, :cond_3

    .line 888
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->attachMusicPage()V

    .line 890
    :cond_3
    if-eqz v2, :cond_4

    .line 891
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->attachCalendarPage()V

    .line 894
    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->attachRemoteViewsPages()V

    goto :goto_0
.end method

.method private sendGsimLog(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "isExternal"    # Z

    .prologue
    .line 852
    const-string/jumbo v0, ""

    .line 854
    .local v0, "extra":Ljava/lang/String;
    const-string/jumbo v1, "servicebox_music"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 855
    if-eqz p2, :cond_1

    const-string/jumbo v0, "MA"

    .line 860
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.systemui"

    .line 861
    const-string/jumbo v3, "LWFP"

    .line 862
    const/4 v4, 0x0

    .line 860
    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 851
    return-void

    .line 855
    :cond_1
    const-string/jumbo v0, "ML"

    goto :goto_0

    .line 856
    :cond_2
    const-string/jumbo v1, "servicebox_calendar"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 857
    if-eqz p2, :cond_3

    const-string/jumbo v0, "TA"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "TL"

    goto :goto_0
.end method

.method private sendRequestRemoteViewsBroadcast()V
    .locals 2

    .prologue
    .line 1051
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.intent.action.REQUEST_SERVICEBOX_REMOTEVIEWS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1052
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1050
    return-void
.end method

.method private setCurrentPage(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "smoothScroll"    # Z

    .prologue
    .line 938
    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "idx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 939
    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;

    .line 940
    .local v1, "item":Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;
    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 941
    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v2, v0, p2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;->setCurrentItem(IZ)V

    .line 942
    return-void

    .line 938
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 937
    .end local v1    # "item":Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;
    :cond_1
    return-void
.end method

.method private setMobileKeyboardState(Z)V
    .locals 3
    .param p1, "isMKConnected"    # Z

    .prologue
    .line 1057
    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMobileKeyboardState() isConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->setMobileKeyboardState(Z)V

    .line 1063
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->setExpandState(Z)V

    .line 1064
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->updateContainerLayout()V

    .line 1056
    return-void

    .line 1063
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showArrowAnimation()V
    .locals 2

    .prologue
    .line 1007
    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mReadyToAnimation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 1008
    :cond_0
    return-void

    .line 1007
    :cond_1
    sget-boolean v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    if-nez v0, :cond_0

    .line 1011
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mReadyToAnimation:Z

    .line 1013
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mLeftArrowAnimator:Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->start()V

    .line 1014
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRightArrowAnimator:Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->start()V

    .line 1006
    return-void
.end method

.method private updateChildViewsLook()V
    .locals 1

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->updateChildViewsLook()V

    .line 1072
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->updateChildViewsLook()V

    .line 1069
    return-void
.end method

.method private updateContainerLayout()V
    .locals 6

    .prologue
    .line 801
    iget v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSmallHeight:I

    .line 802
    .local v0, "containerHeight":I
    const/high16 v2, 0x3f800000    # 1.0f

    .line 804
    .local v2, "scale":F
    sget-boolean v3, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    if-eqz v3, :cond_1

    .line 805
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getCoverContainerHeight()I

    move-result v0

    .line 806
    const v2, 0x3f333333    # 0.7f

    .line 818
    :cond_0
    :goto_0
    const-string/jumbo v3, "KeyguardServiceBoxContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateContainerLayout() h = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", s = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", c = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 819
    const-string/jumbo v5, ", mk = "

    .line 818
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 819
    iget-boolean v5, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    .line 818
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 819
    const-string/jumbo v5, ", d = "

    .line 818
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 819
    sget-boolean v5, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    .line 818
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 819
    const-string/jumbo v5, ", e = "

    .line 818
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 819
    iget-boolean v5, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    .line 818
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 822
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 823
    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 825
    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->setMinimumHeight(I)V

    .line 826
    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleX(F)V

    .line 827
    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleY(F)V

    .line 800
    return-void

    .line 807
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    sget-boolean v3, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    if-eqz v3, :cond_2

    .line 808
    iget v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxMKCoverHeight:I

    .line 809
    const/high16 v2, 0x3f400000    # 0.75f

    goto :goto_0

    .line 813
    :cond_2
    sget-boolean v3, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    if-eqz v3, :cond_0

    .line 814
    iget v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxExpandedHeight:I

    .line 815
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_0
.end method

.method private updatePivotX()V
    .locals 3

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1095
    return-void
.end method

.method private declared-synchronized updateRemoteViewsPage(Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V
    .locals 7
    .param p1, "item"    # Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    .prologue
    monitor-enter p0

    .line 948
    :try_start_0
    const-string/jumbo v3, "KeyguardServiceBoxContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRemoteViewsPage() item = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-boolean v3, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isShow:Z

    if-eqz v3, :cond_3

    .line 951
    const/4 v0, 0x0

    .line 952
    .local v0, "foundItem":Z
    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "idx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 953
    iget-object v4, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    iget-object v3, v3, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 954
    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    .line 955
    .local v2, "origin":Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;
    invoke-virtual {v2, p1}, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->copyFrom(Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    .line 956
    const/4 v0, 0x1

    .line 961
    .end local v2    # "origin":Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;
    :cond_0
    if-eqz v0, :cond_2

    .line 962
    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    iget-object v4, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->updateRemoteViews(Ljava/lang/String;)V

    .line 983
    .end local v0    # "foundItem":Z
    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v3}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 947
    return-void

    .line 952
    .restart local v0    # "foundItem":Z
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 964
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 965
    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    .line 966
    new-instance v4, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;

    iget-object v5, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    sget v6, Lcom/android/keyguard/R$layout;->servicebox_remoteviews_page:I

    invoke-direct {v4, p0, v5, v6, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;Ljava/lang/String;ILcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    .line 965
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0    # "foundItem":Z
    .end local v1    # "idx":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 969
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .restart local v1    # "idx":I
    :goto_2
    if-ltz v1, :cond_4

    .line 970
    iget-object v4, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    iget-object v3, v3, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 971
    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 975
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_3
    if-ltz v1, :cond_5

    .line 976
    iget-object v4, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;

    invoke-virtual {v3}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 977
    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 981
    :cond_5
    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    iget-object v4, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->removeCacheData(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 969
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 975
    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_3
.end method

.method private writeDefaultPageToSettings()V
    .locals 2

    .prologue
    .line 916
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    const-string/jumbo v1, "servicebox_clock"

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/SettingsHelper;->setServiceBoxSharePageName(Ljava/lang/String;)V

    .line 915
    :cond_0
    return-void
.end method


# virtual methods
.method public disableBlurFlag(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 764
    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disableBlurFlag pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->setDuration(Ljava/lang/String;J)V

    .line 766
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1, v4, v4}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->setFlag(Ljava/lang/String;ZZ)V

    .line 763
    return-void
.end method

.method public dismissServiceBox(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 757
    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dismissServiceBox pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->hideFloatingView(Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->setServiceBoxShowing(Z)V

    .line 756
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 577
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    .line 578
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->hideArrowAnimation()V

    .line 579
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->resetTimer()V

    .line 581
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getPageTopPos(Ljava/lang/String;)I
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 654
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->getCacheData(Ljava/lang/String;)Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    move-result-object v0

    .line 655
    .local v0, "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    if-nez v0, :cond_0

    .line 656
    const/4 v1, 0x0

    return v1

    .line 659
    :cond_0
    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getTopPosOfHolder()I

    move-result v1

    return v1
.end method

.method public getStatusCallback()Lcom/android/keyguard/servicebox/KeyguardStatusCallback;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    return-object v0
.end method

.method public isContainerExpanded()Z
    .locals 1

    .prologue
    .line 664
    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    return v0
.end method

.method public isPagedViewEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 771
    sget-boolean v2, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 518
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 519
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 521
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mWhiteWallpaperSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    sget-object v3, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->WHITE_WALLPAPER_SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/util/SettingsHelper;->registerCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 523
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    sget-object v3, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->SERVICEBOX_SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/util/SettingsHelper;->registerCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 526
    :cond_0
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v1, :cond_1

    .line 528
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v1, v0, :cond_3

    .line 527
    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KnoxStateMonitor;->registerCallback(Lcom/android/keyguard/KnoxStateMonitorCallback;)V

    .line 534
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_2

    .line 535
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 517
    :cond_2
    return-void

    .line 528
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 560
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 561
    iget v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mCurrentLayoutDirection:I

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 562
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->reissueAllPages()V

    .line 563
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mCurrentLayoutDirection:I

    .line 565
    :cond_0
    sget-boolean v2, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v2, :cond_1

    .line 566
    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    iget v2, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v2, v0, :cond_2

    move v2, v0

    :goto_0
    if-eq v3, v2, :cond_1

    .line 567
    iget v2, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v2, v0, :cond_3

    :goto_1
    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    .line 568
    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->setMobileKeyboardState(Z)V

    .line 559
    :cond_1
    return-void

    :cond_2
    move v2, v1

    .line 566
    goto :goto_0

    :cond_3
    move v0, v1

    .line 567
    goto :goto_1
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .prologue
    .line 1092
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->reissueAllPages()V

    .line 1091
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 541
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 542
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 544
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mWhiteWallpaperSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/SettingsHelper;->unregisterCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;)V

    .line 546
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/SettingsHelper;->unregisterCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;)V

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KnoxStateMonitor;->removeCallback(Lcom/android/keyguard/KnoxStateMonitorCallback;)V

    .line 553
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 540
    :cond_1
    return-void
.end method

.method public onDismissServiceBoxStarted(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 749
    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDismissServiceBoxStarted pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    const/4 v1, 0x0

    const-wide/16 v2, 0x190

    invoke-interface {v0, v1, v2, v3}, Lcom/android/keyguard/servicebox/KeyguardStatusCallback;->setFullScreenMode(ZJ)V

    .line 748
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 447
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 449
    new-instance v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v4, p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    .line 450
    sget v0, Lcom/android/keyguard/R$id;->keyguard_servicebox_viewpager:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;

    .line 451
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    .line 453
    sget v0, Lcom/android/keyguard/R$id;->keyguard_owner_info:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    .line 454
    sget v0, Lcom/android/keyguard/R$id;->keyguard_servicebox_scailing_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingView:Landroid/view/View;

    .line 456
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mWindowManager:Landroid/view/WindowManager;

    .line 458
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->updatePivotX()V

    .line 460
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    .line 461
    sget v0, Lcom/android/keyguard/R$id;->keyguard_servicebox_affordance_arrow_l:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mLeftArrowView:Landroid/widget/ImageView;

    .line 462
    sget v0, Lcom/android/keyguard/R$id;->keyguard_servicebox_affordance_arrow_r:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRightArrowView:Landroid/widget/ImageView;

    .line 463
    new-instance v0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mLeftArrowView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {v0, v3, v4, v1, v5}, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;-><init>(Landroid/content/res/Resources;Landroid/view/View;ZI)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mLeftArrowAnimator:Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;

    .line 464
    new-instance v0, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRightArrowView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;-><init>(Landroid/content/res/Resources;Landroid/view/View;ZI)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mRightArrowAnimator:Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;

    .line 466
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->showArrowAnimation()V

    .line 468
    new-instance v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$6;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$6;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    .line 484
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    .line 489
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->setVisibility(I)V

    .line 490
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->reissueAllPages()V

    .line 493
    new-instance v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$7;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$7;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mWhiteWallpaperSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    .line 508
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v0, v1, :cond_2

    move v0, v1

    .line 509
    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    .line 511
    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->setMobileKeyboardState(Z)V

    .line 513
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->updateContainerLayout()V

    .line 446
    return-void

    :cond_2
    move v0, v2

    .line 510
    goto :goto_0
.end method

.method public refreshTime()V
    .locals 2

    .prologue
    .line 586
    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    const-string/jumbo v1, "refreshTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->refreshViews()V

    .line 585
    return-void
.end method

.method public setCoverState(Z)V
    .locals 4
    .param p1, "isSViewCovered"    # Z

    .prologue
    const/4 v0, 0x0

    .line 593
    const-string/jumbo v1, "KeyguardServiceBoxContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCoverState() isSViewCovered = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", sIsSViewCovered = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    sget-boolean v1, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    if-eq v1, p1, :cond_2

    .line 595
    sput-boolean p1, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    .line 596
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->setCoverState(Z)V

    .line 597
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->updateOwnerInfo()V

    .line 598
    :cond_0
    sget-boolean v1, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->setExpandState(Z)V

    .line 600
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->updateContainerLayout()V

    .line 592
    :cond_2
    return-void
.end method

.method public setExpandState(Z)V
    .locals 4
    .param p1, "isExpand"    # Z

    .prologue
    const/4 v0, 0x0

    .line 620
    const-string/jumbo v1, "KeyguardServiceBoxContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setExpandState() isExpand = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mIsExpanded = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mIsScreenTurnedOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    sget-boolean v1, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->EXPAND_ENABLED:Z

    if-nez v1, :cond_0

    .line 622
    return-void

    .line 625
    :cond_0
    sget-boolean v1, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    if-eqz v1, :cond_2

    .line 626
    :cond_1
    const/4 p1, 0x0

    .line 629
    .end local p1    # "isExpand":Z
    :cond_2
    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    if-eq v1, p1, :cond_3

    .line 630
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v1, :cond_4

    :goto_0
    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    .line 631
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->updateContainerLayout()V

    .line 633
    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 634
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->makeTransitionData()V

    .line 635
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 619
    :cond_3
    :goto_1
    return-void

    :cond_4
    move p1, v0

    .line 630
    goto :goto_0

    .line 646
    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    if-eqz v2, :cond_6

    const/4 v0, 0x1

    :cond_6
    invoke-virtual {v1, v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->setPageType(I)V

    goto :goto_1
.end method

.method public setStatusCallback(Lcom/android/keyguard/servicebox/KeyguardStatusCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    .prologue
    .line 744
    iput-object p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    .line 743
    return-void
.end method

.method public showServiceBox(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 674
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->showServiceBox(Ljava/lang/String;Z)V

    .line 673
    return-void
.end method

.method public showServiceBox(Ljava/lang/String;Z)V
    .locals 17
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "isExternal"    # Z

    .prologue
    .line 679
    const-string/jumbo v3, "KeyguardServiceBoxContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showServiceBox pkgName = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", isExternal = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 681
    return-void

    .line 684
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->sendGsimLog(Ljava/lang/String;Z)V

    .line 686
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->getCacheData(Ljava/lang/String;)Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    move-result-object v2

    .line 687
    .local v2, "cachePage":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->showExternalActivity()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 688
    const-string/jumbo v3, "KeyguardServiceBoxContainer"

    const-string/jumbo v4, "external activity is launched"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    if-eqz p2, :cond_1

    .line 690
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/PowerManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PowerManager;

    .line 691
    .local v15, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-string/jumbo v3, "com.android.systemui:SERVICE_BOX"

    invoke-virtual {v15, v6, v7, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 693
    .end local v15    # "pm":Landroid/os/PowerManager;
    :cond_1
    return-void

    .line 696
    :cond_2
    const/16 v16, 0x0

    .line 698
    .local v16, "selectedItem":Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v12, v3, -0x1

    .local v12, "idx":I
    :goto_0
    if-ltz v12, :cond_3

    .line 699
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;

    .line 700
    .local v14, "item":Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;
    invoke-virtual {v14}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 701
    const-string/jumbo v3, "KeyguardServiceBoxContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showServiceBox item pkgName = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    move-object/from16 v16, v14

    .line 707
    .end local v14    # "item":Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;
    .end local v16    # "selectedItem":Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;
    :cond_3
    if-eqz v16, :cond_7

    .line 708
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    if-eqz v3, :cond_4

    .line 709
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    const/4 v4, 0x1

    const-wide/16 v6, 0x64

    invoke-interface {v3, v4, v6, v7}, Lcom/android/keyguard/servicebox/KeyguardStatusCallback;->setFullScreenMode(ZJ)V

    .line 712
    :cond_4
    const-string/jumbo v3, "KeyguardServiceBoxContainer"

    const-string/jumbo v4, "showServiceBox!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    if-eqz p2, :cond_9

    const/4 v13, 0x2

    .line 716
    .local v13, "initPageType":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v13}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPageView(Landroid/content/Context;ZI)Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    move-result-object v5

    .line 717
    .local v5, "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    if-nez p2, :cond_5

    .line 718
    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v5, v3, v4}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->setPageType(IZ)V

    .line 721
    :cond_5
    if-eqz p2, :cond_6

    .line 722
    invoke-virtual {v5}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$9;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 733
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mPageAttachedStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v5, v3}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 734
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 737
    sget-boolean v6, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    if-eqz v6, :cond_b

    const/4 v9, 0x0

    :goto_2
    if-eqz p2, :cond_c

    const/4 v6, 0x1

    :goto_3
    int-to-long v10, v6

    .line 735
    const/4 v6, 0x1

    .line 736
    const/4 v7, 0x1

    .line 737
    const/4 v8, 0x1

    .line 734
    invoke-virtual/range {v3 .. v11}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxWindowManager;->showFloatingView(Ljava/lang/String;Landroid/view/View;ZZZZJ)V

    .line 738
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->setServiceBoxShowing(Z)V

    .line 678
    .end local v5    # "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    .end local v13    # "initPageType":I
    :cond_7
    return-void

    .line 698
    .restart local v14    # "item":Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;
    .restart local v16    # "selectedItem":Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;
    :cond_8
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_0

    .line 714
    .end local v14    # "item":Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;
    .end local v16    # "selectedItem":Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    if-eqz v3, :cond_a

    const/4 v13, 0x1

    .restart local v13    # "initPageType":I
    goto :goto_1

    .end local v13    # "initPageType":I
    :cond_a
    const/4 v13, 0x0

    .restart local v13    # "initPageType":I
    goto :goto_1

    .line 737
    .restart local v5    # "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    :cond_b
    const/4 v9, 0x1

    goto :goto_2

    :cond_c
    const/4 v6, -0x1

    goto :goto_3
.end method

.method public updateCMAS(Z)V
    .locals 3
    .param p1, "hasCmasNotification"    # Z

    .prologue
    .line 608
    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCMAS() hasCmasNotification = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mHasCMAS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mHasCMAS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mHasCMAS:Z

    if-eq v0, p1, :cond_0

    .line 610
    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mHasCMAS:Z

    .line 611
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->updateCMAS(Z)V

    .line 612
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->updateOwnerInfo(Z)V

    .line 607
    :cond_0
    return-void
.end method
