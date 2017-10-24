.class public Lcom/sec/android/cover/clearcover/ClearCoverView;
.super Lcom/sec/android/cover/CoverMainFrameView;
.source "ClearCoverView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/clearcover/ClearCoverView$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private WALLPAPER_COLOR_BLACK:I

.field private WALLPAPER_COLOR_BLUE:I

.field private WALLPAPER_COLOR_GOLD:I

.field private WALLPAPER_COLOR_GREEN:I

.field private WALLPAPER_COLOR_REAL_BLACK:I

.field private WALLPAPER_COLOR_SILVER:I

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mBasePaddingBottom:I

.field private mBasePaddingLeft:I

.field private mBasePaddingRight:I

.field private mBasePaddingTop:I

.field private mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

.field private mDirection:I

.field private mHorizontalShift:I

.field private mLockImage:Landroid/widget/ImageView;

.field private mLockText:Landroid/widget/TextView;

.field private mLockView:Landroid/view/ViewGroup;

.field private mMaxShift:I

.field private mPageContainer:Landroid/view/ViewGroup;

.field private mRootView:Landroid/view/ViewGroup;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private mVerticalShift:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/cover/clearcover/ClearCoverView;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sec/android/cover/clearcover/ClearCoverView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3()I
    .locals 1

    sget v0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mDelayedShowingSequence:I

    return v0
.end method

