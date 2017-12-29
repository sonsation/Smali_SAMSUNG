.class public Lcom/android/settings/ChooseLockPattern;
.super Lcom/android/settings/SettingsActivity;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;,
        Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;
    }
.end annotation


# static fields
.field private static mAppLockBackupKey:Ljava/lang/String;

.field private static mForAppLockBackupKey:Z

.field private static mForFace:Z

.field private static mForFingerprint:Z

.field private static mForIris:Z

.field private static mForPrivateModeBackupKey:Z

.field private static mFromAppLock:Z

.field private static mFromPersonalPage:Z

.field private static mFromScreenLockType:Z

.field private static mFromSetupWizard:Z

.field private static mIsEnforcedMultifactorNReset:Z

.field private static mIsFromKnoxFinger:Z

.field private static mKnoxUserId:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/ChooseLockPattern;->mAppLockBackupKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mForAppLockBackupKey:Z

    return v0
.end method

.method static synthetic -get10()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mIsEnforcedMultifactorNReset:Z

    return v0
.end method

.method static synthetic -get11()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mIsFromKnoxFinger:Z

    return v0
.end method

.method static synthetic -get12()I
    .locals 1

    sget v0, Lcom/android/settings/ChooseLockPattern;->mKnoxUserId:I

    return v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mForFace:Z

    return v0
.end method

.method static synthetic -get3()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mForFingerprint:Z

    return v0
.end method

.method static synthetic -get4()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mForIris:Z

    return v0
.end method

.method static synthetic -get5()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mForPrivateModeBackupKey:Z

    return v0
.end method

.method static synthetic -get6()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mFromAppLock:Z

    return v0
.end method

.method static synthetic -get7()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mFromPersonalPage:Z

    return v0
.end method

.method static synthetic -get8()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mFromScreenLockType:Z

    return v0
.end method

.method static synthetic -get9()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern;->mFromSetupWizard:Z

    return v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/ChooseLockPattern;->mIsEnforcedMultifactorNReset:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/ChooseLockPattern;Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockPattern;->allowHomeAndBack(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/ChooseLockPattern;I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockPattern;->sendIntentToKnoxKeyguard(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mForFingerprint:Z

    .line 129
    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mForIris:Z

    .line 130
    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mForFace:Z

    .line 131
    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mIsFromKnoxFinger:Z

    .line 132
    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mFromPersonalPage:Z

    .line 133
    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mFromAppLock:Z

    .line 134
    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mForPrivateModeBackupKey:Z

    .line 135
    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mForAppLockBackupKey:Z

    .line 136
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/ChooseLockPattern;->mAppLockBackupKey:Ljava/lang/String;

    .line 137
    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mIsEnforcedMultifactorNReset:Z

    .line 138
    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mFromSetupWizard:Z

    .line 139
    sput-boolean v1, Lcom/android/settings/ChooseLockPattern;->mFromScreenLockType:Z

    .line 140
    sput v1, Lcom/android/settings/ChooseLockPattern;->mKnoxUserId:I

    .line 115
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method

.method private allowHomeAndBack(Z)V
    .locals 5
    .param p1, "allow"    # Z

    .prologue
    .line 192
    if-nez p1, :cond_0

    .line 193
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 195
    .local v1, "mWindowManager":Landroid/view/IWindowManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0xbb

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x3e9

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v1    # "mWindowManager":Landroid/view/IWindowManager;
    :cond_0
    :goto_0
    return-void

    .line 199
    .restart local v1    # "mWindowManager":Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static createIntent(Landroid/content/Context;ZJLjava/lang/String;I)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requirePassword"    # Z
    .param p2, "challenge"    # J
    .param p4, "pattern"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .prologue
    .line 178
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p5}, Lcom/android/settings/ChooseLockPattern;->createIntent(Landroid/content/Context;ZZI)Landroid/content/Intent;

    move-result-object v0

    .line 179
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "has_challenge"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    const-string/jumbo v1, "challenge"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 181
    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requirePassword"    # Z
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 162
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p3}, Lcom/android/settings/ChooseLockPattern;->createIntent(Landroid/content/Context;ZZI)Landroid/content/Intent;

    move-result-object v0

    .line 163
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;ZZI)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requirePassword"    # Z
    .param p2, "confirmCredentials"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 152
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/ChooseLockPattern;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "key_lock_method"

    const-string/jumbo v2, "pattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string/jumbo v1, "confirm_credentials"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    const-string/jumbo v1, "extra_require_password"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    return-object v0
