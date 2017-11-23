.class public Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;
.super Landroid/app/Activity;
.source "SetupWizardWifiScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$1;,
        Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;
    }
.end annotation


# instance fields
.field private button_transY:F

.field private handler:Landroid/os/Handler;

.field private intentExtras:Landroid/os/Bundle;

.field private isApCheckDone:Z

.field private isFirstEnterWifiSetupWizard:I

.field private isKmeSupported:Z

.field private isWifiPromptScreen:Z

.field private mAllowBack:Z

.field private mButtonView:Landroid/view/View;

.field private mConnCheckProgressDialog:Landroid/app/ProgressDialog;

.field private mConnectionResult:I

.field private mConnectivityCheckTask:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mFilter:Landroid/content/IntentFilter;

.field final mHandler:Landroid/os/Handler;

.field private mIsFragmentCreated:Z

.field private mIsGoogleFRPLocked:Z

.field private mIsWifiConnected:Z

.field private mNegativeButtonLayout:Landroid/view/View;

.field private mNegativeButtonText:Landroid/widget/TextView;

.field private mPositiveButtonText:Landroid/widget/TextView;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSuccessWifiConNID:I

.field private mTitleText:Landroid/widget/TextView;

.field private mWiFiDeviceImage:Landroid/widget/ImageView;

.field private mWiFiImageEffectContainer:Landroid/view/ViewGroup;

.field private mWiFiImageEffectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiAPId:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiScreenSubText:Landroid/widget/TextView;

.field private mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

.field private mWifiSettingsView:Landroid/view/View;

.field private transX:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->isKmeSupported:Z

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mTitleText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWiFiImageEffectContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWiFiImageEffectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Lcom/android/settings/wifi/WifiSettings;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    return-object v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettingsView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->isWifiPromptScreen:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mButtonView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mConnectivityCheckTask:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsGoogleFRPLocked:Z

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mPositiveButtonText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;IJ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "delay"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->animateWiFiEffect(IJ)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->handleConnectionEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->onNextButtonPressed(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;I)V
    .locals 0
    .param p1, "connResult"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->showAlertDialog(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;JZ)V
    .locals 1
    .param p1, "delay"    # J
    .param p3, "start"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->startWiFiEffect(JZ)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->wifiConnSuccess()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mConnCheckProgressDialog:Landroid/app/ProgressDialog;

    .line 94
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    .line 98
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 99
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    .line 100
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 101
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    .line 103
    iput v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I

    .line 104
    iput v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mSuccessWifiConNID:I

    .line 105
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->isApCheckDone:Z

    .line 106
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->intentExtras:Landroid/os/Bundle;

    .line 107
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mPositiveButtonText:Landroid/widget/TextView;

    .line 108
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonText:Landroid/widget/TextView;

    .line 109
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonLayout:Landroid/view/View;

    .line 114
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    .line 116
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mConnectivityCheckTask:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    .line 118
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsFragmentCreated:Z

    .line 120
    iput v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiAPId:I

    .line 129
    const/high16 v0, 0x42f00000    # 120.0f

    iput v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->transX:F

    .line 130
    const/high16 v0, 0x43600000    # 224.0f

    iput v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->button_transY:F

    .line 132
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->handler:Landroid/os/Handler;

    .line 134
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mTitleText:Landroid/widget/TextView;

    .line 140
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->isWifiPromptScreen:Z

    .line 141
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->isKmeSupported:Z

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mAllowBack:Z

    .line 508
    new-instance v0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$1;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mHandler:Landroid/os/Handler;

    .line 69
    return-void
.end method

.method private animateWiFiEffect(IJ)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "delay"    # J

    .prologue
    .line 407
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWiFiImageEffectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWiFiImageEffectContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/VI/SineInOut33Wifi;

    invoke-direct {v2}, Lcom/samsung/android/settings/wifi/VI/SineInOut33Wifi;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$7;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 417
    return-void

    .line 420
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWiFiImageEffectList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 421
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xe6

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$8;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$8;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 406
    return-void
