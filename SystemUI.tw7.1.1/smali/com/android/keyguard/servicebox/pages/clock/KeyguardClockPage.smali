.class public Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;
.super Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
.source "KeyguardClockPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;,
        Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-keyguard-servicebox-pages-clock-KeyguardClockPage$ClockTypeSwitchesValues:[I


# instance fields
.field private mClockHolder:Landroid/widget/FrameLayout;

.field private mClockKey:Ljava/lang/String;

.field private mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

.field private mColonScaleOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

.field private mDateMoveOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

.field private mIsFMMLock:Z

.field private mIsNationalRoamingIgnorable:Z

.field private mIsNetworkRoaming:Z

.field private mIsRMMLock:Z

.field private mLocale:Ljava/util/Locale;

.field private mRefreshLogCounter:I

.field private mShouldShowDualClock:Z

.field private mShouldShowImageClock:Z

.field private mTimeMoveScaleOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

.field private mType:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;


# direct methods
.method private static synthetic -getcom-android-keyguard-servicebox-pages-clock-KeyguardClockPage$ClockTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-com-android-keyguard-servicebox-pages-clock-KeyguardClockPage$ClockTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-com-android-keyguard-servicebox-pages-clock-KeyguardClockPage$ClockTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->values()[Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->DefaultDual2016:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->DefaultSingle2016:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ExpandImageSingle:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ExpandSingle:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ImageDual2016:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ImageSingle2016:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->None:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-com-android-keyguard-servicebox-pages-clock-KeyguardClockPage$ClockTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mLocale:Ljava/util/Locale;

    sget-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->None:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    iput-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockKey:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mRefreshLogCounter:I

    iput-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mIsFMMLock:Z

    iput-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mIsRMMLock:Z

    return-void
.end method

.method private changeHourFormat()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    invoke-interface {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;->changeHourFormat()V

    :cond_0
    return-void
.end method

.method private considerChangeClockView()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    return-void
.end method

.method private considerChangeClockView(Z)V
    .locals 12

    const/4 v8, 0x0

    const-string/jumbo v9, "KeyguardClockPage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "considerChangeClockView() >> START >> forceReplace: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->needToShowDualClock()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mShouldShowDualClock:Z

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->needToShowImageClock()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mShouldShowImageClock:Z

    sget-boolean v9, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v9, :cond_4

    iget v9, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    if-eqz v9, :cond_4

    const/4 v2, 0x1

    :goto_0
    iget-object v9, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDesktopMode()Z

    move-result v0

    iget-object v9, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFMMLock()Z

    move-result v1

    iget-object v9, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isRMMEnabled()Z

    move-result v3

    if-nez v0, :cond_0

    if-nez v2, :cond_5

    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_6

    :cond_1
    const/4 v7, 0x0

    :goto_1
    iget-boolean v9, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mShouldShowImageClock:Z

    if-eqz v9, :cond_9

    iget-boolean v9, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mShouldShowDualClock:Z

    if-eqz v9, :cond_7

    sget-object v6, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ImageDual2016:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, " hometime:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/keyguard/util/SettingsHelper;->getHomeTimeZone()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, " locale:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mLocale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, " hasBG?"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/keyguard/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v8, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v10, Lcom/android/keyguard/R$bool;->theme_use_clock_background_image:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    :cond_2
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_c

    iput-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    iput-object v4, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockKey:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->updateDualClockShowing()V

    iget-object v8, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v8}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    :goto_3
    const-string/jumbo v8, "KeyguardClockPage"

    const-string/jumbo v9, "considerChangeClockView() << END <<"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v7, 0x1

    goto :goto_1

    :cond_6
    if-nez v3, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_7
    if-eqz v7, :cond_8

    sget-object v6, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ExpandImageSingle:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    goto :goto_2

    :cond_8
    sget-object v6, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ImageSingle2016:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    goto :goto_2

    :cond_9
    iget-boolean v9, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mShouldShowDualClock:Z

    if-eqz v9, :cond_a

    sget-object v6, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->DefaultDual2016:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    goto/16 :goto_2

    :cond_a
    if-eqz v7, :cond_b

    sget-object v6, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ExpandSingle:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    goto/16 :goto_2

    :cond_b
    sget-object v6, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->DefaultSingle2016:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    goto/16 :goto_2

    :cond_c
    iget-object v8, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v8, :cond_3

    const-string/jumbo v8, "KeyguardClockPage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "previousClockKey:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    invoke-interface {v10}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;->getClockCacheKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", newClockKey:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    invoke-interface {v8}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;->getClockCacheKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    iput-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    iput-object v4, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockKey:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->updateDualClockShowing()V

    iget-object v8, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v8}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_3
.end method

.method private isNetworkRoamingState()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sget-boolean v4, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MULTI_SIM_DEVICE:Z

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    if-eqz v1, :cond_0

    aget v4, v1, v6

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    return v4

    :cond_2
    return v6
.end method

.method private needToShowDualClock()Z
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/SettingsHelper;->isDualClock()Z

    move-result v0

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/SettingsHelper;->isEasyModeOn()Z

    move-result v1

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "dualclock"

    invoke-static {v3, v4}, Lcom/android/keyguard/KeyguardRune;->isTestEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->setAutoHomecityTimezone(Landroid/content/Context;)V

    if-eqz v2, :cond_0

    return v5

    :cond_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/SettingsHelper;->getHomeTimeZone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "KeyguardClockPage"

    const-string/jumbo v4, "homecity timezone is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    const-string/jumbo v3, "KeyguardClockPage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isDualClockSetting, isEasyUxOn, mIsNetworkRoaming: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardRune;->canIgnoreNationalRoamingToShowSingleClock(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "KeyguardClockPage"

    const-string/jumbo v4, "isIgnoreNationalRoaming() is true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardRune;->isWiFiOnlyDevice(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "KeyguardClockPage"

    const-string/jumbo v4, "isWiFiOnlyDevice() is true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_4
    return v5
.end method

.method private needToShowImageClock()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$bool;->theme_use_image_clock:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/KeyguardRune;->isArabicIndicForClockDigit()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setAutoHomecityTimezone(Landroid/content/Context;)V
    .locals 8

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/util/SettingsHelper;->getHomeTimeZone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "GMT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_1

    return-void

    :cond_1
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const-string/jumbo v5, "KeyguardClockPage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAutoHomecityTimezone( simstateFromTelephony:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " )"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x5

    if-ne v3, v5, :cond_2

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/keyguard/KeyguardRune;->shouldBeAsiaSeoulAsDefaultHomecityTimezone()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v2, "Asia/Seoul"

    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/keyguard/util/SettingsHelper;->setHomeTimeZone(Ljava/lang/String;)V

    const-string/jumbo v5, "KeyguardClockPage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "homecity_timezone settings value is set by SystemUI! >> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private updateDualClockShowing()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    sget-object v1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->DefaultDual2016:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    sget-object v1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ImageDual2016:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;->setDualClockShowing(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;->setDualClockShowing(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected attachContentsView(Landroid/animation/Animator$AnimatorListener;)V
    .locals 2

    const/4 v1, 0x4

    invoke-super {p0, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isLockscreenClockEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isLockscreenDateEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->updateChildViewsLook()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    invoke-interface {v0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;->setClockVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    invoke-interface {v0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;->setDateVisibility(I)V

    goto :goto_1
.end method

.method protected getContentsView(I)Landroid/view/View;
    .locals 4

    sget v0, Lcom/android/keyguard/R$layout;->keyguard_single_clock_view:I

    invoke-static {}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-getcom-android-keyguard-servicebox-pages-clock-KeyguardClockPage$ClockTypeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    invoke-virtual {v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v1, "KeyguardClockPage"

    const-string/jumbo v2, "Lockscreen doesn\'t need to show clock."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockHolder:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1

    :pswitch_0
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_dual_image_clock_view:I

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_single_image_clock_view:I

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_dual_clock_view:I

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_single_vertical_clock_view:I

    goto :goto_0

    :pswitch_4
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_single_vertical_image_clock_view:I

    goto :goto_0

    :pswitch_5
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_single_clock_view:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getHolder()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockHolder:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "servicebox_clock"

    return-object v0
.end method

.method protected getTransitionOption(Z)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;
    .locals 1

    const/16 v0, 0x24

    invoke-static {v0}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->generateMoveOption(I)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v0

    return-object v0
.end method

.method protected initViews(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    check-cast p1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;->setClockCacheKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->theme_use_clock_background_image:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    invoke-interface {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;->hangBackgroudImageOnTheClock()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->refreshTime()V

    return-void
.end method

.method public isSwitchAnimationPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mTransition:Lcom/android/keyguard/servicebox/utils/SecTransition;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mTransition:Lcom/android/keyguard/servicebox/utils/SecTransition;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/utils/SecTransition;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    const/16 v2, 0x16f

    invoke-super {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->onFinishInflate()V

    sget v0, Lcom/android/keyguard/R$id;->keyguard_clock_holder:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockHolder:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mLocale:Ljava/util/Locale;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    invoke-static {}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->generateCompositeOption()Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v0

    const/16 v1, 0xa7

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->setDuration(I)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mColonScaleOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mColonScaleOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->setStartDelay(I)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    invoke-static {}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->generateMoveOption()Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->setDuration(I)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mDateMoveOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    invoke-static {}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->generateCompositeOption()Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->setDuration(I)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mTimeMoveScaleOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    return-void
.end method

.method public onOpenThemeChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 7

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->isNetworkRoamingState()Z

    move-result v2

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardRune;->canIgnoreNationalRoamingToShowSingleClock(Landroid/content/Context;)Z

    move-result v1

    const/4 v0, 0x0

    const-string/jumbo v4, "KeyguardClockPage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onRefreshCarrierInfo(pre, now): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    if-eq v4, v2, :cond_0

    iput-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    const/4 v0, 0x1

    :cond_0
    iget-boolean v4, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mIsNationalRoamingIgnorable:Z

    if-eq v4, v1, :cond_1

    iput-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mIsNationalRoamingIgnorable:Z

    const/4 v0, 0x1

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mLocale:Ljava/util/Locale;

    invoke-virtual {v4, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iput-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mLocale:Ljava/util/Locale;

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView()V

    :cond_3
    return-void
.end method

.method public onSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFMMLock()Z

    move-result v0

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isRMMEnabled()Z

    move-result v2

    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mIsFMMLock:Z

    if-eq v3, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mIsFMMLock:Z

    const/4 v1, 0x1

    :cond_0
    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mIsRMMLock:Z

    if-eq v3, v2, :cond_1

    iput-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mIsRMMLock:Z

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    :cond_2
    return-void
.end method

.method public onSettingsChanged(Landroid/net/Uri;)V
    .locals 2

    sget-object v0, Lcom/android/keyguard/servicebox/utils/ServiceBoxSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/keyguard/servicebox/utils/ServiceBoxSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/android/keyguard/servicebox/utils/ServiceBoxSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->changeHourFormat()V

    goto :goto_0
.end method

.method public onUpdateLockscreenHiddenItems()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    return-void
.end method

.method public prepareTransition(Lcom/android/keyguard/servicebox/utils/SecTransition;)V
    .locals 2

    const-string/jumbo v0, "keyguard_transition_clock_time_hour"

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mTimeMoveScaleOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    invoke-virtual {p1, v0, v1}, Lcom/android/keyguard/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/keyguard/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v0, "keyguard_transition_clock_time_colon"

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mColonScaleOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    invoke-virtual {p1, v0, v1}, Lcom/android/keyguard/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/keyguard/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v0, "keyguard_transition_clock_time_min"

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mTimeMoveScaleOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    invoke-virtual {p1, v0, v1}, Lcom/android/keyguard/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/keyguard/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v0, "keyguard_transition_clock_date_normal"

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mDateMoveOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    invoke-virtual {p1, v0, v1}, Lcom/android/keyguard/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/keyguard/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v0, "keyguard_transition_clock_date_shamsi"

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mDateMoveOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    invoke-virtual {p1, v0, v1}, Lcom/android/keyguard/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/keyguard/servicebox/utils/SecTransitionOption;)V

    return-void
.end method

.method public refreshTime()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mRefreshLogCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mRefreshLogCounter:I

    iget v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mRefreshLogCounter:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const-string/jumbo v0, "KeyguardClockPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshTime(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    invoke-interface {v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;->getClockCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Roaming:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mRefreshLogCounter:I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->-wrap0(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    sget-object v1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->clockView12:Ljava/lang/String;

    sget-object v2, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->clockView24:Ljava/lang/String;

    sget-object v3, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->dateView:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;->refreshTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public refreshViews()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->refreshTime()V

    return-void
.end method

.method public setCoverState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    invoke-interface {v0, p1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;->setCoverState(Z)V

    :cond_0
    return-void
.end method

.method public setPageType(IZ)V
    .locals 1

    iget v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    :cond_0
    return-void
.end method

.method public updateChildViewsLook()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    invoke-interface {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;->updateChildViewsLook()V

    :cond_0
    return-void
.end method
