.class public Lcom/samsung/android/share/SShareCommon;
.super Ljava/lang/Object;
.source "SShareCommon.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SShareCommon"

.field private static mIsSupportBixby:Z

.field private static mIsSupportButtons:Z

.field private static mIsSupportEnhancedMoreActions:Z

.field private static mIsSupportGridResolver:Z

.field private static mIsSupportLogging:Z

.field private static mIsSupportMoreActions:Z

.field private static mIsSupportNearby:Z

.field private static mIsSupportPageMode:Z

.field private static mIsSupportRecentSort:Z

.field private static mIsSupportResolverGuide:Z

.field private static mIsSupportShareLink:Z

.field private static mIsSupportShareLinkLayout:Z

.field private static mIsSupportShowButtonShapes:Z

.field private static mIsSupportSimpleSharing:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceDefault:Z

.field private mEasySignUpAlreadyChecked:Z

.field private mEasySignUpEnabled:Z

.field private mExtraIntentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mIconChangePlayer:I

.field private mIconPrint:I

.field private mIconQuickConnect:I

.field private mIconScreenMirroring:I

.field private mIconScreenSharing:I

.field private mItemCount:I

.field private mLaunchedFromUid:I

.field private mResolverGuideIntent:Landroid/content/Intent;

.field private mSendBixbyResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportGridResolver:Z

    .line 43
    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportButtons:Z

    .line 44
    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportShowButtonShapes:Z

    .line 45
    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportResolverGuide:Z

    .line 46
    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportSimpleSharing:Z

    .line 47
    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportLogging:Z

    .line 48
    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportNearby:Z

    .line 49
    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportMoreActions:Z

    .line 50
    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportPageMode:Z

    .line 51
    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportRecentSort:Z

    .line 52
    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportEnhancedMoreActions:Z

    .line 53
    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportShareLink:Z

    .line 54
    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportShareLinkLayout:Z

    .line 55
    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportBixby:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;ZILjava/util/List;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "isDeviceDefault"    # Z
    .param p4, "launchedFromUid"    # I
    .param p6, "itemCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "ZI",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p5, "extraIntentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v4

    move v6, p4

    move-object v7, p5

    move v8, p6

    .line 77
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/share/SShareCommon;-><init>(Landroid/content/Context;Landroid/content/Intent;ZZZILjava/util/List;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;ZZZILjava/util/List;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "isDeviceDefault"    # Z
    .param p4, "alwaysUseOption"    # Z
    .param p5, "hasFilteredItem"    # Z
    .param p6, "launchedFromUid"    # I
    .param p8, "itemCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "ZZZI",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p7, "extraIntentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v0, p0, Lcom/samsung/android/share/SShareCommon;->mItemCount:I

    .line 61
    iput-boolean v0, p0, Lcom/samsung/android/share/SShareCommon;->mEasySignUpAlreadyChecked:Z

    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/share/SShareCommon;->mEasySignUpEnabled:Z

    .line 64
    iput v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconChangePlayer:I

    .line 65
    iput v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenMirroring:I

    .line 66
    iput v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenSharing:I

    .line 67
    iput v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconQuickConnect:I

    .line 68
    iput v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconPrint:I

    .line 84
    iput-object p1, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    .line 85
    iput p8, p0, Lcom/samsung/android/share/SShareCommon;->mItemCount:I

    .line 86
    iput p6, p0, Lcom/samsung/android/share/SShareCommon;->mLaunchedFromUid:I

    .line 87
    iput-object p7, p0, Lcom/samsung/android/share/SShareCommon;->mExtraIntentList:Ljava/util/List;

    .line 88
    iput-boolean p3, p0, Lcom/samsung/android/share/SShareCommon;->mDeviceDefault:Z

    .line 90
    if-eqz p3, :cond_0

    if-eqz p4, :cond_3

    .line 104
    :cond_0
    :goto_0
    if-nez p4, :cond_1

    if-eqz p5, :cond_2

    .line 105
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->setGridResolverFeature()V

    .line 106
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->setButtonsFeature()V

    .line 107
    invoke-direct {p0, p2}, Lcom/samsung/android/share/SShareCommon;->setResolverGuideFeature(Landroid/content/Intent;)V

    .line 110
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->setPageModeFeature()V

    .line 83
    return-void

    .line 90
    :cond_3
    if-nez p5, :cond_0

    .line 91
    if-ltz p6, :cond_0

    invoke-static {p6}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->getShareLinkSupportState()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 93
    invoke-direct {p0, p2}, Lcom/samsung/android/share/SShareCommon;->setShareLinkFeature(Landroid/content/Intent;)V

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->setShareLinkLayoutFeature()V

    .line 98
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->setQuickConnectFeature()V

    .line 99
    invoke-direct {p0, p2}, Lcom/samsung/android/share/SShareCommon;->setMoreActionsFeature(Landroid/content/Intent;)V

    .line 100
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->setRecentSortFeature()V

    .line 101
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->setLoggingFeature()V

    goto :goto_0

    .line 96
    :cond_4
    invoke-direct {p0, p2}, Lcom/samsung/android/share/SShareCommon;->setSimpleSharingFeature(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private checkSimpleShareSupport()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 615
    iget-boolean v2, p0, Lcom/samsung/android/share/SShareCommon;->mEasySignUpAlreadyChecked:Z

    if-eqz v2, :cond_0

    .line 616
    iget-boolean v2, p0, Lcom/samsung/android/share/SShareCommon;->mEasySignUpEnabled:Z

    return v2

    .line 620
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/samsung/android/share/SShareSignUpManager;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v1

    .line 621
    .local v1, "retVal":I
    const-string/jumbo v2, "SShareCommon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkSimpleShareSupport = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 624
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/share/SShareCommon;->mEasySignUpEnabled:Z

    .line 628
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/share/SShareCommon;->mEasySignUpAlreadyChecked:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    .end local v1    # "retVal":I
    :goto_1
    iget-boolean v2, p0, Lcom/samsung/android/share/SShareCommon;->mEasySignUpEnabled:Z

    return v2

    .line 626
    .restart local v1    # "retVal":I
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/samsung/android/share/SShareCommon;->mEasySignUpEnabled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 629
    .end local v1    # "retVal":I
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Ljava/lang/Exception;
    iput-boolean v5, p0, Lcom/samsung/android/share/SShareCommon;->mEasySignUpEnabled:Z

    .line 631
    const-string/jumbo v2, "SShareCommon"

    const-string/jumbo v3, "SShareSignUpManager returns exception !!!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getButtonShapeSupportState()Z
    .locals 4

    .prologue
    .line 561
    const/4 v1, 0x0

    .line 563
    .local v1, "isEnabledShowBtnShape":Z
    iget-object v2, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 564
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 565
    const-string/jumbo v2, "show_button_background"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 566
    const/4 v1, 0x1

    .line 570
    :cond_0
    return v1
.end method

.method private getButtonsSupportState()Z
    .locals 4

    .prologue
    .line 548
    const/4 v1, 0x0

    .line 550
    .local v1, "retVal":Z
    iget-object v2, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 551
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 552
    const-string/jumbo v2, "default_app_selection_option"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 553
    const/4 v1, 0x1

    .line 557
    :cond_0
    return v1
.end method

.method private getEnhancedMoreActionsSupportState()Z
    .locals 2

    .prologue
    .line 677
    const-string/jumbo v0, "2016B"

    sget-object v1, Lcom/samsung/android/share/SShareConstants;->SECUX_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "2017A"

    sget-object v1, Lcom/samsung/android/share/SShareConstants;->SECUX_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getMoreActionsSupportState(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 638
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->isEmergencyOrUPSModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 639
    return v3

    .line 643
    :cond_0
    :try_start_0
    const-string/jumbo v4, "more_actions_screen_sharing"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenSharing:I

    .line 644
    const-string/jumbo v4, "more_actions_screen_mirroring"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenMirroring:I

    .line 645
    const-string/jumbo v4, "more_actions_change_player"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconChangePlayer:I

    .line 646
    invoke-virtual {p0}, Lcom/samsung/android/share/SShareCommon;->getSupportNearby()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo v4, "more_actions_quick_connect"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    :goto_0
    iput v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconQuickConnect:I

    .line 647
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_9

    move v4, v3

    :goto_1
    iput v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconPrint:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    :goto_2
    iget v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconChangePlayer:I

    if-ne v4, v2, :cond_1

    .line 656
    const-string/jumbo v4, "more_actions_change_player"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 658
    :cond_1
    iget v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenMirroring:I

    if-ne v4, v2, :cond_2

    .line 659
    const-string/jumbo v4, "more_actions_screen_mirroring"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 661
    :cond_2
    iget v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenSharing:I

    if-eq v4, v2, :cond_3

    iget v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenSharing:I

    if-ne v4, v6, :cond_4

    .line 662
    :cond_3
    const-string/jumbo v4, "more_actions_screen_sharing"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 664
    :cond_4
    iget v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconQuickConnect:I

    if-ne v4, v2, :cond_5

    .line 665
    const-string/jumbo v4, "more_actions_quick_connect"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 667
    :cond_5
    iget v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconPrint:I

    if-ne v4, v2, :cond_6

    .line 668
    const-string/jumbo v4, "more_actions_print"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 671
    :cond_6
    iget v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconChangePlayer:I

    if-eq v4, v2, :cond_7

    iget v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenMirroring:I

    if-ne v4, v2, :cond_a

    :cond_7
    :goto_3
    return v2

    :cond_8
    move v4, v3

    .line 646
    goto :goto_0

    .line 647
    :cond_9
    :try_start_1
    const-string/jumbo v4, "more_actions_print"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_1

    .line 650
    :catch_0
    move-exception v1

    .line 651
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v4, "SShareCommon"

    const-string/jumbo v5, "OutOfMemoryError !!! during getting more actions"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 648
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 649
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "SShareCommon"

    const-string/jumbo v5, "Exception !!! during getting more actions"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 672
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a
    iget v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenSharing:I

    if-eq v4, v2, :cond_7

    iget v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenSharing:I

    if-eq v4, v6, :cond_7

    .line 673
    iget v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconQuickConnect:I

    if-eq v4, v2, :cond_7

    iget v4, p0, Lcom/samsung/android/share/SShareCommon;->mIconPrint:I

    if-eq v4, v2, :cond_7

    move v2, v3

    goto :goto_3
.end method

.method private getPageModeSupportState()Z
    .locals 4

    .prologue
    .line 532
    const/4 v0, 0x0

    .line 533
    .local v0, "bPageMode":Z
    invoke-static {}, Landroid/util/GeneralUtil;->isPhone()Z

    move-result v1

    .line 534
    .local v1, "bPhoneType":Z
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->isDesktopModeEnabled()Z

    move-result v2

    .line 538
    .local v2, "isDesktopMode":Z
    if-eqz v1, :cond_0

    sget-boolean v3, Lcom/samsung/android/share/SShareCommon;->mIsSupportButtons:Z

    if-eqz v3, :cond_1

    .line 544
    :cond_0
    :goto_0
    return v0

    .line 538
    :cond_1
    if-nez v2, :cond_0

    .line 539
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getQuickConnectSupportState()Z
    .locals 4

    .prologue
    .line 575
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 576
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v2, "com.samsung.android.oneconnect"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    const/4 v2, 0x1

    return v2

    .line 577
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return v2
.end method

.method private getResolverGuideSupportState(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 524
    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportButtons:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->isUSA()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/share/SShareCommon;->isIntentFileUriScheme(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 525
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private getShareLinkLayoutSupportState()Z
    .locals 2

    .prologue
    .line 685
    const-string/jumbo v0, "2016B"

    sget-object v1, Lcom/samsung/android/share/SShareConstants;->SECUX_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "2017A"

    sget-object v1, Lcom/samsung/android/share/SShareConstants;->SECUX_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getShareLinkSupportState()Z
    .locals 2

    .prologue
    .line 681
    const-string/jumbo v0, "2016B"

    sget-object v1, Lcom/samsung/android/share/SShareConstants;->SECUX_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "2017A"

    sget-object v1, Lcom/samsung/android/share/SShareConstants;->SECUX_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getShareLinkSupportState(Landroid/content/Intent;)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 600
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->checkSimpleShareSupport()Z

    move-result v1

    .line 601
    .local v1, "featureEnable":Z
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareCommon;->isIntentTypeSupportRemoteShare(Landroid/content/Intent;)Z

    move-result v3

    .line 602
    .local v3, "intentSupport":Z
    invoke-virtual {p0}, Lcom/samsung/android/share/SShareCommon;->isKnoxModeEnabled()Z

    move-result v4

    .line 603
    .local v4, "knoxMode":Z
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->isEmergencyOrUPSModeEnabled()Z

    move-result v0

    .line 604
    .local v0, "emergencyMode":Z
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareCommon;->isForceSimpleSharingDisable(Landroid/content/Intent;)Z

    move-result v2

    .line 606
    .local v2, "forceDisable":Z
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_1

    .line 609
    :cond_0
    const-string/jumbo v5, "SShareCommon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "featureEnable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " intentSupport = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " knoxMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " emergencyMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " forceDisable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const/4 v5, 0x0

    return v5

    .line 606
    :cond_1
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 607
    const/4 v5, 0x1

    return v5
.end method

.method private getSimpleSharingSupportState(Landroid/content/Intent;)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 585
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->checkSimpleShareSupport()Z

    move-result v1

    .line 586
    .local v1, "featureEnable":Z
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareCommon;->isIntentTypeSupportRemoteShare(Landroid/content/Intent;)Z

    move-result v3

    .line 587
    .local v3, "intentSupport":Z
    invoke-virtual {p0}, Lcom/samsung/android/share/SShareCommon;->isKnoxModeEnabled()Z

    move-result v4

    .line 588
    .local v4, "knoxMode":Z
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->isEmergencyOrUPSModeEnabled()Z

    move-result v0

    .line 589
    .local v0, "emergencyMode":Z
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareCommon;->isForceSimpleSharingDisable(Landroid/content/Intent;)Z

    move-result v2

    .line 591
    .local v2, "forceDisable":Z
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_1

    .line 594
    :cond_0
    const-string/jumbo v5, "SShareCommon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "featureEnable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " intentSupport = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " knoxMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " emergencyMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " forceDisable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v5, 0x0

    return v5

    .line 591
    :cond_1
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 592
    const/4 v5, 0x1

    return v5
.end method

.method private hasExtraIntentUriInfo()Z
    .locals 4

    .prologue
    .line 410
    iget-object v3, p0, Lcom/samsung/android/share/SShareCommon;->mExtraIntentList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 411
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/share/SShareCommon;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 412
    const/4 v2, 0x0

    .line 413
    .local v2, "uri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 414
    .local v0, "extraBundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/samsung/android/share/SShareCommon;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 415
    .local v0, "extraBundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 416
    const-string/jumbo v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2    # "uri":Landroid/net/Uri;
    check-cast v2, Landroid/net/Uri;

    .line 417
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 418
    const/4 v3, 0x1

    return v3

    .line 411
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 423
    .end local v0    # "extraBundle":Landroid/os/Bundle;
    .end local v1    # "i":I
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private isDesktopModeEnabled()Z
    .locals 3

    .prologue
    .line 359
    iget-object v1, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "desktopmode"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 360
    .local v0, "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    if-eqz v0, :cond_0

    .line 361
    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    const/4 v1, 0x1

    return v1

    .line 366
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isEmergencyOrUPSModeEnabled()Z
    .locals 6

    .prologue
    const/16 v5, 0x200

    .line 379
    iget-object v4, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 381
    const/4 v4, 0x0

    return v4

    .line 383
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/share/SShareCommon;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    .line 384
    .local v0, "em":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    const/4 v1, 0x0

    .line 385
    .local v1, "isEmergencyMode":Z
    const/4 v3, 0x0

    .line 386
    .local v3, "isUltraPowerSavingMode":Z
    const/4 v2, 0x0

    .line 388
    .local v2, "isEmergencyOrUPSM":Z
    if-eqz v0, :cond_2

    .line 389
    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    const/4 v1, 0x0

    .line 390
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 391
    invoke-virtual {v0, v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v3

    .line 392
    .end local v3    # "isUltraPowerSavingMode":Z
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v2

    .line 394
    .end local v2    # "isEmergencyOrUPSM":Z
    :cond_2
    const/4 v0, 0x0

    .line 396
    .local v0, "em":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    if-nez v1, :cond_5

    :goto_2
    return v3

    .line 389
    .local v0, "em":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    .restart local v2    # "isEmergencyOrUPSM":Z
    .restart local v3    # "isUltraPowerSavingMode":Z
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 390
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 396
    .end local v2    # "isEmergencyOrUPSM":Z
    .end local v3    # "isUltraPowerSavingMode":Z
    .local v0, "em":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    :cond_5
    const/4 v3, 0x1

    goto :goto_2
.end method

.method private isForceSimpleSharingDisable(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 370
    const-string/jumbo v1, "simple_sharing_force_disable"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 371
    .local v0, "forceDisalbe":I
    if-ne v0, v3, :cond_0

    .line 372
    return v3

    .line 374
    :cond_0
    return v2
.end method

.method private isIntentTypeSupportRemoteShare(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 400
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareCommon;->isIntentUriDataIValidCheck(Landroid/content/Intent;)Z

    move-result v1

    .line 401
    if-eqz v1, :cond_1

    .line 403
    const/4 v1, 0x1

    return v1

    .line 405
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isIntentUriDataIValidCheck(Landroid/content/Intent;)Z
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 427
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v7, "android.intent.action.SEND"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 429
    const/4 v5, 0x0

    .line 430
    .local v5, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 431
    .local v1, "extraBundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 432
    .local v1, "extraBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 433
    const-string/jumbo v7, "android.intent.extra.STREAM"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .end local v5    # "uri":Landroid/net/Uri;
    check-cast v5, Landroid/net/Uri;

    .line 436
    :cond_0
    if-nez v5, :cond_2

    .line 437
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->hasExtraIntentUriInfo()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 438
    return v9

    .line 440
    :cond_1
    return v8

    .line 442
    :cond_2
    const-string/jumbo v7, "com.android.contacts"

    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 444
    return v9

    .line 447
    .end local v1    # "extraBundle":Landroid/os/Bundle;
    :cond_3
    const-string/jumbo v7, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 448
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v6, "uriArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string/jumbo v7, "android.intent.extra.STREAM"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 450
    if-nez v6, :cond_4

    .line 452
    return v8

    .line 454
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 455
    .local v4, "numOfUri":I
    const/4 v3, 0x0

    .line 457
    .local v3, "isNotNullAtLeastOne":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_7

    .line 458
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 459
    const-string/jumbo v8, "com.android.contacts"

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 461
    const/4 v3, 0x1

    .line 462
    return v3

    .line 465
    :cond_5
    const/4 v3, 0x1

    .line 466
    return v3

    .line 457
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 473
    :cond_7
    return v3

    .line 476
    .end local v2    # "i":I
    .end local v3    # "isNotNullAtLeastOne":Z
    .end local v4    # "numOfUri":I
    .end local v6    # "uriArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_8
    return v9
.end method

.method private isUSA()Z
    .locals 2

    .prologue
    .line 347
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Framework_SupportResolverActivityGuide"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setButtonsFeature()V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->getButtonsSupportState()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportButtons:Z

    .line 132
    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportButtons:Z

    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->getButtonShapeSupportState()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportShowButtonShapes:Z

    .line 129
    :cond_0
    return-void
.end method

.method private setGridResolverFeature()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportGridResolver:Z

    .line 125
    return-void
.end method

.method private setLoggingFeature()V
    .locals 1

    .prologue
    .line 154
    sget-boolean v0, Lcom/samsung/android/share/SShareConstants;->ENABLE_SURVEY_MODE:Z

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportLogging:Z

    .line 153
    return-void
.end method

.method private setMoreActionsFeature(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareCommon;->getMoreActionsSupportState(Landroid/content/Intent;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportMoreActions:Z

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->getEnhancedMoreActionsSupportState()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportEnhancedMoreActions:Z

    .line 161
    return-void
.end method

.method private setPageModeFeature()V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->getPageModeSupportState()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportPageMode:Z

    .line 166
    return-void
.end method

.method private setQuickConnectFeature()V
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->getQuickConnectSupportState()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportNearby:Z

    .line 157
    return-void
.end method

.method private setRecentSortFeature()V
    .locals 1

    .prologue
    .line 171
    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportPageMode:Z

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportRecentSort:Z

    .line 170
    return-void
.end method

.method private setResolverGuideFeature(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareCommon;->getResolverGuideSupportState(Landroid/content/Intent;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportResolverGuide:Z

    .line 137
    return-void
.end method

.method private setShareLinkFeature(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareCommon;->getShareLinkSupportState(Landroid/content/Intent;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportShareLink:Z

    .line 145
    return-void
.end method

.method private setShareLinkLayoutFeature()V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/samsung/android/share/SShareCommon;->getShareLinkLayoutSupportState()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportShareLinkLayout:Z

    .line 149
    return-void
.end method

.method private setSimpleSharingFeature(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareCommon;->getSimpleSharingSupportState(Landroid/content/Intent;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportSimpleSharing:Z

    .line 141
    return-void
.end method


# virtual methods
.method public getChangePlayerEnable()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconChangePlayer:I

    return v0
.end method

.method public getPrintEnable()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconPrint:I

    return v0
.end method

.method public getQuickConnectEnable()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconQuickConnect:I

    return v0
.end method

.method public getResolverGuideIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/samsung/android/share/SShareCommon;->mResolverGuideIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getScreenMirroringEnable()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenMirroring:I

    return v0
.end method

.method public getScreenSharingEnable()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/samsung/android/share/SShareCommon;->mIconScreenSharing:I

    return v0
.end method

.method public getSupportBixby()Z
    .locals 1

    .prologue
    .line 343
    sget-boolean v0, Lcom/samsung/android/share/SShareConstants;->ENABLE_BIXBY:Z

    sput-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportBixby:Z

    return v0
.end method

.method public getSupportButtons()Z
    .locals 1

    .prologue
    .line 224
    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportButtons:Z

    return v0
.end method

.method public getSupportEnhancedMoreActions()Z
    .locals 1

    .prologue
    .line 287
    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportEnhancedMoreActions:Z

    return v0
.end method

.method public getSupportGridResolver()Z
    .locals 1

    .prologue
    .line 217
    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportGridResolver:Z

    return v0
.end method

.method public getSupportLogging()Z
    .locals 1

    .prologue
    .line 266
    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportLogging:Z

    return v0
.end method

.method public getSupportMoreActions()Z
    .locals 1

    .prologue
    .line 280
    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportMoreActions:Z

    return v0
.end method

.method public getSupportNearby()Z
    .locals 1

    .prologue
    .line 273
    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportNearby:Z

    return v0
.end method

.method public getSupportPageMode()Z
    .locals 1

    .prologue
    .line 294
    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportPageMode:Z

    return v0
.end method

.method public getSupportRecentSort()Z
    .locals 1

    .prologue
    .line 301
    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportRecentSort:Z

    return v0
.end method

.method public getSupportResolverGuide()Z
    .locals 1

    .prologue
    .line 238
    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportResolverGuide:Z

    return v0
.end method

.method public getSupportShareLink()Z
    .locals 1

    .prologue
    .line 252
    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportShareLink:Z

    return v0
.end method

.method public getSupportShareLinkLayout()Z
    .locals 1

    .prologue
    .line 259
    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportShareLinkLayout:Z

    return v0
.end method

.method public getSupportShowButtonShapes()Z
    .locals 1

    .prologue
    .line 231
    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportShowButtonShapes:Z

    return v0
.end method

.method public getSupportSimpleSharing()Z
    .locals 1

    .prologue
    .line 245
    sget-boolean v0, Lcom/samsung/android/share/SShareCommon;->mIsSupportSimpleSharing:Z

    return v0
.end method

.method public isDeviceDefaultTheme()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/samsung/android/share/SShareCommon;->mDeviceDefault:Z

    return v0
.end method

.method public isIntentFileUriScheme(Landroid/content/Intent;)Z
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 484
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "android.intent.action.SEND"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 486
    const/4 v3, 0x0

    .line 487
    .local v3, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 488
    .local v1, "extraBundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 489
    .local v1, "extraBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 490
    const-string/jumbo v5, "android.intent.extra.STREAM"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .end local v3    # "uri":Landroid/net/Uri;
    check-cast v3, Landroid/net/Uri;

    .line 493
    :cond_0
    if-eqz v3, :cond_5

    const-string/jumbo v5, "file"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 494
    return v7

    .line 496
    .end local v1    # "extraBundle":Landroid/os/Bundle;
    :cond_1
    const-string/jumbo v5, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 497
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v4, "uriArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string/jumbo v5, "android.intent.extra.STREAM"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 499
    if-nez v4, :cond_2

    .line 501
    return v8

    .line 504
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 505
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 506
    const-string/jumbo v6, "file"

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 507
    return v7

    .line 504
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 512
    .end local v2    # "i":I
    .end local v4    # "uriArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 513
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_5

    .line 514
    const-string/jumbo v5, "file"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 515
    return v7

    .line 520
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_5
    return v8
.end method

.method public isKnoxModeEnabled()Z
    .locals 3

    .prologue
    .line 354
    iget v1, p0, Lcom/samsung/android/share/SShareCommon;->mLaunchedFromUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 355
    .local v0, "isKnoxMode":Z
    :goto_0
    return v0

    .line 354
    .end local v0    # "isKnoxMode":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setResolverGuideIntent(Landroid/app/Activity;Landroid/content/Intent;Z)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "safeForward"    # Z

    .prologue
    .line 178
    sget-boolean v4, Lcom/samsung/android/share/SShareCommon;->mIsSupportResolverGuide:Z

    if-eqz v4, :cond_0

    .line 180
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 181
    .local v3, "newIntent":Landroid/content/Intent;
    const/4 v0, 0x0

    .line 183
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "cn":Landroid/content/ComponentName;
    const-string/jumbo v4, "android"

    const-string/jumbo v5, "com.android.internal.app.ResolverGuideActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 186
    const-string/jumbo v4, "android.intent.extra.INTENT"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 187
    const-string/jumbo v4, "extra_safe_forward"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 188
    const/high16 v4, 0x800000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 190
    iput-object v3, p0, Lcom/samsung/android/share/SShareCommon;->mResolverGuideIntent:Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v3    # "newIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v2

    .line 194
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "SShareCommon"

    const-string/jumbo v5, "Class Not Found"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 192
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "SShareCommon"

    const-string/jumbo v5, "Activity Not Found"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
