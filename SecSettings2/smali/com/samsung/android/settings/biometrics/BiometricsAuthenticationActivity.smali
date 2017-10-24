.class public Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;
.super Landroid/app/Activity;
.source "BiometricsAuthenticationActivity.java"

# interfaces
.implements Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$IAuthenticateDialogEventListener;
.implements Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$IrisConfirmBackupPasswordEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mForFingerprintAuth:Z

.field private mForIrisAuth:Z

.field private mHandler:Landroid/os/Handler;

.field private mIrisAuthenticateDialog:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

.field private mIrisConfirmPasswordDialog:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mIsFromAppLock:Z

.field private mIsFromKnoxSetCases:Z

.field private mIsFromKnoxSetupWizard:Z

.field private mShowRemainingTimerDialog:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showDatabaseFailureDialog()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showIrisAuthenticate()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;I)V
    .locals 0
    .param p1, "Stringid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showSensorErrorDialog(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForIrisAuth:Z

    .line 65
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForFingerprintAuth:Z

    .line 66
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsFromKnoxSetupWizard:Z

    .line 67
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsFromAppLock:Z

    .line 68
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsFromKnoxSetCases:Z

    .line 37
    return-void
.end method

.method private identifyFinger(Landroid/os/Bundle;)I
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 465
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    new-instance v2, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    invoke-virtual {v1, p0, v2, p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->identifyWithDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I

    move-result v0

    .line 530
    .local v0, "result":I
    return v0
.end method

.method private setBackgroudDimEnabled(Z)V
    .locals 3
    .param p1, "isState"    # Z

    .prologue
    const/4 v2, 0x2

    .line 455
    if-eqz p1, :cond_0

    .line 456
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 457
    .local v0, "windowManager":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x3e99999a    # 0.3f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 458
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 454
    .end local v0    # "windowManager":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    return-void

    .line 460
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method private showDatabaseFailureDialog()V
    .locals 4

    .prologue
    .line 558
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 559
    const v2, 0x7f0b0685

    .line 558
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 560
    const v2, 0x7f0b06d1

    .line 558
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 562
    new-instance v2, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    .line 561
    const v3, 0x104000a

    .line 558
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 569
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$8;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 575
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 557
    return-void
.end method

.method private showErrorPopup(I)V
    .locals 9
    .param p1, "errorCode"    # I

    .prologue
    const v7, 0x7f0b07eb

    .line 254
    const-string/jumbo v1, ""

    .line 255
    .local v1, "msg":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0b07ce

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, "title":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 288
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 289
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 290
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 291
    new-instance v5, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$1;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    const v6, 0x7f0b1457

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 297
    new-instance v5, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$2;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    const/high16 v6, 0x1040000

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 303
    new-instance v5, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$3;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 309
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 310
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 253
    return-void

    .line 259
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .local v3, "timeMsg":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0b07ca

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v7, 0x9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string/jumbo v5, "\n\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0b07cb

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 267
    .end local v3    # "timeMsg":Ljava/lang/StringBuilder;
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .local v2, "proxiMsg":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0b07cc

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string/jumbo v5, "\n\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0b07cd

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 274
    .end local v2    # "proxiMsg":Ljava/lang/StringBuilder;
    :pswitch_2
    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0b07d0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 275
    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0b07cf

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 278
    :pswitch_3
    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0b07ec

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 279
    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 282
    :pswitch_4
    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0b07ed

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 283
    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private showFingerprintAuthenticate()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 113
    const-string/jumbo v7, "BiometricsAuthenticationActivity"

    const-string/jumbo v8, "showFingerprintAuthenticate Called"

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v7, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v7, :cond_0

    .line 115
    const-string/jumbo v7, "BiometricsAuthenticationActivity"

    const-string/jumbo v8, "mFingerprintManager is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const v7, 0x7f0b0688

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showSensorErrorDialog(I)V

    .line 117
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setResult(I)V

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    .line 119
    return-void

    .line 122
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 123
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v7, "password"

    invoke-virtual {v1, v7, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 125
    iget-object v7, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v7}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v2

    .line 126
    .local v2, "hasIrises":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 127
    const-string/jumbo v7, "enrolled_iris"

    invoke-virtual {v1, v7, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 131
    :cond_1
    const-string/jumbo v7, "persona"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/SemPersonaManager;

    .line 132
    .local v4, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v4, :cond_4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    const/16 v8, 0x64

    if-lt v7, v8, :cond_4

    .line 134
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/samsung/android/knox/SemPersonaManager;->isEnabledFingerprintIndex(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 135
    const-string/jumbo v7, "BiometricsAuthenticationActivity"

    const-string/jumbo v8, "isEnabledFingerprintIndex is true."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/samsung/android/knox/SemPersonaManager;->getFingerprintIndex(I)[I

    move-result-object v0

    .line 137
    .local v0, "allowFingers":[I
    if-eqz v0, :cond_5

    .line 138
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v0

    if-ge v3, v7, :cond_3

    .line 139
    const-string/jumbo v7, "BiometricsAuthenticationActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "finger index = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "allowFingers":[I
    .end local v2    # "hasIrises":Z
    .end local v3    # "i":I
    .end local v4    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_2
    move v2, v6

    .line 125
    goto :goto_0

    .line 140
    .restart local v0    # "allowFingers":[I
    .restart local v2    # "hasIrises":Z
    .restart local v3    # "i":I
    .restart local v4    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_3
    const-string/jumbo v7, "request_template_index_list"

    invoke-virtual {v1, v7, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 150
    .end local v0    # "allowFingers":[I
    .end local v3    # "i":I
    :cond_4
    :goto_2
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->identifyFinger(Landroid/os/Bundle;)I

    move-result v5

    .line 151
    .local v5, "result":I
    if-nez v5, :cond_7

    .line 152
    const-string/jumbo v6, "BiometricsAuthenticationActivity"

    const-string/jumbo v7, "identifyFinger start"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_3
    return-void

    .line 142
    .end local v5    # "result":I
    .restart local v0    # "allowFingers":[I
    :cond_5
    const-string/jumbo v7, "BiometricsAuthenticationActivity"

    const-string/jumbo v8, "personaInfo.isEnabledFingerprintIndex is null."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 145
    .end local v0    # "allowFingers":[I
    :cond_6
    const-string/jumbo v7, "BiometricsAuthenticationActivity"

    const-string/jumbo v8, "personaInfo.isEnabledFingerprintIndex is false."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 153
    .restart local v5    # "result":I
    :cond_7
    const/4 v7, -0x4

    if-ne v5, v7, :cond_8

    .line 154
    const-string/jumbo v7, "BiometricsAuthenticationActivity"

    const-string/jumbo v8, "RESULT_DATABASE_FAILURE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setResult(I)V

    .line 156
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showDatabaseFailureDialog()V

    goto :goto_3

    .line 158
    :cond_8
    const-string/jumbo v7, "BiometricsAuthenticationActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Other Error occured : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setResult(I)V

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    goto :goto_3
.end method

.method private showIrisAuthenticate()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->initBiometricsBackupPasswordValue(Landroid/content/Context;)V

    .line 200
    new-instance v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$IAuthenticateDialogEventListener;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisAuthenticateDialog:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    .line 201
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsFromKnoxSetupWizard:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsFromAppLock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsFromKnoxSetCases:Z

    if-eqz v0, :cond_1

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisAuthenticateDialog:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->hideOtherButtons()V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisAuthenticateDialog:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->show()V

    .line 205
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setBackgroudDimEnabled(Z)V

    .line 198
    return-void
.end method

.method private showIrisConrimBPDialog()V
    .locals 2

    .prologue
    .line 210
    new-instance v0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$IrisConfirmBackupPasswordEventListener;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisConfirmPasswordDialog:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    .line 211
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisConfirmPasswordDialog:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->show()V

    .line 209
    return-void
.end method

.method private showRemainingTimeoutDialog()V
    .locals 1

    .prologue
    .line 336
    new-instance v0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    invoke-direct {v0, p0, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mShowRemainingTimerDialog:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    .line 337
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mShowRemainingTimerDialog:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->show()V

    .line 338
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setBackgroudDimEnabled(Z)V

    .line 335
    return-void
.end method

.method private showSensorErrorDialog(I)V
    .locals 4
    .param p1, "Stringid"    # I

    .prologue
    .line 534
    const v1, 0x7f0b0688

    if-ne p1, v1, :cond_0

    .line 535
    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 534
    if-eqz v1, :cond_0

    .line 536
    const p1, 0x7f0b0689

    .line 539
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 540
    const v2, 0x7f0b0685

    .line 539
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 543
    new-instance v2, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$5;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    .line 542
    const v3, 0x104000a

    .line 539
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 548
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$6;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 554
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 533
    return-void
.end method

.method private useMobileKeyboard()Z
    .locals 4

    .prologue
    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, "useKeyboard":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 106
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 107
    const/4 v1, 0x1

    .line 109
    :cond_0
    return v1
.end method


# virtual methods
.method public IrisAuthenticateDialogEvent(I)V
    .locals 8
    .param p1, "mValue"    # I

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 216
    const-string/jumbo v0, "BiometricsAuthenticationActivity"

    const-string/jumbo v1, "IrisAuthenticateDialogEvent Called"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 224
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setResult(I)V

    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    .line 215
    :goto_0
    return-void

    .line 227
    :cond_0
    if-ne p1, v2, :cond_2

    .line 228
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 229
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->getRemaingTimeToUnlock(Landroid/content/Context;)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_1

    .line 230
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showRemainingTimeoutDialog()V

    goto :goto_0

    .line 232
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showIrisConrimBPDialog()V

    goto :goto_0

    .line 234
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 235
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showFingerprintAuthenticate()V

    goto :goto_0

    .line 236
    :cond_3
    if-ne p1, v3, :cond_4

    .line 237
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showErrorPopup(I)V

    goto :goto_0

    .line 238
    :cond_4
    if-ne p1, v4, :cond_5

    .line 239
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showErrorPopup(I)V

    goto :goto_0

    .line 240
    :cond_5
    if-ne p1, v5, :cond_7

    .line 241
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->getRemaingTimeToUnlock(Landroid/content/Context;)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_6

    .line 242
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 243
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showRemainingTimeoutDialog()V

    goto :goto_0

    .line 245
    :cond_6
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showErrorPopup(I)V

    goto :goto_0

    .line 248
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setResult(I)V

    .line 249
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    goto :goto_0
.end method

.method public IrisConfirmBackupPasswordDialogEvent(I)V
    .locals 4
    .param p1, "mValue"    # I

    .prologue
    .line 315
    const-string/jumbo v0, "BiometricsAuthenticationActivity"

    const-string/jumbo v1, "IrisConfirmBackupPasswordDialogEvent Called"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 323
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setResult(I)V

    .line 324
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    .line 314
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->getRemaingTimeToUnlock(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 327
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showRemainingTimeoutDialog()V

    goto :goto_0

    .line 329
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setResult(I)V

    .line 330
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const-string/jumbo v0, "BiometricsAuthenticationActivity"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iput-object p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    .line 76
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "for_fingerprint_authentication"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForFingerprintAuth:Z

    .line 78
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "for_iris_authentication"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForIrisAuth:Z

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "isFromKnoxSetupWizard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsFromKnoxSetupWizard:Z

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_applock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsFromAppLock:Z

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "is_knox"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsFromKnoxSetCases:Z

    .line 85
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->useMobileKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForIrisAuth:Z

    .line 87
    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForFingerprintAuth:Z

    .line 90
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForFingerprintAuth:Z

    if-eqz v0, :cond_1

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showFingerprintAuthenticate()V

    .line 71
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForIrisAuth:Z

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->getRemaingTimeToUnlock(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showRemainingTimeoutDialog()V

    goto :goto_0

    .line 96
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showIrisAuthenticate()V

    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisAuthenticateDialog:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisAuthenticateDialog:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisAuthenticateDialog:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->dismiss()V

    .line 170
    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisAuthenticateDialog:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisConfirmPasswordDialog:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisConfirmPasswordDialog:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisConfirmPasswordDialog:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->dismiss()V

    .line 175
    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisConfirmPasswordDialog:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mShowRemainingTimerDialog:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mShowRemainingTimerDialog:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mShowRemainingTimerDialog:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->dismiss()V

    .line 180
    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mShowRemainingTimerDialog:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    .line 165
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 185
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 191
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 193
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 190
    :cond_0
    return-void
.end method