.end method

.method private getDimension(I)I
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getLayoutVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, "version":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isV2GuiSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    const-string/jumbo v1, "_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->supportsSoftNavigationKeys()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    const-string/jumbo v1, "_back"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleConnectionEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 460
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Handle Connection State: Action ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string/jumbo v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 464
    const-string/jumbo v4, "networkInfo"

    .line 463
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 465
    .local v2, "info":Landroid/net/NetworkInfo;
    const-string/jumbo v4, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "What is the Connection Status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 467
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->getWifiNetworkID(Landroid/net/wifi/WifiManager;)I

    move-result v1

    .line 468
    .local v1, "currentAPId":I
    iget v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiAPId:I

    if-eq v4, v1, :cond_1

    .line 469
    iput v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiAPId:I

    .line 470
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->showConnProgressDialog()V

    .line 471
    new-instance v4, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;)V

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mConnectivityCheckTask:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    .line 472
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mConnectivityCheckTask:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    new-array v5, v7, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 459
    .end local v1    # "currentAPId":I
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 474
    .restart local v1    # "currentAPId":I
    .restart local v2    # "info":Landroid/net/NetworkInfo;
    :cond_1
    const-string/jumbo v4, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v5, " This AP is already passed Netowrk Connection and it has valid internet connection"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 477
    .end local v1    # "currentAPId":I
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mPositiveButtonText:Landroid/widget/TextView;

    const v5, 0x7f0b1855

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    iput-boolean v7, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    .line 479
    iput v9, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mSuccessWifiConNID:I

    .line 480
    iput v9, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiAPId:I

    goto :goto_0

    .line 482
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_3
    const-string/jumbo v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 483
    const-string/jumbo v4, "wifi_state"

    invoke-virtual {p2, v4, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 485
    .local v3, "wifiState":I
    const-string/jumbo v4, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " Wifi State : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    if-ne v3, v10, :cond_4

    .line 487
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 488
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonLayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setClickable(Z)V

    .line 489
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonLayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 490
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    const v5, 0x7f0b0f89

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 491
    :cond_4
    if-ne v3, v8, :cond_0

    .line 492
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonText:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonLayout:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setClickable(Z)V

    .line 494
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonLayout:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 495
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    const v5, 0x7f0b0f8a

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 497
    .end local v3    # "wifiState":I
    :cond_5
    const-string/jumbo v4, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 498
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 499
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    const v5, 0x7f0b0f89

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 501
    :cond_6
    const-string/jumbo v4, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v5, "No Networks Found"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    const v5, 0x7f0b0f88

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    invoke-direct {p0, v10}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->showAlertDialog(I)V

    goto/16 :goto_0
.end method

.method private handleUiLayoutForSoftKeys(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 811
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 813
    .local v0, "systemUiVisibility":I
    or-int/lit8 v1, v0, 0x2

    or-int/lit16 v0, v1, 0x800

    .line 817
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 810
    return-void
.end method

.method private initializeView()V
    .locals 9

    .prologue
    const v8, 0x7f11086e

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 271
    const-string/jumbo v3, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v4, "initializeView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    move-object v0, p0

    .line 273
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->setCustomTitle(Landroid/app/Activity;)V

    .line 274
    const v3, 0x7f11086c

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    .line 275
    const v3, 0x7f110870

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mPositiveButtonText:Landroid/widget/TextView;

    .line 276
    const v3, 0x7f11086f

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonText:Landroid/widget/TextView;

    .line 277
    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonLayout:Landroid/view/View;

    .line 278
    const v3, 0x7f11086b

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettingsView:Landroid/view/View;

    .line 279
    const v3, 0x7f11086d

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mButtonView:Landroid/view/View;

    .line 280
    const v3, 0x7f11086a

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mTitleText:Landroid/widget/TextView;

    .line 281
    const v3, 0x7f11072e

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWiFiDeviceImage:Landroid/widget/ImageView;

    .line 282
    const v3, 0x7f11072f

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWiFiImageEffectContainer:Landroid/view/ViewGroup;

    .line 283
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWiFiImageEffectList:Ljava/util/ArrayList;

    .line 285
    const-string/jumbo v3, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isFirstEnterWifiSetupWizard : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->isFirstEnterWifiSetupWizard:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->isFirstEnterWifiSetupWizard:I

    if-ne v3, v7, :cond_0

    .line 287
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 288
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "first_enter_wifisetupwizard"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 294
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 295
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonText:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonLayout:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setClickable(Z)V

    .line 297
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonLayout:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 298
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    const v4, 0x7f0b0f8a

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    :cond_1
    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 302
    .local v1, "negativeButtonLayout":Landroid/view/View;
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isV2GuiSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 303
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonText:Landroid/widget/TextView;

    .line 305
    :cond_2
    new-instance v3, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$3;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    const v3, 0x7f110871

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 312
    .local v2, "positiveButtonLayout":Landroid/view/View;
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isV2GuiSupported()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 313
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mPositiveButtonText:Landroid/widget/TextView;

    .line 315
    :cond_3
    new-instance v3, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$4;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWiFiImageEffectList:Ljava/util/ArrayList;

    const v3, 0x7f110730

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWiFiImageEffectList:Ljava/util/ArrayList;

    const v3, 0x7f110731

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWiFiImageEffectList:Ljava/util/ArrayList;

    const v3, 0x7f110732

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWiFiImageEffectList:Ljava/util/ArrayList;

    const v3, 0x7f110733

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->resetAnimation()V

    .line 270
    return-void
.end method

.method private static isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 766
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 767
    const-string/jumbo v3, "device_provisioned"

    .line 768
    const/4 v4, 0x0

    .line 766
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 769
    .local v0, "flag":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    .line 770
    .local v1, "isProvisioned":Z
    :goto_0
    const-string/jumbo v2, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " isDeviceProvisioned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    return v1

    .line 769
    .end local v1    # "isProvisioned":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "isProvisioned":Z
    goto :goto_0
.end method

.method private onNextButtonPressed(I)V
    .locals 3
    .param p1, "resultCode"    # I

    .prologue
    .line 352
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 353
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "is_wifi_connected"

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 354
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->setResult(ILandroid/content/Intent;)V

    .line 355
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->finish()V

    .line 351
    return-void
.end method

.method private static readGoogleFRPFlag(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 777
    const/4 v3, 0x0

    .line 778
    .local v3, "value":Z
    new-instance v2, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v2, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    .line 779
    .local v2, "rsm":Lcom/samsung/android/service/reactive/ReactiveServiceManager;
    invoke-virtual {v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 782
    const-string/jumbo v4, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v5, "readGoogleFRPFlag : service is not Connected"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    return v8

    .line 786
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v1

    .line 787
    .local v1, "result":I
    const-string/jumbo v4, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readGoogleFRPFlag : getServiceSupport is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    if-eq v1, v7, :cond_1

    .line 789
    const-string/jumbo v4, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v5, "readGoogleFRPFlag : feature is not supported"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    return v8

    .line 793
    :cond_1
    invoke-virtual {v2, v7}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v0

    .line 794
    .local v0, "flagResult":I
    const-string/jumbo v4, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readGoogleFRPFlag getFlag result : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    if-ne v0, v7, :cond_3

    .line 796
    :cond_2
    const/4 v3, 0x1

    .line 801
    :cond_3
    const-string/jumbo v4, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readGoogleFRPFlag : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    return v3
.end method

.method private resetAnimation()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 359
    const-string/jumbo v2, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v3, "resetAnimation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 361
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettingsView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 363
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mButtonView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 364
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mButtonView:Landroid/view/View;

    iget v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->button_transY:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 366
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettingsView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 367
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$5;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 385
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->shouldAnimateWifiImage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 386
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWiFiImageEffectList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 387
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWiFiImageEffectList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 390
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWiFiDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 391
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWiFiDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x14a

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x294

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/wifi/VI/SineInOut33Wifi;

    invoke-direct {v3}, Lcom/samsung/android/settings/wifi/VI/SineInOut33Wifi;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$6;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$6;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 358
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private setMargins(IIIILandroid/widget/LinearLayout;)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "params"    # Landroid/widget/LinearLayout;

    .prologue
    .line 756
    invoke-virtual {p5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 755
    return-void
.end method

.method private showAlertDialog(I)V
    .locals 7
    .param p1, "connResult"    # I

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0b163c

    const/4 v4, 0x0

    .line 568
    const-string/jumbo v1, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " Show the Alert Dialog for the connection Result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 571
    iput-object v6, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    .line 573
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 574
    .local v0, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 673
    :goto_0
    :pswitch_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    .line 674
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 675
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 676
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 677
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 678
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 567
    :cond_1
    return-void

    .line 576
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->forgetNetWork(Landroid/net/wifi/WifiManager;)V

    .line 577
    const v1, 0x7f0b0f8b

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 578
    const v1, 0x7f0b0f8c

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 579
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 580
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$10;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$10;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 588
    :pswitch_2
    const v1, 0x7f0b0f8d

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 589
    const v1, 0x7f0b0f8e

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 590
    const v1, 0x7f0b0f8f

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$11;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$11;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 615
    const v1, 0x7f0b1202

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$12;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$12;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 622
    new-instance v1, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$13;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$13;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 631
    :pswitch_3
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 632
    const v1, 0x7f0b0d13

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 633
    const v1, 0x7f0b1046

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$14;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$14;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 642
    :pswitch_4
    const v1, 0x7f0b0f90

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 643
    const v1, 0x7f0b0f91

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 644
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 645
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$15;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$15;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 653
    :pswitch_5
    const v1, 0x7f0b0f94

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 654
    const v1, 0x7f0b0f93

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 655
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 656
    const v1, 0x7f0b13a6

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$16;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$16;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 664
    const v1, 0x7f0b0f95

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$17;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$17;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 574
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private showConnProgressDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 540
    const-string/jumbo v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v1, " Show the Connection Check Progress Dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 543
    iput-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 547
    iput-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    .line 549
    :cond_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 550
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0b0f92

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 551
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 552
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 553
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 554
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$9;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 564
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 539
    return-void
.end method

.method private startWiFiEffect(JZ)V
    .locals 3
    .param p1, "delay"    # J
    .param p3, "start"    # Z

    .prologue
    const/4 v2, 0x0

    .line 401
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWiFiImageEffectContainer:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 402
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWiFiImageEffectContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 403
    if-eqz p3, :cond_0

    const-wide/16 p1, 0x0

    .end local p1    # "delay":J
    :cond_0
    invoke-direct {p0, v2, p1, p2}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->animateWiFiEffect(IJ)V

    .line 400
    return-void
.end method

.method private updateLayoutMarginOnOrienationChange()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 750
    const v0, 0x7f11086b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 751
    .local v5, "wifiFragmentlayout":Landroid/widget/LinearLayout;
    const v0, 0x7f0a06fb

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getDimension(I)I

    move-result v1

    .line 752
    const v0, 0x7f0a06fc

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getDimension(I)I

    move-result v3

    move-object v0, p0

    move v4, v2

    .line 751
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->setMargins(IIIILandroid/widget/LinearLayout;)V

    .line 749
    return-void
.end method

.method private wifiConnSuccess()V
    .locals 2

    .prologue
    .line 727
    const-string/jumbo v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v1, " WiFi Connection Success "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    .line 729
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mPositiveButtonText:Landroid/widget/TextView;

    const v1, 0x7f0b11ed

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->getWifiNetworkID(Landroid/net/wifi/WifiManager;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mSuccessWifiConNID:I

    .line 731
    iget v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mSuccessWifiConNID:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiAPId:I

    .line 726
    return-void
.end method


# virtual methods
.method public isSCamera()Z
    .locals 2

    .prologue
    .line 710
    const-string/jumbo v0, "gd1ltevzw"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    const/4 v0, 0x1

    return v0

    .line 713
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 736
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 737
    const-string/jumbo v1, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v2, "onActivityResult Called !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_1

    if-ne p2, v3, :cond_1

    .line 739
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->wifiConnSuccess()V

    .line 740
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 741
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "is_wifi_connected"

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 742
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->setResult(ILandroid/content/Intent;)V

    .line 743
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->finish()V

    .line 735
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 744
    :cond_1
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 745
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->onNextButtonPressed(I)V

    goto :goto_0
.end method

.method public onBackArrowPressed(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 807
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->onBackPressed()V

    .line 806
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 685
    const-string/jumbo v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v1, " onBackPressed "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mAllowBack:Z

    if-nez v0, :cond_0

    .line 688
    return-void

    .line 691
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->setResult(I)V

    .line 692
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->finish()V

    .line 684
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 718
    const-string/jumbo v0, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged() ===>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 720
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 721
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 722
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->updateLayoutMarginOnOrienationChange()V

    .line 717
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 199
    const-string/jumbo v1, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v2, "OnCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 202
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isV2GuiSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    const v1, 0x7f0f0244

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->setTheme(I)V

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->intentExtras:Landroid/os/Bundle;

    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "wifiPrompt"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "wifiPrompt"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->isWifiPromptScreen:Z

    .line 214
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "isKmeSupported"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "isKmeSupported"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->isKmeSupported:Z

    .line 218
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "allowBack"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 219
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "allowBack"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mAllowBack:Z

    .line 223
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->isSCamera()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 226
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "first_enter_wifisetupwizard"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->isFirstEnterWifiSetupWizard:I

    .line 228
    iput-object p0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mContext:Landroid/content/Context;

    .line 230
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wifi_vzw_setupwizard"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getLayoutVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "layout"

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 231
    .local v0, "resourceId":I
    if-nez v0, :cond_5

    .line 233
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "wifi_vzw_setupwizard"

    const-string/jumbo v3, "layout"

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_5
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->setContentView(I)V

    .line 237
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->readGoogleFRPFlag(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsGoogleFRPLocked:Z

    .line 239
    const-string/jumbo v1, "persist.sys.vzw_wifi_running"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 241
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->initializeView()V

    .line 242
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mFilter:Landroid/content/IntentFilter;

    .line 243
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    new-instance v1, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$2;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 197
    return-void

    .line 224
    .end local v0    # "resourceId":I
    :cond_6
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->setRequestedOrientation(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 697
    const-string/jumbo v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 700
    iput-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 704
    iput-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    .line 706
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 696
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 431
    const-string/jumbo v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v1, " OnPause Called ..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 433
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 430
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 438
    const-string/jumbo v2, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v3, " OnResume Called ..."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->supportsSoftNavigationKeys()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 441
    invoke-direct {p0, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->handleUiLayoutForSoftKeys(Landroid/app/Activity;)V

    .line 444
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsFragmentCreated:Z

    if-nez v2, :cond_1

    .line 445
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 446
    .local v0, "frame":Landroid/widget/FrameLayout;
    const v2, 0x7f110815

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 447
    new-instance v2, Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {v2}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    .line 449
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 450
    .local v1, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 451
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 452
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsFragmentCreated:Z

    .line 455
    .end local v0    # "frame":Landroid/widget/FrameLayout;
    .end local v1    # "ft":Landroid/app/FragmentTransaction;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 456
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 437
    return-void
.end method
