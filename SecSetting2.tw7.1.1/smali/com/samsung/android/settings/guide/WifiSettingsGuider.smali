.class public final Lcom/samsung/android/settings/guide/WifiSettingsGuider;
.super Lcom/samsung/android/settings/guide/GuiderBase;
.source "WifiSettingsGuider.java"

# interfaces
.implements Lcom/samsung/android/settings/guide/GuiderLifecycleListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/guide/WifiSettingsGuider$1;,
        Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;,
        Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;
    }
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues:[I

.field public static isWifiGuideOn:Z

.field private static mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;


# instance fields
.field private builderstartDialog:Landroid/app/AlertDialog;

.field private count:I

.field private mActivity:Landroid/app/Activity;

.field private mClosed:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mCreate:Z

.field private mEnableScanMenuItem:Z

.field private mFirstCheck:Z

.field private mFirstStart:Z

.field public mHandler:Landroid/os/Handler;

.field private mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

.field private mMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestorePrevDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

.field private mScreenOnCheck:I

.field private mSecurityDialogRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mStateContainerRestored:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

.field private mStateContainerShowed:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

.field private final mWiFiIntentFilter:Landroid/content/IntentFilter;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1()Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    return-object v0
.end method

.method private static synthetic -getcom-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-com-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-com-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->values()[Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_SUCCESSFULLY:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NO_NETWORK:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->SECURITY:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    sput-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-com-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1

    :catch_7
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sput-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 148
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->isWifiGuideOn:Z

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 173
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 114
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 115
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 116
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerRestored:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 118
    iput-boolean v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    .line 121
    iput-boolean v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mCreate:Z

    .line 122
    iput-boolean v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 125
    iput-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    .line 126
    iput-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    .line 127
    iput-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 129
    iput-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    iput-boolean v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    .line 136
    iput-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    .line 142
    iput-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    .line 145
    iput v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mScreenOnCheck:I

    .line 146
    iput v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->count:I

    .line 147
    iput-boolean v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mFirstCheck:Z

    .line 152
    new-instance v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$1;-><init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHandler:Landroid/os/Handler;

    .line 175
    iput-object p1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    .line 179
    new-instance v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$2;-><init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    .line 188
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.android.settings.guide.DISMISS_HELP_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 195
    const-string/jumbo v1, "wifi"

    .line 194
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 196
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    return-void
.end method

.method private initHelpDialogContent(II)V
    .locals 11
    .param p1, "resID"    # I
    .param p2, "layout"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 647
    iget-object v7, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 664
    .local v1, "bubbleView":Landroid/view/View;
    const v7, 0x7f11001c

    .line 663
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 665
    .local v5, "summary":Landroid/widget/TextView;
    if-nez v5, :cond_0

    .line 667
    const v7, 0x7f110428

    .line 666
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "summary":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 669
    .restart local v5    # "summary":Landroid/widget/TextView;
    :cond_0
    if-eqz v5, :cond_1

    .line 670
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(I)V

    .line 679
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    if-eqz v7, :cond_4

    .line 680
    iget-object v7, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-virtual {v7}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v3

    .line 681
    .local v3, "mode":I
    const-string/jumbo v7, "WifiSettingsGuider"

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

    .line 683
    if-nez v3, :cond_2

    .line 685
    iget-object v7, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v8}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 688
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v4, v7, Landroid/content/res/Configuration;->orientation:I

    .line 689
    .local v4, "orientation":I
    if-ne v4, v10, :cond_2

    .line 690
    iget-object v7, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v7}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 691
    .local v6, "window":Landroid/view/Window;
    const/high16 v7, 0x4000000

    invoke-virtual {v6, v7}, Landroid/view/Window;->clearFlags(I)V

    .line 692
    const/high16 v7, -0x80000000

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 693
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    .end local v3    # "mode":I
    .end local v4    # "orientation":I
    .end local v6    # "window":Landroid/view/Window;
    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v7, v1}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 707
    const v7, 0x7f110017

    .line 706
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 709
    .local v0, "btnClose":Landroid/widget/ImageButton;
    if-eqz v0, :cond_3

    .line 710
    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    .line 711
    new-instance v7, Lcom/samsung/android/settings/guide/WifiSettingsGuider$7;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$7;-><init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 646
    :cond_3
    return-void

    .line 697
    .end local v0    # "btnClose":Landroid/widget/ImageButton;
    :cond_4
    :try_start_1
    const-string/jumbo v7, "WifiSettingsGuider"

    const-string/jumbo v8, "initHelpDialogContent :: mMultiWindowManager is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 699
    :catch_0
    move-exception v2

    .line 700
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v7, "WifiSettingsGuider"

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

    .line 701
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private invalidateHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 8
    .param p1, "type"    # Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .prologue
    .line 570
    const/4 v1, -0x1

    .line 571
    .local v1, "layout":I
    const/4 v2, -0x1

    .line 573
    .local v2, "resID":I
    iget-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v3, :cond_0

    .line 574
    return-void

    .line 577
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setFocus(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 579
    invoke-static {}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-getcom-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 637
    :cond_1
    :goto_0
    :pswitch_0
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->initHelpDialogContent(II)V

    .line 569
    return-void

    .line 585
    :pswitch_1
    const v2, 0x7f0b0eec

    .line 586
    const v1, 0x7f04013e

    .line 587
    goto :goto_0

    .line 589
    :pswitch_2
    const v2, 0x7f0b0eed

    .line 590
    const v1, 0x7f04013e

    .line 591
    goto :goto_0

    .line 593
    :pswitch_3
    const v2, 0x7f0b0eee

    .line 594
    const v1, 0x7f04013e

    .line 595
    goto :goto_0

    .line 597
    :pswitch_4
    const v2, 0x7f0b0eeb

    .line 598
    const v1, 0x7f04013b

    .line 599
    goto :goto_0

    .line 601
    :pswitch_5
    const v2, 0x7f0b0eef

    .line 602
    const v1, 0x7f04013e

    .line 603
    goto :goto_0

    .line 605
    :pswitch_6
    const v2, 0x7f0b0487

    .line 606
    const v1, 0x7f04013a

    .line 611
    :try_start_0
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v3

    if-nez v3, :cond_1

    .line 612
    iget-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 615
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$6;-><init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V

    .line 625
    const-wide/16 v6, 0x96

    .line 615
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "WifiSettingsGuider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NullPointerException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 579
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private setFocus(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .prologue
    .line 1189
    invoke-static {}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-getcom-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1188
    :cond_0
    :goto_0
    return-void

    .line 1191
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 1192
    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1194
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 1195
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 1197
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1198
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 1189
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private setGuidedActionBarClickable(Z)V
    .locals 4
    .param p1, "clickable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 880
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    .line 881
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 883
    .local v0, "ab":Landroid/app/ActionBar;
    :cond_0
    if-eqz v0, :cond_2

    .line 884
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 886
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 887
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eq v3, p1, :cond_1

    .line 888
    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 889
    invoke-virtual {v2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 892
    :cond_1
    if-eqz p1, :cond_2

    .line 893
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 879
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private setScanOptionEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 907
    iput-boolean p1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    .line 909
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    .line 911
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 912
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 906
    :cond_0
    return-void
.end method

.method private showHelpDialog(IILcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V
    .locals 2
    .param p1, "resID"    # I
    .param p2, "layout"    # I
    .param p3, "touchTransparency"    # Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;
    .param p4, "type"    # Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;
    .param p5, "needShowWrongToast"    # Z

    .prologue
    .line 555
    sget-boolean v0, Lcom/android/settings/wifi/WifiDialog;->mIsShow:Z

    if-eqz v0, :cond_0

    .line 556
    return-void

    .line 558
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 559
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 560
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0, p5}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 561
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 563
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->initHelpDialogContent(II)V

    .line 565
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    .line 566
    sput-object p4, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 554
    return-void
.end method


# virtual methods
.method public dismissCompleteDialog()V
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 860
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 855
    :cond_1
    return-void
.end method

.method public dismissHelpDialog()V
    .locals 6

    .prologue
    .line 466
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v3, :cond_1

    .line 467
    iget-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v3}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 468
    .local v1, "bubbleView":Landroid/view/View;
    const v3, 0x7f11042a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 469
    .local v0, "bubble":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_0

    .line 470
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 472
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v3}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 473
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 476
    invoke-static {}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-getcom-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues()[I

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v4}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 493
    :goto_0
    :pswitch_0
    sget-object v3, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sput-object v3, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 494
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    .line 464
    .end local v0    # "bubble":Landroid/widget/FrameLayout;
    .end local v1    # "bubbleView":Landroid/view/View;
    :cond_1
    :goto_1
    return-void

    .line 478
    .restart local v0    # "bubble":Landroid/widget/FrameLayout;
    .restart local v1    # "bubbleView":Landroid/view/View;
    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-static {v4, v3}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 479
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 496
    .end local v0    # "bubble":Landroid/widget/FrameLayout;
    .end local v1    # "bubbleView":Landroid/view/View;
    :catch_0
    move-exception v2

    .line 497
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "WifiSettingsGuider"

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

    goto :goto_1

    .line 482
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "bubble":Landroid/widget/FrameLayout;
    .restart local v1    # "bubbleView":Landroid/view/View;
    :pswitch_2
    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 476
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public dismissHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 3
    .param p1, "type"    # Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .prologue
    const/4 v2, 0x0

    .line 507
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_0

    .line 508
    invoke-static {}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-getcom-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 525
    :goto_0
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sput-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 526
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 506
    :cond_0
    return-void

    .line 510
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 511
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    goto :goto_0

    .line 514
    :sswitch_1
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    goto :goto_0

    .line 508
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic finish()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/samsung/android/settings/guide/GuiderBase;->finish()V

    return-void
.end method

.method protected handleEvent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 725
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "WifiSettingsGuider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleEvent  action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const-string/jumbo v4, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 730
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 731
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v4, :cond_0

    .line 732
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    .line 733
    const-string/jumbo v5, "connectivity"

    .line 732
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 736
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 739
    .local v2, "network":Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 740
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    .line 739
    if-eqz v4, :cond_3

    .line 741
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_3

    .line 742
    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NO_NETWORK:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 723
    .end local v2    # "network":Landroid/net/NetworkInfo;
    :cond_2
    :goto_0
    return-void

    .line 743
    .restart local v2    # "network":Landroid/net/NetworkInfo;
    :cond_3
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-nez v4, :cond_2

    .line 744
    iget-boolean v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    if-nez v4, :cond_2

    .line 745
    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 750
    .end local v2    # "network":Landroid/net/NetworkInfo;
    :cond_4
    const-string/jumbo v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 752
    const-string/jumbo v4, "networkInfo"

    .line 751
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 754
    .local v1, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 755
    iget-boolean v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    if-nez v4, :cond_6

    .line 756
    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 757
    iput-boolean v7, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 783
    :cond_5
    :goto_1
    iput-boolean v7, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    goto :goto_0

    .line 759
    :cond_6
    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_SUCCESSFULLY:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_1

    .line 761
    :cond_7
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_5

    .line 762
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 764
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_5

    .line 765
    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v5, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v4, v5, :cond_8

    .line 766
    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v5, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_SUCCESSFULLY:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v4, v5, :cond_5

    .line 768
    :cond_8
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 769
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 770
    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_1

    .line 771
    :cond_9
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 772
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 774
    .restart local v2    # "network":Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 775
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    .line 774
    if-eqz v4, :cond_5

    .line 776
    :cond_a
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_5

    .line 777
    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NO_NETWORK:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_1

    .line 785
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "network":Landroid/net/NetworkInfo;
    :cond_b
    const-string/jumbo v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 790
    iget v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->count:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_c

    iget v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->count:I

    .line 791
    :cond_c
    iget v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->count:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_d

    .line 792
    iput-boolean v7, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mFirstCheck:Z

    .line 794
    :cond_d
    const-string/jumbo v4, "wifi_state"

    .line 795
    const/4 v5, 0x4

    .line 794
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 797
    .local v3, "state":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Fragment;->isResumed()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-boolean v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mFirstCheck:Z

    if-eqz v4, :cond_f

    .line 798
    if-eq v3, v7, :cond_e

    if-nez v3, :cond_2

    .line 800
    :cond_e
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 801
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissCompleteDialog()V

    .line 802
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 803
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onDestroy()V

    goto/16 :goto_0

    .line 807
    :cond_f
    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_0

    .line 820
    .end local v3    # "state":I
    :cond_10
    const-string/jumbo v4, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 827
    const-string/jumbo v4, "called_dialog"

    invoke-virtual {p1, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_2

    const-string/jumbo v4, "WifiWarningDialog"

    const-string/jumbo v5, "from"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 826
    if-eqz v4, :cond_2

    .line 828
    const-string/jumbo v4, "WifiSettingsGuider"

    const-string/jumbo v5, "Hotspot is ON or Wifi is off"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissCompleteDialog()V

    .line 830
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 831
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onDestroy()V

    goto/16 :goto_0

    .line 833
    :cond_11
    const-string/jumbo v4, "com.android.settings.guide.DISMISS_HELP_DIALOG"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 834
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 300
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 991
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 993
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showCompleteDialog()V

    .line 990
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 338
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_0

    .line 339
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->invalidateHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 337
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 202
    const-string/jumbo v0, "WifiSettingsGuider"

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 207
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mFirstCheck:Z

    .line 208
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    .line 210
    const-string/jumbo v1, "connectivity"

    .line 209
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 213
    :cond_1
    new-instance v0, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    .line 215
    iput-boolean v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    .line 216
    iput-boolean v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mCreate:Z

    .line 200
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 222
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 229
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 230
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 233
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->finish()V

    .line 220
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "WifiSettingsGuider"

    const-string/jumbo v2, "IllegalArgumentException : mReceiver is not registered."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 982
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 1017
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1072
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1073
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_0

    .line 1074
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    .line 1070
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 315
    invoke-static {v5}, Lcom/samsung/android/settings/guide/GuideFragment;->setsIsInGuideMode(Z)V

    .line 316
    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 317
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 319
    .local v0, "isScreenOn":Z
    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 324
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    sget-object v2, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 326
    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerRestored:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 327
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 329
    :cond_1
    if-nez v0, :cond_2

    .line 330
    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mScreenOnCheck:I

    .line 332
    :cond_2
    const-string/jumbo v2, "WifiSettingsGuider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPause :: mScreenOnCheck"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mScreenOnCheck:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sput-boolean v5, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->isWifiGuideOn:Z

    .line 314
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 306
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 308
    .local v0, "scan":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 309
    iget-boolean v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 305
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 244
    const-string/jumbo v0, "WifiSettingsGuider"

    const-string/jumbo v3, "onResume()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-static {v1}, Lcom/samsung/android/settings/guide/GuideFragment;->setsIsInGuideMode(Z)V

    .line 246
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideFragment;->isInGuideMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    sput-boolean v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->isWifiGuideOn:Z

    .line 249
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v3, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v3, :cond_4

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    .line 250
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v3, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    .line 255
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 264
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-nez v0, :cond_2

    .line 268
    iget-boolean v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mScreenOnCheck:I

    if-nez v0, :cond_2

    .line 269
    const-string/jumbo v0, "WifiSettingsGuider"

    const-string/jumbo v1, "onResume :: showHelpDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 271
    iput v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mScreenOnCheck:I

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mCreate:Z

    if-eqz v0, :cond_7

    .line 296
    :cond_3
    :goto_3
    iput-boolean v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mCreate:Z

    .line 243
    return-void

    :cond_4
    move v0, v2

    .line 249
    goto :goto_0

    :cond_5
    move v0, v2

    .line 250
    goto :goto_1

    .line 258
    :cond_6
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v3, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v0, v3, :cond_1

    .line 259
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 260
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 261
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerRestored:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    goto :goto_2

    .line 287
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v1, v0, :cond_3

    .line 288
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v1, v0, :cond_3

    .line 289
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v1, v0, :cond_3

    .line 290
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xb

    if-eq v1, v0, :cond_3

    .line 291
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissCompleteDialog()V

    .line 292
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 293
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onDestroy()V

    goto :goto_3
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 952
    return-void
.end method

.method public showCompleteDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 840
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_0

    .line 841
    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 842
    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 844
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-nez v1, :cond_1

    .line 845
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040142

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 846
    .local v0, "bView":Landroid/view/View;
    new-instance v1, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    .line 847
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 848
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    sget-object v2, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 849
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 850
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 851
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->show()V

    .line 839
    .end local v0    # "bView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public showHelpDialog()V
    .locals 0

    .prologue
    .line 943
    return-void
.end method

.method public showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 6
    .param p1, "type"    # Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .prologue
    const v2, 0x7f04013e

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 350
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne p1, v0, :cond_0

    move v0, v5

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    .line 352
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_1

    .line 353
    return-void

    :cond_0
    move v0, v1

    .line 350
    goto :goto_0

    .line 356
    :cond_1
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 357
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 359
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setFocus(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 360
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 362
    invoke-static {}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-getcom-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 412
    :goto_1
    :pswitch_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    .line 416
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne p1, v0, :cond_2

    move v1, v5

    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    .line 418
    invoke-static {}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-getcom-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 348
    :cond_3
    :goto_2
    :pswitch_1
    return-void

    .line 368
    :pswitch_2
    new-instance v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$3;-><init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    goto :goto_1

    .line 381
    :pswitch_3
    new-instance v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$4;-><init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    goto :goto_1

    .line 394
    :pswitch_4
    new-instance v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$5;-><init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    goto :goto_1

    .line 404
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v0}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    goto :goto_1

    .line 427
    :pswitch_6
    sget-object v3, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    .line 426
    const v1, 0x7f0b0eec

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_2

    .line 431
    :pswitch_7
    sget-object v3, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    .line 430
    const v1, 0x7f0b0eed

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_2

    .line 435
    :pswitch_8
    sget-object v3, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    .line 434
    const v1, 0x7f0b0eee

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_2

    .line 439
    :pswitch_9
    sget-object v3, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    .line 438
    const v1, 0x7f0b0eeb

    const v2, 0x7f04013b

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_2

    .line 443
    :pswitch_a
    sget-object v3, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    .line 442
    const v1, 0x7f0b0eef

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_2

    .line 447
    :pswitch_b
    sget-object v3, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    .line 446
    const v1, 0x7f0b0487

    .line 447
    const v2, 0x7f04013a

    move-object v0, p0

    move-object v4, p1

    .line 446
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    .line 449
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_3

    .line 450
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v0

    if-nez v0, :cond_3

    .line 451
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 452
    const/4 v1, 0x2

    .line 451
    if-ne v0, v1, :cond_3

    .line 454
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/guide/GuideModeHelper;->drawActionPointerForSwitcher(Lcom/samsung/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;)V

    goto/16 :goto_2

    .line 362
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 418
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_1
        :pswitch_7
        :pswitch_9
        :pswitch_1
    .end packed-switch
.end method
