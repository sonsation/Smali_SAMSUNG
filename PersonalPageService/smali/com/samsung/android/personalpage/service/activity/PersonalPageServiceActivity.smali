.class public Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;
.super Landroid/app/Activity;
.source "PersonalPageServiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity$1;
    }
.end annotation


# static fields
.field protected static final KEY_NUM_WRONG_ATTEMPTS:Ljava/lang/String; = "num_wrong_attempts"

.field private static final TAG:Ljava/lang/String; = "PersonalPageServiceActivity"


# instance fields
.field protected destroyByDoubleVerification:Z

.field protected isBackupKey:Z

.field private isDefault:I

.field private isFocusChanged:Z

.field protected isM2P:Z

.field protected isVerifySuccess:Z

.field private mIsBoundService:Z

.field protected mNumWrongConfirmAttempts:I

.field protected mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private rotateState:I

.field protected versionPrivatemode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mIsBoundService:Z

    .line 55
    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isVerifySuccess:Z

    .line 56
    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isM2P:Z

    .line 57
    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isBackupKey:Z

    .line 58
    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->destroyByDoubleVerification:Z

    .line 61
    iput v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->versionPrivatemode:I

    .line 63
    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isFocusChanged:Z

    .line 64
    iput v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isDefault:I

    .line 67
    iput v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    .line 69
    new-instance v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity$1;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;)V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 51
    return-void
.end method

.method private DisableSystemKey()V
    .locals 2

    .prologue
    .line 264
    const/16 v0, 0xbb

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->requestSystemKeyEvent(IZ)Z

    .line 263
    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "request"    # Z

    .prologue
    .line 248
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 247
    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 250
    .local v1, "windowmanager":Landroid/view/IWindowManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PersonalPageServiceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestSystemKeyEvent - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method protected doBindService()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 92
    iput-boolean v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mIsBoundService:Z

    .line 90
    return-void
.end method

.method protected doUnbindService()V
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mIsBoundService:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mIsBoundService:Z

    .line 95
    :cond_0
    return-void
.end method

.method protected getFailedAttemptTimeOutMS()J
    .locals 6

    .prologue
    .line 297
    const-wide/16 v0, 0x0

    .line 299
    .local v0, "timeout_ms":J
    iget v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 300
    const-wide/16 v0, 0x7530

    .line 313
    :cond_0
    :goto_0
    const-string/jumbo v2, "PersonalPageServiceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isBlockAttemps -mNumWrongConfirmAttempts : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", timeout_sec : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-wide v0

    .line 301
    :cond_1
    iget v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 302
    const-wide/32 v0, 0xea60

    goto :goto_0

    .line 303
    :cond_2
    iget v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_3

    .line 304
    const-wide/32 v0, 0x493e0

    goto :goto_0

    .line 305
    :cond_3
    iget v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_4

    .line 306
    const-wide/32 v0, 0x927c0

    goto :goto_0

    .line 307
    :cond_4
    iget v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_5

    .line 308
    const-wide/32 v0, 0x1b7740

    goto :goto_0

    .line 309
    :cond_5
    iget v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 310
    const-wide/32 v0, 0x36ee80

    goto :goto_0
.end method

.method protected getScreenOrientation()I
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method protected hideVirtualKeypad()V
    .locals 4

    .prologue
    .line 235
    const-string/jumbo v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 237
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 238
    .local v1, "v":Landroid/view/View;
    if-nez v1, :cond_0

    .line 239
    return-void

    .line 241
    :cond_0
    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 234
    :cond_1
    return-void
.end method

