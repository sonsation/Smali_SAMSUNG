.class public Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;
.super Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;
.source "BixbySetupWizardWifiView.java"


# instance fields
.field private mIsIntroComplete:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method private playConnectToWifiAudio()V
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiConnectivityAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const-string/jumbo v0, "2_wifi_2_VZW"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->startScriptPlay(Ljava/lang/String;)V

    .line 69
    :goto_0
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->startListening(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getBixbyHeaderTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b1eeb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBixbyIntroDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b1eea

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getIntroAudioName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string/jumbo v0, "2_wifi_1_VZW"

    return-object v0
.end method

.method protected getSoftKeyButtonVoiceCommands()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const v3, 0x7f1109c7

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v0, "buttonVoiceCommands":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b11b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1109c5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b037f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1109c9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0f22

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b13d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public isIntroComplete()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->mIsIntroComplete:Z

    return v0
.end method

.method public onBackButtonPressed()V
    .locals 4

    .prologue
    .line 102
    invoke-super {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->onMoveToPreviousScreen()V

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mBixbyButtonHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 101
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->onDestroy()V

    .line 44
    return-void
.end method

.method protected onEndIntroAnimation()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->mIsIntroComplete:Z

    .line 61
    invoke-super {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->onEndIntroAnimation()V

    .line 59
    return-void
.end method

.method protected onEndWaveAnimation()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->playConnectToWifiAudio()V

    .line 65
    return-void
.end method

.method public onNextButtonPressed()V
    .locals 4

    .prologue
    .line 107
    invoke-super {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->onMoveToNextScreen()V

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mBixbyButtonHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 106
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->onPause()V

    .line 36
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->onResume()V

    .line 40
    return-void
.end method

.method protected onScriptPlayCompleted()V
    .locals 1

    .prologue
    .line 83
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->startListening(I)V

    .line 82
    return-void
.end method
