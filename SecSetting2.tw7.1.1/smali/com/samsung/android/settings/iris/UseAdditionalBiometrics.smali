.class public Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;
.super Landroid/app/Activity;
.source "UseAdditionalBiometrics.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/iris/UseAdditionalBiometrics$1;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mIsSupportBioFace:Z


# instance fields
.field private descriptionTextView:Landroid/widget/TextView;

.field private faceLayout:Landroid/widget/LinearLayout;

.field private faceSwitch:Landroid/widget/Switch;

.field private fingerprintLayout:Landroid/widget/LinearLayout;

.field private fingerprintSwitch:Landroid/widget/Switch;

.field private irisLayout:Landroid/widget/LinearLayout;

.field private irisSwitch:Landroid/widget/Switch;

.field private laterBtn:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mIntent:Landroid/content/Intent;

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mToken:[B

.field private mTokenFace:[B

.field private mtoken_2nd:[B

.field private okBtn:Landroid/widget/Button;

.field screenOffReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;)Lcom/samsung/android/camera/iris/SemIrisManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string/jumbo v0, "UseAdditionalBiometrics"

    sput-object v0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->TAG:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIsSupportBioFace:Z

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mToken:[B

    .line 76
    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mtoken_2nd:[B

    .line 77
    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mTokenFace:[B

    .line 85
    new-instance v0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics$1;-><init>(Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;)V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    return-void
.end method

.method private initBiometricsSettings()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIntent:Landroid/content/Intent;

    .line 250
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mToken:[B

    .line 251
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "hw_auth_token_iris"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mtoken_2nd:[B

    .line 252
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "hw_auth_token_face"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mTokenFace:[B

    .line 254
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v0

    if-nez v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 261
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v0

    if-nez v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 268
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x100

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v0

    if-nez v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->faceSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 275
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->okBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 246
    :goto_3
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    .line 272
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->faceSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_2

    .line 275
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->faceSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->okBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3
.end method

.method private sendBioMetricsLogging()V
    .locals 5

    .prologue
    .line 446
    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    .line 447
    .local v1, "passwordQuality":I
    const-string/jumbo v0, ""

    .line 448
    .local v0, "extraValue":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "passwordQuality : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 451
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 450
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    const-string/jumbo v0, "Fingerprint_"

    .line 454
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 455
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 454
    const/16 v4, 0x10

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    if-eqz v2, :cond_1

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Iris_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 458
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 459
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 458
    const/16 v4, 0x100

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    if-eqz v2, :cond_2

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Face_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 463
    :cond_2
    sparse-switch v1, :sswitch_data_0

    .line 477
    const-string/jumbo v0, ""

    .line 479
    :goto_0
    sget-object v2, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "extraValue : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 482
    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "LOSC"

    invoke-static {v2, v3, v4, v0}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :cond_3
    return-void

    .line 466
    :sswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "PIN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 471
    :sswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Password"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 474
    :sswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Pattern"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 463
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method private setBiometricsDescription()Ljava/lang/String;
    .locals 6

    .prologue
    .line 398
    iget-object v3, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v2

    .line 400
    .local v2, "passwordQuality":I
    const-string/jumbo v1, ""

    .line 401
    .local v1, "lockType":Ljava/lang/String;
    const v3, 0x7f0b083c

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "buttonText":Ljava/lang/String;
    sparse-switch v2, :sswitch_data_0

    .line 421
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const v5, 0x7f0b0949

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 406
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b1479

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 411
    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b147b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 414
    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b1477

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 417
    :sswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0a35

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 403
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_2
        0x10001 -> :sswitch_3
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method private startFaceLockSettings()V
    .locals 3

    .prologue
    .line 381
    sget-object v1, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startFaceLockSettings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isHardwareDetected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 384
    sget-object v1, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isHardwareDetected() of Face is FALSE."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return-void

    .line 389
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 390
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.samsung.android.settings.face.FaceLockSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const-string/jumbo v1, "previousStage"

    const-string/jumbo v2, "lock_screen_pin_pattern_password_biometrics"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const-string/jumbo v1, "hw_auth_token"

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mTokenFace:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 393
    const/16 v1, 0x7d2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startActivityForResult(Landroid/content/Intent;I)V

    .line 380
    return-void
.end method

.method private startFingerprintLockSettings()V
    .locals 3

    .prologue
    .line 366
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    sget-object v1, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isHardwareDetected() of Fingerprint is FALSE."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-void

    .line 373
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 374
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.fingerprint.FingerprintLockSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const-string/jumbo v1, "previousStage"

    const-string/jumbo v2, "lock_screen_pin_pattern_password_biometrics"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string/jumbo v1, "hw_auth_token"

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 377
    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startActivityForResult(Landroid/content/Intent;I)V

    .line 364
    return-void
.end method

.method private startIrisRegister()V
    .locals 3

    .prologue
    .line 358
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.settings.iris.IrisLockSettings"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 359
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "previousStage"

    const-string/jumbo v2, "register_iris_request_from_chooselock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const-string/jumbo v1, "hw_auth_token"

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mtoken_2nd:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 361
    const/16 v1, 0x7d1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startActivityForResult(Landroid/content/Intent;I)V

    .line 356
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 284
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 285
    sget-object v0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult : requestCode : "

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

    .line 287
    packed-switch p1, :pswitch_data_0

    .line 283
    :goto_0
    return-void

    .line 289
    :pswitch_0
    if-eqz p2, :cond_0

    .line 290
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v2, 0x100

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 293
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startFingerprintLockSettings()V

    goto :goto_0

    .line 296
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startIrisRegister()V

    goto :goto_0

    .line 300
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    goto :goto_0

    .line 303
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    goto :goto_0

    .line 306
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 307
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 308
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startIrisRegister()V

    goto :goto_0

    .line 310
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    goto :goto_0

    .line 314
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    goto :goto_0

    .line 318
    :pswitch_1
    if-eqz p2, :cond_7

    .line 319
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 321
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 322
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startIrisRegister()V

    goto :goto_0

    .line 324
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    goto :goto_0

    .line 329
    :pswitch_2
    if-eqz p2, :cond_9

    .line 330
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 332
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 341
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->okBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 347
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    if-ne p1, v0, :cond_3

    .line 348
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 339
    :cond_1
    :goto_1
    return-void

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->faceSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->okBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 349
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    if-ne p1, v0, :cond_4

    .line 350
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    .line 351
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->faceSwitch:Landroid/widget/Switch;

    if-ne p1, v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->faceSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 211
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    .line 213
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    goto :goto_0

    .line 225
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->faceSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startFaceLockSettings()V

    goto :goto_0

    .line 227
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 228
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startFingerprintLockSettings()V

    goto :goto_0

    .line 229
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startIrisRegister()V

    goto :goto_0

    .line 235
    :sswitch_2
    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    .line 238
    :sswitch_3
    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_2

    .line 241
    :sswitch_4
    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->faceSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->faceSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_3

    .line 209
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f110403 -> :sswitch_0
        0x7f110404 -> :sswitch_1
        0x7f110840 -> :sswitch_4
        0x7f110843 -> :sswitch_2
        0x7f110846 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    iput-object p0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 113
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIsSupportBioFace:Z

    .line 115
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 116
    const-string/jumbo v1, "fingerprint"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 117
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    .line 120
    :cond_0
    sget-boolean v1, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIsSupportBioFace:Z

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 124
    :cond_1
    const v1, 0x7f0b0948

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->setTitle(I)V

    .line 126
    const v1, 0x7f040367

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->setContentView(I)V

    .line 128
    const v1, 0x7f110403

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->laterBtn:Landroid/widget/Button;

    .line 129
    const v1, 0x7f110404

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->okBtn:Landroid/widget/Button;

    .line 131
    const v1, 0x7f11083f

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->descriptionTextView:Landroid/widget/TextView;

    .line 133
    const v1, 0x7f110843

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintLayout:Landroid/widget/LinearLayout;

    .line 134
    const v1, 0x7f110845

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    .line 136
    const v1, 0x7f110846

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisLayout:Landroid/widget/LinearLayout;

    .line 137
    const v1, 0x7f110848

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    .line 139
    const v1, 0x7f110840

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->faceLayout:Landroid/widget/LinearLayout;

    .line 140
    const v1, 0x7f110842

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->faceSwitch:Landroid/widget/Switch;

    .line 142
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->descriptionTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->setBiometricsDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->laterBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->okBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 149
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 150
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 156
    :goto_0
    sget-boolean v1, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIsSupportBioFace:Z

    if-eqz v1, :cond_4

    .line 157
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->faceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->faceSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 160
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->faceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 162
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->faceSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 168
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->initBiometricsSettings()V

    .line 170
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 171
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    return-void

    .line 153
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 165
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->faceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->sendBioMetricsLogging()V

    .line 201
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 202
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 199
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 177
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 182
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 179
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    .line 180
    const/4 v0, 0x1

    return v0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    :cond_2
    :goto_0
    return-void

    .line 193
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    goto :goto_0
.end method