.method static synthetic -get4(Lcom/sec/android/cover/clearcover/ClearCoverView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mLockText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/clearcover/ClearCoverView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->cancelScreenOffTimer()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sec/android/cover/clearcover/ClearCoverView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->startScreenOffTimer()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/sec/android/cover/clearcover/ClearCoverView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/CoverMainFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mActivityManager:Landroid/app/ActivityManager;

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mDirection:I

    .line 74
    iput v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    .line 75
    iput v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mVerticalShift:I

    .line 77
    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverView$1;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverView;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 126
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    .line 127
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mActivityManager:Landroid/app/ActivityManager;

    .line 128
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$dimen;->clear_cover_marquee_max:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mMaxShift:I

    .line 129
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->initializeColors()V

    .line 124
    return-void
.end method

.method private hideCoverUI()V
    .locals 5

    .prologue
    .line 303
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "hideCoverUI"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 305
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    .line 306
    const-string/jumbo v3, "phone"

    .line 305
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 307
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 308
    .local v0, "callState":I
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "handleMessage : Screen is off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Call state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    if-nez v0, :cond_0

    .line 311
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUpWithReason()V

    .line 318
    .end local v0    # "callState":I
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    .line 302
    return-void

    .line 314
    :cond_1
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "handleMessage : Screen is on"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    goto :goto_0
.end method

.method private initializeColors()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_color_silver:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->WALLPAPER_COLOR_SILVER:I

    .line 249
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_color_black:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->WALLPAPER_COLOR_BLACK:I

    .line 250
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_color_blue:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->WALLPAPER_COLOR_BLUE:I

    .line 251
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_color_green:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->WALLPAPER_COLOR_GREEN:I

    .line 252
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_color_gold:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->WALLPAPER_COLOR_GOLD:I

    .line 253
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_hero_color_black:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->WALLPAPER_COLOR_REAL_BLACK:I

    .line 247
    return-void
.end method

.method private marqueeCoverView()V
    .locals 7

    .prologue
    .line 167
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    if-nez v2, :cond_0

    .line 168
    return-void

    .line 171
    :cond_0
    iget v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    iget v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mDirection:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    .line 172
    iget v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    iget v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mMaxShift:I

    if-le v2, v3, :cond_2

    .line 173
    iget v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mMaxShift:I

    iput v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    .line 174
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mDirection:I

    .line 180
    :cond_1
    :goto_0
    iget v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mVerticalShift:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mVerticalShift:I

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "leftPadding":I
    const/4 v1, 0x0

    .line 185
    .local v1, "rightPadding":I
    iget v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    if-lez v2, :cond_3

    .line 186
    iget v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    .line 191
    :goto_1
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    .line 192
    iget v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mBasePaddingLeft:I

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    .line 193
    iget v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mBasePaddingTop:I

    iget v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mVerticalShift:I

    add-int/2addr v4, v5

    .line 194
    iget v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mBasePaddingRight:I

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    .line 195
    iget v6, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mBasePaddingBottom:I

    .line 191
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->setPadding(IIII)V

    .line 197
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->invalidate()V

    .line 199
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "marqueeCoverView() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mVerticalShift:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void

    .line 175
    .end local v0    # "leftPadding":I
    .end local v1    # "rightPadding":I
    :cond_2
    iget v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    iget v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mMaxShift:I

    neg-int v3, v3

    if-ge v2, v3, :cond_1

    .line 176
    iget v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mMaxShift:I

    neg-int v2, v2

    iput v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    .line 177
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mDirection:I

    goto :goto_0

    .line 188
    .restart local v0    # "leftPadding":I
    .restart local v1    # "rightPadding":I
    :cond_3
    iget v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    neg-int v1, v2

    goto :goto_1
.end method

.method private setBackgroundColor()V
    .locals 5

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->isCoverOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setBackgroundColor() return : cover open"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void

    .line 262
    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mRootView:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 263
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setBackgroundColor() return : mBackgroundView is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void

    .line 267
    :cond_1
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v1

    .line 268
    .local v1, "currentCoverColor":I
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string/jumbo v3, "s_view_cover_skin_color"

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putInt(Ljava/lang/String;I)V

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "backgroundColor":I
    sget-boolean v2, Lcom/sec/android/cover/CoverRune;->FEATURE_SUPPORT_COLORED_CLEARCOVER_BG:Z

    if-eqz v2, :cond_2

    .line 272
    packed-switch v1, :pswitch_data_0

    .line 289
    :pswitch_0
    iget v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->WALLPAPER_COLOR_SILVER:I

    .line 296
    :goto_0
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBackgroundColor() currentCoverColor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", backgroundColor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 256
    return-void

    .line 274
    :pswitch_1
    iget v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->WALLPAPER_COLOR_SILVER:I

    goto :goto_0

    .line 277
    :pswitch_2
    iget v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->WALLPAPER_COLOR_BLACK:I

    goto :goto_0

    .line 280
    :pswitch_3
    iget v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->WALLPAPER_COLOR_BLUE:I

    goto :goto_0

    .line 283
    :pswitch_4
    iget v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->WALLPAPER_COLOR_GREEN:I

    goto :goto_0

    .line 286
    :pswitch_5
    iget v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->WALLPAPER_COLOR_GOLD:I

    goto :goto_0

    .line 293
    :cond_2
    iget v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->WALLPAPER_COLOR_REAL_BLACK:I

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private showCoverUI()V
    .locals 2

    .prologue
    .line 322
    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showCoverUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->isCoverOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showCoverUi : Cover is opend -> Ignore showCoverUi()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    .line 327
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUp()V

    .line 332
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->startScreenOffTimer()V

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    .line 321
    return-void
.end method


# virtual methods
.method protected changeChargingTextColorIfWhiteWallpaper(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "batteryCharingTextView"    # Landroid/widget/TextView;

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_font_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 379
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 204
    invoke-super {p0}, Lcom/sec/android/cover/CoverMainFrameView;->onAttachedToWindow()V

    .line 205
    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 203
    return-void
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 220
    invoke-super {p0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    .line 222
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->isCoverOpen()Z

    move-result v0

    .line 224
    .local v0, "isCoverOpen":Z
    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCoverEvent :  isCoverOpen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " coverType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 226
    const-string/jumbo v3, " coverColor:"

    .line 225
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 226
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v3

    .line 225
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 224
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    .line 230
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-virtual {v1, p1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    .line 234
    :cond_0
    if-eqz v0, :cond_1

    .line 235
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->hideCoverUI()V

    .line 236
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->cancelScreenOffTimer()V

    .line 219
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->setBackgroundColor()V

    .line 239
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->marqueeCoverView()V

    .line 240
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->showCoverUI()V

    .line 241
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->updateContentRootViewVisibility()V

    .line 242
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->startScreenOffTimer()V

    .line 243
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/input/InputManager;->coverEventFinished()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 212
    invoke-super {p0}, Lcom/sec/android/cover/CoverMainFrameView;->onDetachedFromWindow()V

    .line 213
    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 211
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 134
    invoke-super {p0}, Lcom/sec/android/cover/CoverMainFrameView;->onFinishInflate()V

    .line 135
    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onFinishInflate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverView;->setVisibility(I)V

    .line 138
    sget v1, Lcom/sec/android/sviewcover/R$id;->clear_cover_root:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mRootView:Landroid/view/ViewGroup;

    .line 139
    sget v1, Lcom/sec/android/sviewcover/R$id;->locked_root:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mLockView:Landroid/view/ViewGroup;

    .line 140
    sget v1, Lcom/sec/android/sviewcover/R$id;->locked_text:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mLockText:Landroid/widget/TextView;

    .line 141
    sget v1, Lcom/sec/android/sviewcover/R$id;->locked_image:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mLockImage:Landroid/widget/ImageView;

    .line 142
    sget v1, Lcom/sec/android/sviewcover/R$id;->clear_cover_page_container:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mPageContainer:Landroid/view/ViewGroup;

    .line 143
    sget-boolean v1, Lcom/sec/android/cover/CoverRune;->FEATURE_SUPPORT_SERVICE_BOX:Z

    if-eqz v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$layout;->clear_cover_service_box_page:I

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mPageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 149
    :goto_0
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/sec/android/sviewcover/R$id;->clear_cover_page:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/clearcover/ClearCoverPage;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    .line 151
    sget v1, Lcom/sec/android/sviewcover/R$id;->clear_cover_battery_charging:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 152
    .local v0, "batteryText":Landroid/widget/TextView;
    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->setBatteryTextView(Landroid/widget/TextView;)V

    .line 154
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->setBackgroundColor()V

    .line 156
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getPaddingLeft()I

    move-result v1

    iput v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mBasePaddingLeft:I

    .line 158
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mBasePaddingTop:I

    .line 159
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getPaddingRight()I

    move-result v1

    iput v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mBasePaddingRight:I

    .line 160
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getPaddingBottom()I

    move-result v1

    iput v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mBasePaddingBottom:I

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->updateContentRootViewVisibility()V

    .line 133
    return-void

    .line 146
    .end local v0    # "batteryText":Landroid/widget/TextView;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$layout;->clear_cover_flat_page:I

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mPageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method

.method public updateContentRootViewVisibility()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 343
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v0

    .line 344
    .local v0, "lockMode":I
    if-eqz v0, :cond_3

    .line 345
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mLockText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mLockImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 346
    packed-switch v0, :pswitch_data_0

    .line 359
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mLockView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mLockView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 360
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    if-eqz v1, :cond_1

    .line 361
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-virtual {v1, v4}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->setVisibility(I)V

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mLockView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 364
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->requestLayout()V

    .line 342
    :cond_2
    :goto_1
    return-void

    .line 348
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mLockText:Landroid/widget/TextView;

    sget v2, Lcom/sec/android/sviewcover/R$string;->pinwindowcover_warning_content:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 349
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mLockImage:Landroid/widget/ImageView;

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->clear_ic_pin:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 352
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mLockText:Landroid/widget/TextView;

    sget v2, Lcom/sec/android/sviewcover/R$string;->opencover_warning_content:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 353
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mLockImage:Landroid/widget/ImageView;

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->clear_ic_cover:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 367
    :cond_3
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 368
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-virtual {v1, v3}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->setVisibility(I)V

    .line 370
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mLockView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 371
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mLockView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 374
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->requestLayout()V

    goto :goto_1

    .line 346
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
