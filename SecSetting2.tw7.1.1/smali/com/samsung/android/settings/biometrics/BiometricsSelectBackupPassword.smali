.class public Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;
.super Landroid/app/Activity;
.source "BiometricsSelectBackupPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBackupPasswordButton:Landroid/widget/Button;

.field private mIsButtonClicked:Z

.field private mSamsungAccountButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->mIsButtonClicked:Z

    .line 16
    return-void
.end method

.method private launchSamsungAccount()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 125
    const-string/jumbo v2, "BiometricsSelectBackupPassword"

    const-string/jumbo v3, "launchSamsungAccount"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "client_id"

    const-string/jumbo v3, "s5d189ajvs"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string/jumbo v2, "client_secret"

    const-string/jumbo v3, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string/jumbo v2, "Is_From_SA_Verify"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    const/16 v2, 0x3ea

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->startActivityForResult(Landroid/content/Intent;I)V

    .line 142
    :goto_0
    return v4

    .line 134
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "packageName":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "mypackage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string/jumbo v2, "OSP_VER"

    const-string/jumbo v3, "OSP_02"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string/jumbo v2, "MODE"

    const-string/jumbo v3, "ADD_ACCOUNT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string/jumbo v2, "Is_From_SA_Verify"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    const/16 v2, 0x3e9

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 73
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 74
    const-string/jumbo v0, "BiometricsSelectBackupPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->setResult(I)V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->mIsButtonClicked:Z

    .line 79
    packed-switch p1, :pswitch_data_0

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->finish()V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 81
    :pswitch_0
    if-ne p2, v3, :cond_0

    .line 85
    const-string/jumbo v0, "BiometricsSelectBackupPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "REQUEST_BACKUP_PASWORD_CREATE : Backup type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->getBiometricsBackupTypeDB(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->finish()V

    goto :goto_0

    .line 91
    :pswitch_1
    if-ne p2, v3, :cond_0

    .line 92
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->setBiometricsBackupTypeDB(Landroid/content/Context;I)Z

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->finish()V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 106
    :pswitch_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->mIsButtonClicked:Z

    if-nez v1, :cond_0

    .line 107
    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->mIsButtonClicked:Z

    .line 108
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->launchSamsungAccount()Z

    goto :goto_0

    .line 112
    :pswitch_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->mIsButtonClicked:Z

    if-nez v1, :cond_0

    .line 113
    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->mIsButtonClicked:Z

    .line 114
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 115
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings"

    const-class v2, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x7f11075b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 46
    const-string/jumbo v0, "BiometricsSelectBackupPassword"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 44
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const-string/jumbo v0, "BiometricsSelectBackupPassword"

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const v0, 0x7f0402c0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->setContentView(I)V

    .line 35
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->setBiometricsBackupTypeDB(Landroid/content/Context;I)Z

    .line 37
    const v0, 0x7f11075b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->mSamsungAccountButton:Landroid/widget/Button;

    .line 38
    const v0, 0x7f11075c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->mBackupPasswordButton:Landroid/widget/Button;

    .line 39
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->mSamsungAccountButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->mBackupPasswordButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 53
    const-string/jumbo v0, "BiometricsSelectBackupPassword"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->mIsButtonClicked:Z

    if-nez v0, :cond_0

    .line 56
    const-string/jumbo v0, "BiometricsSelectBackupPassword"

    const-string/jumbo v1, "Finish BiometricsSelectBackupPassword"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->setResult(I)V

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->finish()V

    .line 51
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 65
    const-string/jumbo v0, "BiometricsSelectBackupPassword"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->mIsButtonClicked:Z

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsSelectBackupPassword;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 63
    return-void
.end method
