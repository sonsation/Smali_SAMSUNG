.class Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;
.super Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KnoxStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomSdkMonitor"
.end annotation


# instance fields
.field private mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

.field private mChargerConnectionSoundEnabledState:Z

.field private mHideNotificationMessages:I

.field private mIsCustomSdkStatusBarHidden:Z

.field private mKnoxCustomDoubleTapState:Z

.field private mKnoxCustomLockScreenHiddenItems:I

.field private mKnoxCustomLockScreenOverrideMode:I

.field private mKnoxCustomQuickPanelButtonUsers:Z

.field private mKnoxCustomQuickPanelButtons:I

.field private mKnoxCustomQuickPanelEditMode:I

.field private mKnoxCustomUnlockSimOnBootState:Z

.field private mQuickPanelItems:Ljava/lang/String;

.field private mStatusBarIconsState:Z

.field private mStatusBarMode:I

.field private mStatusBarNotificationsState:Z

.field private mStatusBarText:Ljava/lang/String;

.field private mStatusBarTextSize:I

.field private mStatusBarTextStyle:I

.field private mStatusBarTextWidth:I

.field private mUnlockSimPin:Ljava/lang/String;

.field private mVolumePanelEnabledState:Z

.field final synthetic this$0:Lcom/android/keyguard/KnoxStateMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Lcom/samsung/android/knox/custom/StatusbarIconItem;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarIconsState:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarMode:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarNotificationsState:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextSize:I

    return v0
.end method

