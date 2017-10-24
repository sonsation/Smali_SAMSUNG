.class public Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;
.super Lcom/sec/android/cover/clearcover/ClearCoverPage;
.source "ClearCoverServiceBoxPage.java"

# interfaces
.implements Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;,
        Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$2;,
        Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$3;
    }
.end annotation


# static fields
.field private static final SERVICEBOX_SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mArrowLeft:Landroid/widget/ImageView;

.field private mArrowRight:Landroid/widget/ImageView;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHandler:Landroid/os/Handler;

.field private mLeftArrowAnimator:Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

.field private mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private mOwnerInfoText:Landroid/widget/TextView;

.field private mReadyToAnimation:Z

.field private mRightArrowAnimator:Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

.field private mServiceBoxPageAdapter:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

.field private mServiceBoxPageItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0()[Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->SERVICEBOX_SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageAdapter:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mReadyToAnimation:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->getCurrentPageKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->handleNotificationVisibility(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->initializePages()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->playArrowAnimation()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "pageKey"    # Ljava/lang/String;
    .param p2, "smoothScroll"    # Z
    .param p3, "force"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->setCurrentPage(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const-class v0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    .line 80
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/net/Uri;

    .line 81
    const-string/jumbo v1, "additional_information_val"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "add_info_music_control"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 82
    const-string/jumbo v1, "add_info_today_schedule"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "add_info_steps"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 83
    const-string/jumbo v1, "lockscreen_aod_servicebox_page"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 80
    sput-object v0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->SERVICEBOX_SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 203
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 208
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/clearcover/ClearCoverPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageItems:Ljava/util/ArrayList;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mReadyToAnimation:Z

    .line 85
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 88
    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 141
    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$2;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mHandler:Landroid/os/Handler;

    .line 161
    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$3;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$3;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 209
    new-instance v0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageItems:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageAdapter:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    .line 210
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mWindowManager:Landroid/view/WindowManager;

    .line 211
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 207
    return-void
.end method

.method private getCurrentPageKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 360
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    invoke-virtual {v3}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    .line 361
    .local v0, "page":Ljava/lang/Object;
    instance-of v3, v0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;

    if-nez v3, :cond_0

    .line 362
    const/4 v3, 0x0

    return-object v3

    :cond_0
    move-object v2, v0

    .line 365
    check-cast v2, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;

    .line 366
    .local v2, "serviceBoxPage":Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;
    invoke-virtual {v2}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->getPageKey()Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "pageName":Ljava/lang/String;
    const-string/jumbo v3, "clone"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 370
    const-string/jumbo v1, "servicebox_clock"

    .line 373
    :cond_1
    return-object v1
.end method

.method private handleNotificationVisibility(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x0

    .line 418
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->setVisibility(I)V

    .line 419
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 420
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 421
    if-eqz p1, :cond_1

    sget v1, Lcom/sec/android/sviewcover/R$dimen;->clear_cover_servicebox_container_with_noti_height:I

    .line 420
    :goto_1
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 423
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageAdapter:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->setExpanded(Z)V

    .line 425
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->invalidate()V

    .line 417
    return-void

    .line 418
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    .line 422
    .restart local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    sget v1, Lcom/sec/android/sviewcover/R$dimen;->clear_cover_servicebox_container_no_noti_height:I

    goto :goto_1

    .line 424
    :cond_2
    const/4 v2, 0x1

    goto :goto_2
.end method

.method private hideArrow()V
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mReadyToAnimation:Z

    if-eqz v0, :cond_0

    .line 349
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mLeftArrowAnimator:Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->hide()V

    .line 353
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mRightArrowAnimator:Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->hide()V

    .line 347
    return-void
.end method

.method private initializePages()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 302
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 303
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageAdapter:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    invoke-virtual {v5}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->clear()V

    .line 305
    const/4 v3, 0x1

    .line 306
    .local v3, "isExpanded":Z
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-virtual {v5}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->getDisplayedNotificationCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 307
    const/4 v3, 0x0

    .line 311
    :cond_0
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageItems:Ljava/util/ArrayList;

    new-instance v6, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;

    sget v7, Lcom/sec/android/sviewcover/R$layout;->clear_cover_servicebox_clocks_page:I

    .line 312
    const-string/jumbo v8, "servicebox_clock"

    .line 311
    invoke-direct {v6, v7, v8, v3}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    .line 317
    .local v0, "isEmergencyMode":Z
    if-nez v0, :cond_2

    .line 318
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "add_info_music_control"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_3

    move v2, v1

    .line 319
    .local v2, "isEnabledMusicPage":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 320
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageItems:Ljava/util/ArrayList;

    new-instance v6, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;

    sget v7, Lcom/sec/android/sviewcover/R$layout;->clear_cover_servicebox_music_page:I

    .line 321
    const-string/jumbo v8, "servicebox_music"

    .line 320
    invoke-direct {v6, v7, v8, v3}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_1
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 324
    const-string/jumbo v6, "add_info_today_schedule"

    .line 323
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_4

    .line 325
    .local v1, "isEnabledCalendarPage":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 327
    iget-object v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageItems:Ljava/util/ArrayList;

    new-instance v5, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;

    sget v6, Lcom/sec/android/sviewcover/R$layout;->clear_cover_temp_page_2:I

    const-string/jumbo v7, "servicebox_calendar"

    invoke-direct {v5, v6, v7, v3}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    .end local v1    # "isEnabledCalendarPage":Z
    .end local v2    # "isEnabledMusicPage":Z
    :cond_2
    sget-object v4, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initializePages(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageAdapter:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    invoke-virtual {v4}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->notifyDataSetChanged()V

    .line 301
    return-void

    :cond_3
    move v2, v4

    .line 318
    goto :goto_0

    .restart local v2    # "isEnabledMusicPage":Z
    :cond_4
    move v1, v4

    .line 323
    goto :goto_1
.end method

.method private playArrowAnimation()V
    .locals 2

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mReadyToAnimation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageAdapter:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 338
    :cond_0
    return-void

    .line 341
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mReadyToAnimation:Z

    .line 343
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mLeftArrowAnimator:Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->start()V

    .line 344
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mRightArrowAnimator:Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->start()V

    .line 336
    return-void
.end method

.method private setCurrentPage(Ljava/lang/String;ZZ)V
    .locals 5
    .param p1, "pageKey"    # Ljava/lang/String;
    .param p2, "smoothScroll"    # Z
    .param p3, "force"    # Z

    .prologue
    .line 386
    if-nez p1, :cond_0

    .line 388
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lockscreen_aod_servicebox_page"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 391
    :cond_0
    if-nez p1, :cond_1

    .line 392
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setCurrentPage: settings page is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    return-void

    .line 396
    :cond_1
    if-nez p3, :cond_2

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->getCurrentPageKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 397
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setCurrentPage: pageAlreadySet"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    return-void

    .line 401
    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "id":I
    :goto_0
    if-ltz v0, :cond_5

    .line 402
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;

    .line 403
    .local v1, "item":Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;
    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 404
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCurrentPage: key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    if-eqz p3, :cond_3

    .line 406
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    invoke-virtual {v2, v0, p2}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->setItemByForce(IZ)Z

    .line 410
    :goto_1
    return-void

    .line 408
    :cond_3
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    invoke-virtual {v2, v0, p2}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->setCurrentItem(IZ)V

    goto :goto_1

    .line 401
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 414
    .end local v1    # "item":Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;
    :cond_5
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCurrentPage: no item for key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return-void
.end method

.method private updateOwnerInfoText()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 429
    const/4 v0, 0x0

    .line 430
    .local v0, "ownerInfo":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 433
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    .line 442
    .end local v0    # "ownerInfo":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 443
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOwnerInfoText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 444
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOwnerInfoText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOwnerInfoText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->isCoverOpen()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 428
    :goto_2
    return-void

    .line 436
    .restart local v0    # "ownerInfo":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v1

    .line 437
    .local v1, "user":I
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 438
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "ownerInfo":Ljava/lang/String;
    goto :goto_0

    .line 445
    .end local v0    # "ownerInfo":Ljava/lang/String;
    .end local v1    # "user":I
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 447
    :cond_3
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOwnerInfoText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 448
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOwnerInfoText:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->hideArrow()V

    .line 271
    invoke-super {p0, p1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 249
    invoke-super {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->onAttachedToWindow()V

    .line 252
    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->SERVICEBOX_SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 253
    .local v0, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5, v0, v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerContentObserver(Landroid/net/Uri;Z)V

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 248
    return-void
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 276
    invoke-super {p0, p1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    .line 278
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    .line 280
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->isCoverOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->onCoverOpen()V

    .line 284
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->hideArrow()V

    .line 285
    iput-boolean v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mReadyToAnimation:Z

    .line 275
    :goto_0
    return-void

    .line 287
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->updateOwnerInfoText()V

    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->setCurrentPage(Ljava/lang/String;ZZ)V

    .line 289
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->playArrowAnimation()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 261
    invoke-super {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->onDetachedFromWindow()V

    .line 262
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 263
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-virtual {v0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->setDisplayedNotificationCounChangeListener(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;)V

    .line 260
    :cond_0
    return-void
.end method

.method public onDisplayedNotificationCount(II)V
    .locals 3
    .param p1, "oldValue"    # I
    .param p2, "newValue"    # I

    .prologue
    .line 295
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 296
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 297
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 298
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 294
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 216
    invoke-super {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->onFinishInflate()V

    .line 218
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 222
    :cond_0
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_servicebox_pager:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    .line 223
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageAdapter:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    invoke-virtual {v0, v3}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    .line 224
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v3}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    .line 226
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_notification_container:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    .line 227
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->setDisplayedNotificationCounChangeListener(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;)V

    .line 229
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->getDisplayedNotificationCount()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->handleNotificationVisibility(Z)V

    .line 232
    :cond_1
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_servicebox_affordance_arrow_l:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mArrowLeft:Landroid/widget/ImageView;

    .line 233
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_servicebox_affordance_arrow_r:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mArrowRight:Landroid/widget/ImageView;

    .line 234
    new-instance v0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mArrowLeft:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {v0, v3, v4, v1, v5}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;-><init>(Landroid/content/res/Resources;Landroid/view/View;ZI)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mLeftArrowAnimator:Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

    .line 235
    new-instance v0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mArrowRight:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;-><init>(Landroid/content/res/Resources;Landroid/view/View;ZI)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mRightArrowAnimator:Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

    .line 237
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_servicebox_owner_info:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOwnerInfoText:Landroid/widget/TextView;

    .line 238
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->updateOwnerInfoText()V

    .line 240
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->initializePages()V

    .line 242
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 243
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->playArrowAnimation()V

    .line 215
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 229
    goto :goto_0
.end method