.method protected isPortrait()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getScreenOrientation()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 180
    return v1

    .line 182
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isSupportPatternBackupPin()Z
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x400

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const-string/jumbo v8, "PersonalPageServiceActivity"

    const-string/jumbo v9, "==onCreate()=="

    invoke-static {v8, v9}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string/jumbo v8, "keyguard"

    invoke-virtual {p0, v8}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 119
    .local v1, "kgm":Landroid/app/KeyguardManager;
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 120
    .local v5, "win":Landroid/view/Window;
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string/jumbo v9, "com.sec.feature.secretmode_service"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->versionPrivatemode:I

    .line 121
    const v8, 0x7f070006

    invoke-super {p0, v8}, Landroid/app/Activity;->setTheme(I)V

    .line 122
    invoke-virtual {p0, v6}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->requestWindowFeature(I)Z

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isPortrait()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 125
    const/high16 v8, -0x80000000

    invoke-virtual {v5, v8}, Landroid/view/Window;->addFlags(I)V

    .line 126
    invoke-virtual {v5, v7}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 127
    const/16 v4, 0x400

    .line 128
    .local v4, "visibility":I
    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 132
    .end local v4    # "visibility":I
    :goto_0
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 135
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v8, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v9, 0x4000000

    or-int/2addr v8, v9

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 136
    invoke-virtual {v5, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 137
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/high16 v9, 0x480000

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->doBindService()V

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string/jumbo v9, "M2P"

    invoke-virtual {v8, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isM2P:Z

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "isFingerReset":Z
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "finger_reset_change"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    move v0, v6

    .line 145
    .local v0, "isFingerReset":Z
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v8, "FINGERPRINT"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    :goto_2
    iput-boolean v6, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isBackupKey:Z

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getScreenOrientation()I

    move-result v6

    iput v6, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->rotateState:I

    .line 148
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->DisableSystemKey()V

    .line 149
    iput v7, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isDefault:I

    .line 150
    if-eqz p1, :cond_4

    .line 151
    const-string/jumbo v6, "num_wrong_attempts"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    .line 152
    const-string/jumbo v6, "PersonalPageServiceActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCreate: mNumWrongConfirmAttempts - savedInstanceStates ,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_3
    return-void

    .line 130
    .end local v0    # "isFingerReset":Z
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    invoke-virtual {v5, v10, v10}, Landroid/view/Window;->setFlags(II)V

    goto/16 :goto_0

    .local v0, "isFingerReset":Z
    .restart local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    move v0, v7

    .line 143
    goto :goto_1

    .local v0, "isFingerReset":Z
    :cond_3
    move v6, v7

    .line 145
    goto :goto_2

    .line 154
    :cond_4
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 155
    .local v3, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "num_wrong_attempts"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    .line 156
    const-string/jumbo v6, "PersonalPageServiceActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCreate: mNumWrongConfirmAttempts "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 187
    const-string/jumbo v1, "PersonalPageServiceActivity"

    const-string/jumbo v2, "==onDestroy()=="

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-boolean v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isM2P:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isVerifySuccess:Z

    if-eqz v1, :cond_2

    .line 197
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->doUnbindService()V

    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 200
    iget-boolean v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isVerifySuccess:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isM2P:Z

    if-eqz v1, :cond_6

    .line 186
    :cond_1
    :goto_1
    return-void

    .line 189
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v1, :cond_0

    .line 190
    iget v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->rotateState:I

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getScreenOrientation()I

    move-result v2

    if-eq v1, v2, :cond_3

    instance-of v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;

    if-eqz v1, :cond_4

    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->destroyByDoubleVerification:Z

    if-eqz v1, :cond_5

    .line 193
    :cond_4
    const-string/jumbo v1, "PersonalPageServiceActivity"

    const-string/jumbo v2, "onDestroy_Skip_cancelVerfiyUser"

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->cancelVerifyByUser()Z

    goto :goto_0

    .line 201
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.personalpage.action.START_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.android.personalpage.service"

    const-string/jumbo v2, "com.samsung.android.personalpage.service.PersonalPageService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 163
    const-string/jumbo v1, "PersonalPageServiceActivity"

    const-string/jumbo v2, "==onPause()=="

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 165
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "num_wrong_attempts"

    iget v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 161
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 170
    const-string/jumbo v0, "num_wrong_attempts"

    iget v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    const-string/jumbo v0, "PersonalPageServiceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "==onSaveInstanceState== mNumWrongConfirmAttempts :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 226
    const-string/jumbo v0, "PersonalPageServiceActivity"

    const-string/jumbo v2, "==onStop=="

    invoke-static {v0, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "personal_mode_enabled"

    .line 229
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->isPrivateStorageAtLeastMounted()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 228
    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 231
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 225
    return-void

    :cond_1
    move v0, v1

    .line 229
    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 209
    const-string/jumbo v0, "PersonalPageServiceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "==onWindowFocusChanged== : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iput-boolean p1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isFocusChanged:Z

    .line 211
    instance-of v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;

    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "personal_mode_enabled"

    .line 214
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->isPrivateStorageAtLeastMounted()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 213
    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 216
    :cond_0
    if-nez p1, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->hideVirtualKeypad()V

    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->finish()V

    .line 221
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 208
    return-void

    :cond_2
    move v0, v1

    .line 214
    goto :goto_0
.end method

.method protected requestPrivateModeOn()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isVerifySuccess:Z

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mNumWrongConfirmAttempts:I

    .line 106
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->onFinishUserVerification()V

    .line 111
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->hideVirtualKeypad()V

    .line 102
    return-void

    .line 109
    :cond_0
    const-string/jumbo v0, "PersonalPageServiceActivity"

    const-string/jumbo v1, "PersonalPageService is null"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected sendBroadcastForPrivateFinger()V
    .locals 3

    .prologue
    .line 258
    const-string/jumbo v1, "PersonalPageServiceActivity"

    const-string/jumbo v2, "sendBroadcastForPrivateFinger"

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.intent.action.PRIVATE_MODE_FINGER_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v0, "mIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 257
    return-void
.end method