.method static synthetic -get17(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextStyle:I

    return v0
.end method

.method static synthetic -get18(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextWidth:I

    return v0
.end method

.method static synthetic -get19(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mHideNotificationMessages:I

    return v0
.end method

.method static synthetic -get20(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mVolumePanelEnabledState:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    return v0
.end method

.method public constructor <init>(Lcom/android/keyguard/KnoxStateMonitor;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/keyguard/KnoxStateMonitor;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 616
    iput-object p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;-><init>()V

    .line 594
    iput v1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    .line 595
    iput v1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    .line 596
    iput-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    .line 597
    iput-object v3, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    .line 598
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    .line 599
    iput-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    .line 600
    iput v2, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    .line 601
    iput-object v3, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    .line 602
    iput-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    .line 603
    iput-object v3, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    .line 604
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarMode:I

    .line 605
    iput v1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextStyle:I

    .line 606
    iput v1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextSize:I

    .line 607
    iput v1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextWidth:I

    .line 608
    iput-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarIconsState:Z

    .line 609
    iput-object v3, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    .line 610
    iput v1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mHideNotificationMessages:I

    .line 611
    iput-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarNotificationsState:Z

    .line 612
    iput-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    .line 613
    iput-boolean v2, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mVolumePanelEnabledState:Z

    .line 614
    iput-boolean v1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    .line 617
    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->registerCallback()V

    .line 616
    return-void
.end method

.method private registerCallback()V
    .locals 4

    .prologue
    .line 621
    invoke-static {}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

    move-result-object v1

    .line 623
    .local v1, "privateCustomDeviceManager":Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;
    if-eqz v1, :cond_0

    .line 626
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->registerSystemUICallback(Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;)Z

    .line 620
    :goto_0
    return-void

    .line 628
    :cond_0
    const-string/jumbo v2, "KnoxStateMonitor"

    .line 629
    const-string/jumbo v3, "registerSystemUICallback() cannot reference because privateCustomDeviceManager is null"

    .line 628
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "registerSystemUICallback() Failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    return-object v0
.end method

.method public getQuickPanelItems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 782
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 783
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 784
    iget-object v4, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 785
    .local v2, "stringItems":[Ljava/lang/String;
    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v2, v3

    .line 786
    .local v1, "stringItem":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 787
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 790
    .end local v1    # "stringItem":Ljava/lang/String;
    :cond_1
    return-object v0

    .line 792
    .end local v2    # "stringItems":[Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method public getStatusBarText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusBarTextSize()I
    .locals 1

    .prologue
    .line 841
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextSize:I

    return v0
.end method

.method public getStatusBarTextStyle()I
    .locals 1

    .prologue
    .line 835
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextStyle:I

    return v0
.end method

.method public getStatusBarTextWidth()I
    .locals 1

    .prologue
    .line 847
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextWidth:I

    return v0
.end method

.method public getUnlockSimPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    return-object v0
.end method

.method public isBatteryNotificationEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 865
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mHideNotificationMessages:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 866
    return v1

    .line 869
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isBrightnessControllerEnabled()Z
    .locals 2

    .prologue
    .line 812
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    and-int/lit8 v0, v0, 0x4

    .line 813
    const/4 v1, 0x4

    .line 812
    if-eq v0, v1, :cond_0

    .line 814
    const/4 v0, 0x0

    return v0

    .line 817
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isCarrierTextEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 874
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 875
    return v1

    .line 878
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isChargerConnectionSoundEnabledState()Z
    .locals 1

    .prologue
    .line 976
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    return v0
.end method

.method public isEmergencyCallButtonEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 883
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 884
    return v1

    .line 887
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLockScreenDisabledbyKNOX()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 937
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 938
    const/4 v0, 0x1

    return v0

    .line 941
    :cond_0
    return v1
.end method

.method public isLockscreenBatteryInfoEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 901
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 902
    return v1

    .line 905
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLockscreenClockEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 910
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 911
    return v1

    .line 914
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLockscreenDateEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 919
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 920
    return v1

    .line 923
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLockscreenHelpTextEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 892
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 893
    return v1

    .line 896
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLockscreenOwnerInfoEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 928
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    .line 929
    return v1

    .line 932
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isPanelExpandEnabled()Z
    .locals 1

    .prologue
    .line 806
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarNotificationsState:Z

    return v0
.end method

.method public isQuickConnectEnabled()Z
    .locals 2

    .prologue
    .line 754
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    and-int/lit8 v0, v0, 0x2

    .line 755
    const/4 v1, 0x2

    .line 754
    if-eq v0, v1, :cond_0

    .line 756
    const/4 v0, 0x0

    return v0

    .line 759
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isQuickSettingEditEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 774
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    if-nez v0, :cond_0

    .line 775
    return v1

    .line 777
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSFinderEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 764
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    and-int/lit8 v0, v0, 0x1

    if-eq v0, v1, :cond_0

    .line 766
    const/4 v0, 0x0

    return v0

    .line 769
    :cond_0
    return v1
.end method

.method public isSafetyWarningDialogEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 967
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mHideNotificationMessages:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 968
    return v1

    .line 971
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSetToSwipeLock()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 946
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 947
    const/4 v0, 0x1

    return v0

    .line 950
    :cond_0
    return v1
.end method

.method public isStatusBarDoubleTapEnabled()Z
    .locals 1

    .prologue
    .line 800
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    return v0
.end method

.method public isStatusBarHidden()Z
    .locals 1

    .prologue
    .line 987
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    return v0
.end method

.method public isStatusBarIconsEnabled()Z
    .locals 1

    .prologue
    .line 853
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarIconsState:Z

    return v0
.end method

.method public isUnlockSimOnBootState()Z
    .locals 1

    .prologue
    .line 955
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    return v0
.end method

.method public isUsersEnabled()Z
    .locals 1

    .prologue
    .line 822
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    return v0
.end method

.method public isVolumePanelEnabledState()Z
    .locals 1

    .prologue
    .line 982
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mVolumePanelEnabledState:Z

    return v0
.end method

.method public setBatteryLevelColourItem(Lcom/samsung/android/knox/custom/StatusbarIconItem;)V
    .locals 2
    .param p1, "data"    # Lcom/samsung/android/knox/custom/StatusbarIconItem;

    .prologue
    const/16 v1, 0x139a

    .line 709
    iput-object p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mBatteryLevelColourItem:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    .line 710
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 711
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 708
    return-void
.end method

.method public setChargerConnectionSoundEnabledState(Z)V
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 735
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    if-eq v0, p1, :cond_0

    .line 736
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mChargerConnectionSoundEnabledState:Z

    .line 734
    :cond_0
    return-void
.end method

.method public setHideNotificationMessages(I)V
    .locals 1
    .param p1, "data"    # I

    .prologue
    .line 715
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mHideNotificationMessages:I

    if-eq v0, p1, :cond_0

    .line 716
    iput p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mHideNotificationMessages:I

    .line 714
    :cond_0
    return-void
.end method

.method public setLockScreenHiddenItems(I)V
    .locals 2
    .param p1, "data"    # I

    .prologue
    const/16 v1, 0x1392

    .line 637
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    if-eq v0, p1, :cond_0

    .line 638
    iput p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    .line 639
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 640
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 636
    :cond_0
    return-void
.end method

.method public setLockScreenOverrideMode(I)V
    .locals 2
    .param p1, "data"    # I

    .prologue
    const/16 v1, 0x1393

    .line 645
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    if-eq v0, p1, :cond_0

    .line 646
    iput p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    .line 647
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 648
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 644
    :cond_0
    return-void
.end method

.method public setQuickPanelButtonUsers(Z)V
    .locals 2
    .param p1, "status"    # Z

    .prologue
    const/16 v1, 0x139f

    .line 661
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    if-eq v0, p1, :cond_0

    .line 662
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    .line 663
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 664
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 660
    :cond_0
    return-void
.end method

.method public setQuickPanelButtons(I)V
    .locals 2
    .param p1, "data"    # I

    .prologue
    const/16 v1, 0x1394

    .line 653
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    if-eq v0, p1, :cond_0

    .line 654
    iput p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    .line 655
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 656
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 652
    :cond_0
    return-void
.end method

.method public setQuickPanelEditMode(I)V
    .locals 2
    .param p1, "data"    # I

    .prologue
    const/16 v1, 0x1395

    .line 669
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    if-eq v0, p1, :cond_0

    .line 670
    iput p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomQuickPanelEditMode:I

    .line 671
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 672
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 668
    :cond_0
    return-void
.end method

.method public setQuickPanelItems(Ljava/lang/String;)V
    .locals 2
    .param p1, "items"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x1396

    .line 677
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 678
    :cond_1
    iput-object p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mQuickPanelItems:Ljava/lang/String;

    .line 679
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 680
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 676
    :cond_2
    return-void
.end method

.method public setScreenOffOnStatusBarDoubleTapState(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 685
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    .line 684
    return-void
.end method

.method public setStatusBarHidden(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .prologue
    const/16 v1, 0x139b

    .line 745
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    if-eq v0, p1, :cond_0

    .line 746
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mIsCustomSdkStatusBarHidden:Z

    .line 747
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 748
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 744
    :cond_0
    return-void
.end method

.method public setStatusBarIconsState(Z)V
    .locals 2
    .param p1, "status"    # Z

    .prologue
    const/16 v1, 0x1399

    .line 701
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarIconsState:Z

    if-eq v0, p1, :cond_0

    .line 702
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarIconsState:Z

    .line 703
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 704
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 700
    :cond_0
    return-void
.end method

.method public setStatusBarNotificationsState(Z)V
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 720
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarNotificationsState:Z

    if-eq v0, p1, :cond_0

    .line 721
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarNotificationsState:Z

    .line 719
    :cond_0
    return-void
.end method

.method public setStatusBarTextInfo(Ljava/lang/String;III)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "style"    # I
    .param p3, "size"    # I
    .param p4, "width"    # I

    .prologue
    const/16 v1, 0x1397

    .line 689
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 691
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarText:Ljava/lang/String;

    .line 692
    iput p2, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextStyle:I

    .line 693
    iput p3, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextSize:I

    .line 694
    iput p4, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextWidth:I

    .line 695
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 696
    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 688
    :cond_2
    return-void

    .line 689
    :cond_3
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextStyle:I

    if-ne v0, p2, :cond_1

    .line 690
    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextSize:I

    if-ne v0, p3, :cond_1

    iget v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mStatusBarTextWidth:I

    if-eq v0, p4, :cond_2

    goto :goto_0
.end method

.method public setUnlockSimOnBootState(Z)V
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 725
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    if-eq v0, p1, :cond_0

    .line 726
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    .line 724
    :cond_0
    return-void
.end method

.method public setUnlockSimPin(Ljava/lang/String;)V
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 730
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 731
    :cond_1
    iput-object p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    .line 729
    :cond_2
    return-void
.end method

.method public setVolumePanelEnabledState(Z)V
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mVolumePanelEnabledState:Z

    if-eq v0, p1, :cond_0

    .line 741
    iput-boolean p1, p0, Lcom/android/keyguard/KnoxStateMonitor$CustomSdkMonitor;->mVolumePanelEnabledState:Z

    .line 739
    :cond_0
    return-void
.end method
