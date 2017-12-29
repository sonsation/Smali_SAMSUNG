.class public Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;
.super Landroid/preference/PreferenceActivity;
.source "BiometricsBackupPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;,
        Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$onKeyBackListener;
    }
.end annotation


# static fields
.field public static isScreenRotated:Z

.field private static mDPM:Landroid/app/admin/DevicePolicyManager;

.field private static mPreviousStage:Ljava/lang/String;


# instance fields
.field private mOnKeyBackListener:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$onKeyBackListener;


# direct methods
.method static synthetic -get0()Landroid/app/admin/DevicePolicyManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->mPreviousStage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Landroid/app/admin/DevicePolicyManager;)Landroid/app/admin/DevicePolicyManager;
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->mPreviousStage:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->isScreenRotated:Z

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static getPasswordQuality()I
    .locals 1

    .prologue
    .line 988
    const/high16 v0, 0x50000

    return v0
.end method

.method public static getShortPasswordLength()I
    .locals 1

    .prologue
    .line 984
    const/4 v0, 0x6

    return v0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 91
    .local v0, "modIntent":Landroid/content/Intent;
    const-string/jumbo v1, ":android:show_fragment"

    const-class v2, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string/jumbo v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 93
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 98
    const-class v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/res/Configuration;

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 121
    const-string/jumbo v0, "BiometricsBackupPassword"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 119
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const-string/jumbo v2, "BiometricsBackupPassword"

    const-string/jumbo v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "previousStage"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->mPreviousStage:Ljava/lang/String;

    .line 108
    const-string/jumbo v2, "BiometricsBackupPassword"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[mPreviousStage] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->setFinishOnTouchOutside(Z)V

    .line 113
    :cond_0
    const v2, 0x7f0b17dd

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 114
    .local v1, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 115
    const-string/jumbo v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    sput-object v2, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 102
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 127
    const-string/jumbo v0, "BiometricsBackupPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onKeyDown : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->mOnKeyBackListener:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$onKeyBackListener;

    invoke-interface {v0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$onKeyBackListener;->onKeyBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    const-string/jumbo v0, "BiometricsBackupPassword"

    const-string/jumbo v1, "onKeyBack() is TRUE"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->setResult(I)V

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->finish()V

    .line 137
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 134
    :cond_1
    return v3
.end method

.method setOnKeyBackListener(Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$onKeyBackListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$onKeyBackListener;

    .prologue
    .line 141
    if-eqz p1, :cond_0

    .line 142
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->mOnKeyBackListener:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$onKeyBackListener;

    .line 140
    :cond_0
    return-void
.end method
