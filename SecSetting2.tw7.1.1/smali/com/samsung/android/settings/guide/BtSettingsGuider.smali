.class final Lcom/samsung/android/settings/guide/BtSettingsGuider;
.super Lcom/samsung/android/settings/guide/GuiderBase;
.source "BtSettingsGuider.java"

# interfaces
.implements Lcom/samsung/android/settings/guide/GuiderLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/guide/BtSettingsGuider$1;,
        Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;,
        Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;,
        Lcom/samsung/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;
    }
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-settings-guide-BtSettingsGuider$BluetoothBroadcastActionsSwitchesValues:[I

.field private static final synthetic -com-samsung-android-settings-guide-BtSettingsGuider$GuideStatesSwitchesValues:[I

.field private static isFinished:Z

.field private static mCreate:Z


# instance fields
.field private mBTEnabled:Z

.field private mBTReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mInitialBondedCount:I

.field private mMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

.field private mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

.field private mShowedLayout:I

.field private mStateContainerShowed:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

.field private onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/guide/BtSettingsGuider;)Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/guide/BtSettingsGuider;)Lcom/samsung/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    return-object v0
.end method

.method private static synthetic -getcom-samsung-android-settings-guide-BtSettingsGuider$BluetoothBroadcastActionsSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-com-samsung-android-settings-guide-BtSettingsGuider$BluetoothBroadcastActionsSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-com-samsung-android-settings-guide-BtSettingsGuider$BluetoothBroadcastActionsSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->values()[Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->BOND_STATE_CHANGED:Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->DISCOVERY_FINISHED:Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->DISCOVERY_STARTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->STATE_CHANGED:Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-com-samsung-android-settings-guide-BtSettingsGuider$BluetoothBroadcastActionsSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-samsung-android-settings-guide-BtSettingsGuider$GuideStatesSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-com-samsung-android-settings-guide-BtSettingsGuider$GuideStatesSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-com-samsung-android-settings-guide-BtSettingsGuider$GuideStatesSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->values()[Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->FOUND:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NOT_FOUND:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->SCAN:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->SCANNING:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-com-samsung-android-settings-guide-BtSettingsGuider$GuideStatesSwitchesValues:[I

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

.method static synthetic -wrap0(Lcom/samsung/android/settings/guide/BtSettingsGuider;Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V
    .locals 0
    .param p1, "action"    # Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onReceive(Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 141
    sput-boolean v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mCreate:Z

    .line 145
    sput-boolean v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->isFinished:Z

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 155
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 130
    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 131
    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 135
    iput-object v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    .line 137
    iput-object v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 138
    iput-boolean v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 143
    iput v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    .line 697
    new-instance v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider$1;-><init>(Lcom/samsung/android/settings/guide/BtSettingsGuider;)V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    invoke-static {v1, p1}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListFocusEnabled(ZLandroid/app/Activity;)V

    .line 157
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 159
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    .line 160
    sget-object v2, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->sFilter:Landroid/content/IntentFilter;

    .line 159
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    return-void
.end method

.method private handleDialogChange()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListFocusEnabled(ZLandroid/app/Activity;)V

    .line 410
    :cond_0
    return-void
.end method

.method private initHelpDialogContent(I)V
    .locals 3
    .param p1, "resID"    # I

    .prologue
    .line 570
    iget-object v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v2}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 573
    .local v0, "bubbleView":Landroid/view/View;
    const v2, 0x7f11001c

    .line 572
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 574
    .local v1, "summary":Landroid/widget/TextView;
    if-nez v1, :cond_0

    .line 576
    const v2, 0x7f110428

    .line 575
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "summary":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 578
    .restart local v1    # "summary":Landroid/widget/TextView;
    :cond_0
    if-eqz v1, :cond_1

    .line 579
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 569
    :cond_1
    return-void
.end method

.method private initHelpDialogContent(II)V
    .locals 11
    .param p1, "resID"    # I
    .param p2, "layout"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 509
    const-string/jumbo v7, "BtSettingsGuider"

    const-string/jumbo v8, "initHelpDialogContent :: "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v7, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 515
    .local v1, "bubbleView":Landroid/view/View;
    const v7, 0x7f11001c

    .line 514
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 516
    .local v5, "summary":Landroid/widget/TextView;
    if-nez v5, :cond_0

    .line 518
    const v7, 0x7f110428

    .line 517
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "summary":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 520
    .restart local v5    # "summary":Landroid/widget/TextView;
    :cond_0
    if-eqz v5, :cond_1

    .line 521
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(I)V

    .line 525
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    if-eqz v7, :cond_4

    .line 526
    iget-object v7, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-virtual {v7}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v3

    .line 527
    .local v3, "mode":I
    const-string/jumbo v7, "BtSettingsGuider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "initHelpDialogContent :: multi window mode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    if-nez v3, :cond_2

    .line 531
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v8}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 534
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v4, v7, Landroid/content/res/Configuration;->orientation:I

    .line 535
    .local v4, "orientation":I
    if-ne v4, v10, :cond_2

    .line 536
    iget-object v7, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v7}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 537
    .local v6, "window":Landroid/view/Window;
    const/high16 v7, 0x4000000

    invoke-virtual {v6, v7}, Landroid/view/Window;->clearFlags(I)V

    .line 538
    const/high16 v7, -0x80000000

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 539
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    .end local v3    # "mode":I
    .end local v4    # "orientation":I
    .end local v6    # "window":Landroid/view/Window;
    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v7, v1}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 553
    const v7, 0x7f110017

    .line 552
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 555
    .local v0, "btnClose":Landroid/widget/ImageButton;
    if-eqz v0, :cond_3

    .line 556
    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    .line 557
    new-instance v7, Lcom/samsung/android/settings/guide/BtSettingsGuider$3;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider$3;-><init>(Lcom/samsung/android/settings/guide/BtSettingsGuider;)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    :cond_3
    return-void

    .line 543
    .end local v0    # "btnClose":Landroid/widget/ImageButton;
    :cond_4
    :try_start_1
    const-string/jumbo v7, "BtSettingsGuider"

    const-string/jumbo v8, "initHelpDialogContent :: mMultiWindowManager is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 545
    :catch_0
    move-exception v2

    .line 546
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v7, "BtSettingsGuider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "IllegalArgumentException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private invalidateHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .locals 6
    .param p1, "type"    # Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    .prologue
    .line 448
    const/4 v1, -0x1

    .line 450
    .local v1, "resID":I
    iget-object v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v2, :cond_0

    .line 451
    return-void

    .line 454
    :cond_0
    const v0, 0x7f040133

    .line 456
    .local v0, "layout":I
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->setFocus(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 458
    invoke-static {}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-getcom-samsung-android-settings-guide-BtSettingsGuider$GuideStatesSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 505
    :cond_1
    :goto_0
    :pswitch_0
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->initHelpDialogContent(II)V

    .line 446
    return-void

    .line 460
    :pswitch_1
    const v1, 0x7f0b047d

    .line 461
    goto :goto_0

    .line 464
    :pswitch_2
    const v1, 0x7f0b047e

    .line 465
    goto :goto_0

    .line 467
    :pswitch_3
    const v1, 0x7f0b047f

    .line 468
    goto :goto_0

    .line 470
    :pswitch_4
    const v1, 0x7f0b0487

    .line 471
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 472
    const v0, 0x7f04012f

    .line 479
    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 480
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 483
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/samsung/android/settings/guide/BtSettingsGuider$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider$2;-><init>(Lcom/samsung/android/settings/guide/BtSettingsGuider;)V

    .line 493
    const-wide/16 v4, 0x96

    .line 483
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 474
    :cond_2
    const v0, 0x7f04012e

    goto :goto_1

    .line 497
    :pswitch_5
    const v1, 0x7f0b047e

    .line 498
    const v0, 0x7f040133

    .line 499
    goto :goto_0

    .line 458
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private onBluetoothStateChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 760
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_1

    .line 761
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 764
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 765
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 766
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 767
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 768
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 769
    sput-boolean v4, Lcom/samsung/android/settings/guide/BtSettingsGuider;->isFinished:Z

    .line 770
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onDestroy()V

    .line 759
    .end local v0    # "fragment":Landroid/app/Fragment;
    :cond_1
    :goto_0
    return-void

    .line 772
    .restart local v0    # "fragment":Landroid/app/Fragment;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    .line 773
    iget v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 774
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    goto :goto_0

    .line 776
    :cond_3
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    goto :goto_0
.end method

.method private onDeviceBondStateChanged(II)V
    .locals 5
    .param p1, "bondState"    # I
    .param p2, "prevBondState"    # I

    .prologue
    const/16 v4, 0xc

    const/4 v3, 0x0

    .line 789
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 790
    .local v1, "fragment":Landroid/app/Fragment;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Fragment;->isResumed()Z

    move-result v2

    if-nez v2, :cond_0

    if-ne p1, v4, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 792
    .local v0, "bShowDialog":Z
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 788
    :cond_1
    :goto_1
    return-void

    .line 790
    .end local v0    # "bShowDialog":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "bShowDialog":Z
    goto :goto_0

    .line 794
    :pswitch_0
    if-eqz v0, :cond_3

    .line 795
    sget-object v2, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 797
    :cond_3
    iget v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    goto :goto_1

    .line 801
    :pswitch_1
    if-ne p2, v4, :cond_1

    .line 803
    iget v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    if-lez v2, :cond_5

    .line 804
    iget v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    .line 806
    if-nez v0, :cond_4

    .line 808
    sget-object v2, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 813
    :cond_4
    :goto_2
    if-eqz v0, :cond_1

    .line 814
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    goto :goto_1

    .line 811
    :cond_5
    iput v3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    goto :goto_2

    .line 820
    :pswitch_2
    if-eqz v0, :cond_1

    .line 821
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    goto :goto_1

    .line 792
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private onReceive(Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V
    .locals 3
    .param p1, "action"    # Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v2, -0x80000000

    .line 715
    invoke-static {}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-getcom-samsung-android-settings-guide-BtSettingsGuider$BluetoothBroadcastActionsSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 714
    :goto_0
    return-void

    .line 717
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onBluetoothStateChanged()V

    goto :goto_0

    .line 721
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onScanningStateChanged(Z)V

    goto :goto_0

    .line 725
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onScanningStateChanged(Z)V

    goto :goto_0

    .line 729
    :pswitch_3
    const-string/jumbo v0, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 731
    const-string/jumbo v1, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 729
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onDeviceBondStateChanged(II)V

    goto :goto_0

    .line 715
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onScanningStateChanged(Z)V
    .locals 2
    .param p1, "started"    # Z

    .prologue
    .line 743
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 744
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 745
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    .line 748
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 751
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    .line 742
    :cond_1
    return-void
.end method

.method private setFocus(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .locals 5
    .param p1, "state"    # Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    .prologue
    .line 930
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 932
    .local v1, "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-getcom-samsung-android-settings-guide-BtSettingsGuider$GuideStatesSwitchesValues()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 929
    .end local v1    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 937
    .restart local v1    # "activity":Landroid/app/Activity;
    :pswitch_1
    if-eqz v1, :cond_0

    .line 938
    instance-of v3, v1, Landroid/app/ListActivity;

    if-eqz v3, :cond_1

    .line 939
    check-cast v1, Landroid/app/ListActivity;

    .end local v1    # "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->requestFocus()Z

    goto :goto_0

    .line 940
    .restart local v1    # "activity":Landroid/app/Activity;
    :cond_1
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 941
    const v3, 0x7f1105a0

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 947
    :pswitch_2
    if-eqz v1, :cond_0

    .line 948
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 950
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 951
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 953
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 954
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 932
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .locals 3
    .param p1, "resID"    # I
    .param p2, "layout"    # I
    .param p3, "type"    # Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    .prologue
    .line 373
    const/4 v0, 0x0

    .line 375
    .local v0, "created":Z
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v1, :cond_0

    .line 376
    new-instance v1, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 377
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 378
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 379
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 380
    const/4 v0, 0x1

    .line 388
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v2, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 390
    invoke-direct {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->handleDialogChange()V

    .line 392
    iget v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    if-eq v1, p2, :cond_2

    .line 393
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->initHelpDialogContent(II)V

    .line 398
    :goto_0
    if-eqz v0, :cond_1

    .line 399
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    .line 402
    :cond_1
    iput-object p3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 403
    iput p2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 372
    return-void

    .line 395
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->initHelpDialogContent(I)V

    goto :goto_0
.end method


# virtual methods
.method protected changeHelpDialogState(Z)V
    .locals 3
    .param p1, "isScanning"    # Z

    .prologue
    .line 273
    iget-boolean v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    if-eqz v1, :cond_1

    .line 274
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 275
    :cond_0
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->SCANNING:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 272
    :cond_1
    :goto_0
    return-void

    .line 277
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getCachedDevicesNumber(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_3

    .line 278
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NOT_FOUND:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 279
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    iget-object v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 280
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 282
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 284
    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getCachedDevicesNumber(Landroid/content/Context;)I

    move-result v0

    .line 289
    .local v0, "cachedDevices":I
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothSettings;->isDeviceProfileShown()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 290
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    goto :goto_0

    .line 293
    :cond_5
    iget v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    if-le v0, v1, :cond_6

    .line 294
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->FOUND:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 296
    :cond_6
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->SCAN:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0
.end method

.method public dismissHelpDialog()V
    .locals 6

    .prologue
    .line 426
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v3, :cond_1

    .line 427
    iget-object v3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v3}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 428
    .local v1, "bubbleView":Landroid/view/View;
    const v3, 0x7f11042a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 429
    .local v0, "bubble":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_0

    .line 430
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 432
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v3}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 433
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 435
    invoke-direct {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->handleDialogChange()V

    .line 437
    sget-object v3, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 438
    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 439
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    .end local v0    # "bubble":Landroid/widget/FrameLayout;
    .end local v1    # "bubbleView":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 441
    :catch_0
    move-exception v2

    .line 442
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "BtSettingsGuider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IllegalArgumentException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 177
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_0

    .line 419
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->invalidateHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 417
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    .line 168
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->isFinished:Z

    .line 169
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mCreate:Z

    .line 170
    const-string/jumbo v0, "BtSettingsGuider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate is called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/settings/guide/BtSettingsGuider;->isFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    new-instance v0, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    .line 164
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 257
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 259
    iput-object v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->finish()V

    .line 251
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 832
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/settings/guide/GuideFragment;->setsIsInGuideMode(Z)V

    .line 244
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 246
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    .line 240
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 664
    :try_start_0
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 665
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 666
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v2, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v1, v2, :cond_0

    .line 669
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/guide/BtSettingsGuider$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider$4;-><init>(Lcom/samsung/android/settings/guide/BtSettingsGuider;)V

    .line 678
    const-wide/16 v4, 0x96

    .line 669
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 680
    :catch_0
    move-exception v0

    .line 681
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "BtSettingsGuider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NullPointerException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 183
    invoke-static {v3}, Lcom/samsung/android/settings/guide/GuideFragment;->setsIsInGuideMode(Z)V

    .line 184
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 189
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mCreate:Z

    if-eqz v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    const-string/jumbo v0, "BtSettingsGuider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResume is called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/settings/guide/BtSettingsGuider;->isFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-boolean v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->isFinished:Z

    if-eqz v0, :cond_2

    .line 199
    return-void

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 192
    sput-boolean v3, Lcom/samsung/android/settings/guide/BtSettingsGuider;->isFinished:Z

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onDestroy()V

    goto :goto_0

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 204
    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 228
    :cond_3
    :goto_1
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->setGuidedActionBarClickable(Z)V

    .line 231
    sput-boolean v4, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mCreate:Z

    .line 182
    return-void

    .line 205
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->SCAN:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_5

    .line 206
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    .line 207
    const-string/jumbo v0, "BtSettingsGuider"

    const-string/jumbo v1, "changeHelpDialogState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothSettings;->isDeviceProfileShown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    goto :goto_1

    .line 217
    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_3

    .line 218
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_6

    .line 219
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 223
    :goto_2
    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    goto :goto_1

    .line 221
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_2
.end method

.method protected setGuidedActionBarClickable(Z)V
    .locals 5
    .param p1, "clickable"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 592
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 593
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 595
    .local v0, "ab":Landroid/app/ActionBar;
    :cond_0
    if-eqz v0, :cond_2

    .line 597
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 599
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 600
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eq v3, p1, :cond_1

    .line 602
    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 603
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 604
    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 609
    :cond_1
    if-eqz p1, :cond_2

    .line 610
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 590
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public showHelpDialog()V
    .locals 0

    .prologue
    .line 692
    return-void
.end method

.method public showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .locals 6
    .param p1, "type"    # Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    .prologue
    const v5, 0x7f0b0487

    const/4 v0, 0x1

    const/4 v2, 0x0

    const v4, 0x7f0b047e

    const v3, 0x7f040133

    .line 306
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->setFocus(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 307
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v1, p1, :cond_0

    .line 308
    return-void

    .line 311
    :cond_0
    iput-object v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    .line 313
    invoke-static {}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-getcom-samsung-android-settings-guide-BtSettingsGuider$GuideStatesSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 364
    :cond_1
    :goto_0
    :pswitch_0
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne p1, v1, :cond_3

    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->setGuidedActionBarClickable(Z)V

    .line 305
    return-void

    .line 315
    :pswitch_1
    const v1, 0x7f0b047d

    invoke-direct {p0, v1, v3, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 318
    :pswitch_2
    invoke-direct {p0, v4, v3, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 327
    :pswitch_3
    const v1, 0x7f0b047f

    invoke-direct {p0, v1, v3, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 331
    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 332
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 333
    const v1, 0x7f04012f

    invoke-direct {p0, v5, v1, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 338
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_1

    .line 339
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 340
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 341
    const/4 v2, 0x2

    .line 340
    if-ne v1, v2, :cond_1

    .line 343
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/guide/GuideModeHelper;->drawActionPointerForSwitcher(Lcom/samsung/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;)V

    goto :goto_0

    .line 335
    :cond_2
    const v1, 0x7f04012e

    invoke-direct {p0, v5, v1, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_2

    .line 348
    :pswitch_5
    invoke-direct {p0, v4, v3, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 353
    :pswitch_6
    invoke-direct {p0, v4, v3, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 364
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method