.end method

.method private sendIntentToKnoxKeyguard(I)V
    .locals 5
    .param p1, "resultCode"    # I

    .prologue
    .line 300
    const-string/jumbo v1, "ChooseLockPattern"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendIntentToKnoxKeyguard : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    const/4 v0, 0x0

    .line 303
    .local v0, "knoxIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "knoxIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.knox.kss.PASSWORD_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .local v0, "knoxIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.knox.kss"

    const-string/jumbo v3, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 305
    const-string/jumbo v1, "resetResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 307
    sget-boolean v1, Lcom/android/settings/ChooseLockPattern;->mIsEnforcedMultifactorNReset:Z

    if-eqz v1, :cond_2

    .line 308
    const-string/jumbo v1, "first_lock_type"

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "first_lock_type"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    :cond_2
    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ChooseLockPattern;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method


# virtual methods
.method getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    const-class v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 144
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 145
    .local v0, "modIntent":Landroid/content/Intent;
    const-string/jumbo v1, ":settings:show_fragment"

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getFragmentClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string/jumbo v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 187
    const-class v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 188
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 260
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-lt v2, v6, :cond_5

    .line 262
    invoke-static {}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-get1()Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    move-result-object v1

    .line 263
    .local v1, "mFragmentObj":Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;
    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-get6(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)I

    move-result v2

    if-lt v2, v3, :cond_4

    .line 264
    invoke-static {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-get7(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)I

    move-result v2

    if-gtz v2, :cond_6

    .line 265
    invoke-static {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-get6(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)I

    move-result v2

    if-ne v2, v3, :cond_6

    .line 264
    const/4 v0, 0x1

    .line 269
    .local v0, "enforceWithoutCancel":Z
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-lt v2, v6, :cond_2

    .line 270
    invoke-static {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-get7(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)I

    move-result v2

    if-lez v2, :cond_0

    .line 271
    invoke-static {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-get6(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 272
    :cond_0
    sget-boolean v2, Lcom/android/settings/ChooseLockPattern;->mIsEnforcedMultifactorNReset:Z

    if-nez v2, :cond_1

    .line 273
    invoke-direct {p0, v4}, Lcom/android/settings/ChooseLockPattern;->sendIntentToKnoxKeyguard(I)V

    .line 275
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPattern;->setResult(I)V

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->finish()V

    .line 278
    :cond_2
    if-nez v0, :cond_4

    .line 280
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-get7(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-wrap0(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;II)V

    .line 282
    sget-boolean v2, Lcom/android/settings/ChooseLockPattern;->mIsEnforcedMultifactorNReset:Z

    if-nez v2, :cond_3

    .line 283
    invoke-direct {p0, v4}, Lcom/android/settings/ChooseLockPattern;->sendIntentToKnoxKeyguard(I)V

    .line 286
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPattern;->setResult(I)V

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->finish()V

    .line 291
    .end local v0    # "enforceWithoutCancel":Z
    :cond_4
    sget-boolean v2, Lcom/android/settings/ChooseLockPattern;->mIsEnforcedMultifactorNReset:Z

    if-nez v2, :cond_5

    .line 292
    invoke-direct {p0, v4}, Lcom/android/settings/ChooseLockPattern;->sendIntentToKnoxKeyguard(I)V

    .line 295
    .end local v1    # "mFragmentObj":Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;
    :cond_5
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onBackPressed()V

    .line 259
    return-void

    .line 266
    .restart local v1    # "mFragmentObj":Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;
    :cond_6
    invoke-static {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-get6(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)I

    move-result v2

    if-lt v2, v5, :cond_7

    const/4 v0, 0x1

    .restart local v0    # "enforceWithoutCancel":Z
    goto :goto_0

    .end local v0    # "enforceWithoutCancel":Z
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "enforceWithoutCancel":Z
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 211
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 213
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v5, -0x80000000

    invoke-virtual {v3, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v5, "from_personal"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mFromPersonalPage:Z

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v5, "from_applock"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mFromAppLock:Z

    .line 219
    const-string/jumbo v3, "ChooseLockPattern"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mFromAppLock : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/settings/ChooseLockPattern;->mFromAppLock:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v5, "for_fingerprint"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mForFingerprint:Z

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v5, "for_iris"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mForIris:Z

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v5, "for_face"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mForFace:Z

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v5, "fromScreenLock"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mFromScreenLockType:Z

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v5, "fromSetupWizard"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mFromSetupWizard:Z

    .line 226
    const-string/jumbo v3, "ChooseLockPattern"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[mForFingerprint] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/settings/ChooseLockPattern;->mForFingerprint:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v5, "forPrivateBackupKey"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mForPrivateModeBackupKey:Z

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v5, "forAppLockBackupKey"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/ChooseLockPattern;->mAppLockBackupKey:Ljava/lang/String;

    .line 229
    sget-object v3, Lcom/android/settings/ChooseLockPattern;->mAppLockBackupKey:Ljava/lang/String;

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_0
    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mForAppLockBackupKey:Z

    .line 230
    const-string/jumbo v3, "ChooseLockPattern"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[mForPrivateModeBackupKey] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/settings/ChooseLockPattern;->mForPrivateModeBackupKey:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v5, "isFromKnoxFinger"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mIsFromKnoxFinger:Z

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v5, "fromKnoxKeyguard"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/ChooseLockPattern;->mIsEnforcedMultifactorNReset:Z

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v5, "knox_userId"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/settings/ChooseLockPattern;->mKnoxUserId:I

    .line 235
    const-string/jumbo v3, "ChooseLockPattern"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[KNOX FINGER] : init, mIsFromKnoxFinger:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/settings/ChooseLockPattern;->mIsFromKnoxFinger:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v5, 0x64

    if-lt v3, v5, :cond_2

    .line 237
    const-string/jumbo v3, "persona"

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockPattern;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    .line 238
    .local v2, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    const/4 v1, 0x0

    .line 239
    .local v1, "pi":Lcom/samsung/android/knox/SemPersonaInfo;
    if-eqz v2, :cond_1

    .line 240
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v1

    .line 242
    .end local v1    # "pi":Lcom/samsung/android/knox/SemPersonaInfo;
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 243
    iget v3, v1, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getStateManager(I)Lcom/samsung/android/knox/SemPersonaManager$StateManager;

    move-result-object v3

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    invoke-virtual {v3, v5}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->isAttribute(Landroid/content/pm/PersonaAttribute;)Z

    move-result v3

    .line 242
    if-eqz v3, :cond_2

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 249
    .end local v2    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_2
    const-string/jumbo v0, ""

    .line 250
    .local v0, "msg":Ljava/lang/CharSequence;
    sget-boolean v3, Lcom/android/settings/ChooseLockPattern;->mFromPersonalPage:Z

    if-nez v3, :cond_3

    sget-boolean v3, Lcom/android/settings/ChooseLockPattern;->mForPrivateModeBackupKey:Z

    if-eqz v3, :cond_5

    .line 251
    :cond_3
    const v3, 0x7f0b0c51

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockPattern;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 255
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern;->setTitle(Ljava/lang/CharSequence;)V

    .line 209
    return-void

    .end local v0    # "msg":Ljava/lang/CharSequence;
    :cond_4
    move v3, v4

    .line 229
    goto/16 :goto_0

    .line 253
    .restart local v0    # "msg":Ljava/lang/CharSequence;
    :cond_5
    const v3, 0x7f0b17de

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockPattern;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1
.end method
