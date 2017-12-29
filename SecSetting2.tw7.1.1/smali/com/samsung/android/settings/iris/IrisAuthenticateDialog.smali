.class public Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;
.super Landroid/app/Dialog;
.source "IrisAuthenticateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;,
        Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$IAuthenticateDialogEventListener;
    }
.end annotation


# instance fields
.field private linearlayout:Landroid/widget/LinearLayout;

.field private mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

.field private mBackupPasswordBtn:Landroid/widget/Button;

.field private mBackupPasswordStatusDB:I

.field private mCancelBtn:Landroid/widget/TextView;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field protected mContext:Landroid/content/Context;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mIrisPreview:Landroid/widget/ImageView;

.field mIrisViewWidth:I

.field private mIsFromKnoxSetupWizard:Z

.field mResultValue:I

.field private mVerifyFingerBtn:Landroid/widget/Button;

.field private onIAuthenticateDialogEventListener:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$IAuthenticateDialogEventListener;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->releaseIrisManager()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$IAuthenticateDialogEventListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onIAuthenticateDialogEventListener"    # Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$IAuthenticateDialogEventListener;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 55
    const v2, 0x1030011

    invoke-direct {p0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 37
    iput-object v3, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mContext:Landroid/content/Context;

    .line 39
    const/16 v2, 0x5a0

    iput v2, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIrisViewWidth:I

    .line 73
    iput-object v3, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 75
    iput-object v3, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIrisPreview:Landroid/widget/ImageView;

    .line 83
    iput v4, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    .line 85
    iput-boolean v4, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIsFromKnoxSetupWizard:Z

    .line 165
    new-instance v2, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;-><init>(Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;)V

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    .line 56
    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->onIAuthenticateDialogEventListener:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$IAuthenticateDialogEventListener;

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 61
    .local v1, "window":Landroid/view/Window;
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 62
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 64
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 65
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 66
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 67
    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 54
    :cond_0
    return-void
.end method

.method private releaseIrisManager()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 237
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 239
    iput-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 241
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    .line 235
    return-void
.end method

.method private startIrisConfirm()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 152
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 154
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIrisPreview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 155
    .local v7, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIrisViewWidth:I

    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 156
    iget v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIrisViewWidth:I

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0x10

    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 157
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIrisPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 161
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIrisPreview:Landroid/widget/ImageView;

    const/4 v3, 0x0

    move-object v5, v1

    .line 160
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/camera/iris/SemIrisManager;->authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;)V

    .line 151
    :cond_0
    return-void
.end method

.method private updateDialogButtonGUI()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 268
    const-string/jumbo v1, "IrisAuthenticateDialog"

    const-string/jumbo v2, "updateDialogButtonGUI"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_button_background"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 272
    .local v0, "isEnabledShowBtnBg":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 273
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mCancelBtn:Landroid/widget/TextView;

    const v2, 0x7f020303

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 267
    :cond_1
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->releaseIrisManager()V

    .line 231
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->onIAuthenticateDialogEventListener:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$IAuthenticateDialogEventListener;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$IAuthenticateDialogEventListener;->IrisAuthenticateDialogEvent(I)V

    .line 229
    return-void
.end method

.method public hideOtherButtons()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIsFromKnoxSetupWizard:Z

    .line 147
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->releaseIrisManager()V

    .line 247
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 245
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->releaseIrisManager()V

    .line 253
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mCancelBtn:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 254
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    .line 264
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->dismiss()V

    .line 251
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mBackupPasswordBtn:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 256
    iget v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mBackupPasswordStatusDB:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 257
    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    goto :goto_0

    .line 259
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    goto :goto_0

    .line 261
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mVerifyFingerBtn:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 262
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 97
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 102
    const v1, 0x7f04015d

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->setContentView(I)V

    .line 104
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "biometrics_backup_type"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mBackupPasswordStatusDB:I

    .line 106
    const v1, 0x7f1104d1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIrisPreview:Landroid/widget/ImageView;

    .line 107
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIrisPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    const v1, 0x7f1104d4

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->linearlayout:Landroid/widget/LinearLayout;

    .line 111
    const v1, 0x7f1104d5

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mCancelBtn:Landroid/widget/TextView;

    .line 112
    const v1, 0x7f1104d2

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mBackupPasswordBtn:Landroid/widget/Button;

    .line 113
    const v1, 0x7f1104d3

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mVerifyFingerBtn:Landroid/widget/Button;

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->updateDialogButtonGUI()V

    .line 117
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v1

    if-nez v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->linearlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 119
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mVerifyFingerBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mCancelBtn:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mBackupPasswordBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mVerifyFingerBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIsFromKnoxSetupWizard:Z

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mBackupPasswordBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 128
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mVerifyFingerBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 131
    :cond_2
    iget v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mBackupPasswordStatusDB:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 132
    const-string/jumbo v1, "JPN"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 133
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mBackupPasswordBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f0b08e2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 140
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIrisViewWidth:I

    .line 142
    iput v4, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->startIrisConfirm()V

    .line 96
    return-void

    .line 135
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mBackupPasswordBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f0b08e1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x1004

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 88
    return-void
.end method
