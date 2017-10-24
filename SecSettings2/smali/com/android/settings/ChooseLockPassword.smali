.class public Lcom/android/settings/ChooseLockPassword;
.super Lcom/android/settings/SettingsActivity;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;,
        Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;
    }
.end annotation


# static fields
.field private static LOCKSCREEN_PASSWORD_PIN_BUTTON:I

.field public static isChangePwdRequired:Z

.field private static mAppLockBackupKey:Ljava/lang/String;

.field private static mAppLock_isPin:Z

.field private static mForAppLockBackupKey:Z

.field private static mForFace:Z

.field private static mForFingerprint:Z

.field private static mForIris:Z

.field private static mForPrivateModeBackupKey:Z

.field private static mFromAppLock:Z

.field private static mFromPersonalPage:Z

.field private static mImm:Landroid/view/inputmethod/InputMethodManager;

.field private static mIsEnforcedMultifactorNReset:Z

.field private static mIsFromKnoxFinger:Z

.field private static mIsPin:Z

.field private static mIsRecovery:Z

.field private static mKnoxEnforcePassword:Z

.field private static mPersonalPage_isPin:Z

.field private static mRQuality:I


# instance fields
.field private mAllowHomeAndBack:Z


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/settings/ChooseLockPassword;->LOCKSCREEN_PASSWORD_PIN_BUTTON:I

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/ChooseLockPassword;->mAppLockBackupKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    sget-object v0, Lcom/android/settings/ChooseLockPassword;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic -get11()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mIsEnforcedMultifactorNReset:Z

    return v0
.end method

.method static synthetic -get12()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mIsFromKnoxFinger:Z

    return v0
.end method

.method static synthetic -get13()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mIsPin:Z

    return v0
.end method

.method static synthetic -get14()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mIsRecovery:Z

    return v0
.end method

.method static synthetic -get15()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mKnoxEnforcePassword:Z

    return v0
.end method

.method static synthetic -get16()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mPersonalPage_isPin:Z

    return v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mAppLock_isPin:Z

    return v0
.end method

.method static synthetic -get3()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mForAppLockBackupKey:Z

    return v0
.end method

.method static synthetic -get4()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mForFace:Z

    return v0
.end method

.method static synthetic -get5()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mForFingerprint:Z

    return v0
.end method

.method static synthetic -get6()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mForIris:Z

    return v0
.end method

.method static synthetic -get7()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mForPrivateModeBackupKey:Z

    return v0
.end method

.method static synthetic -get8()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mFromAppLock:Z

    return v0
.end method

.method static synthetic -get9()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mFromPersonalPage:Z

    return v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/android/settings/ChooseLockPassword;->LOCKSCREEN_PASSWORD_PIN_BUTTON:I

    return p0
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/ChooseLockPassword;->mFromAppLock:Z

    return p0
.end method

.method static synthetic -set2(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/ChooseLockPassword;->mFromPersonalPage:Z

    return p0
.end method

.method static synthetic -set3(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    sput-object p0, Lcom/android/settings/ChooseLockPassword;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static synthetic -set4(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/ChooseLockPassword;->mIsEnforcedMultifactorNReset:Z

    return p0
.end method

.method static synthetic -set5(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/ChooseLockPassword;->mIsRecovery:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/ChooseLockPassword;Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockPassword;->allowHomeAndBack(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/ChooseLockPassword;I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockPassword;->sendIntentToKnoxKeyguard(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/ChooseLockPassword;I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockPassword;->sendIntentToMDMFW(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 143
    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    .line 152
    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mForFingerprint:Z

    .line 153
    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mForIris:Z

    .line 154
    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mForFace:Z

    .line 155
    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mIsFromKnoxFinger:Z

    .line 156
    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mIsRecovery:Z

    .line 158
    sput-object v1, Lcom/android/settings/ChooseLockPassword;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 160
    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mFromPersonalPage:Z

    .line 161
    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mPersonalPage_isPin:Z

    .line 162
    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mForPrivateModeBackupKey:Z

    .line 163
    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mForAppLockBackupKey:Z

    .line 164
    sput-object v1, Lcom/android/settings/ChooseLockPassword;->mAppLockBackupKey:Ljava/lang/String;

    .line 165
    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mKnoxEnforcePassword:Z

    .line 166
    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mIsEnforcedMultifactorNReset:Z

    .line 168
    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mFromAppLock:Z

    .line 169
    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mAppLock_isPin:Z

    .line 132
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockPassword;->mAllowHomeAndBack:Z

    .line 132
    return-void
.end method

.method private allowHomeAndBack(Z)V
    .locals 5
    .param p1, "allow"    # Z

    .prologue
    .line 340
    iput-boolean p1, p0, Lcom/android/settings/ChooseLockPassword;->mAllowHomeAndBack:Z

    .line 341
    if-nez p1, :cond_0

    .line 342
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 344
    .local v1, "mWindowManager":Landroid/view/IWindowManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    .line 345
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0xbb

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x3e9

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .end local v1    # "mWindowManager":Landroid/view/IWindowManager;
    :cond_0
    :goto_0
    return-void

    .line 348
    .restart local v1    # "mWindowManager":Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static createIntent(Landroid/content/Context;IIIZJLjava/lang/String;I)Landroid/content/Intent;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "quality"    # I
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I
    .param p4, "requirePasswordToDecrypt"    # Z
    .param p5, "challenge"    # J
    .param p7, "password"    # Ljava/lang/String;
    .param p8, "userId"    # I

    .prologue
    .line 238
    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v8, p8

    .line 237
    invoke-static/range {v2 .. v8}, Lcom/android/settings/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZZI)Landroid/content/Intent;

    move-result-object v9

    .line 239
    .local v9, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "has_challenge"

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 240
    const-string/jumbo v2, "challenge"

    move-wide/from16 v0, p5

    invoke-virtual {v9, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 241
    const-string/jumbo v2, "password"

    move-object/from16 v0, p7

    invoke-virtual {v9, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    return-object v9
.end method

.method public static createIntent(Landroid/content/Context;IIIZLjava/lang/String;)Landroid/content/Intent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "quality"    # I
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I
    .param p4, "requirePasswordToDecrypt"    # Z
    .param p5, "password"    # Ljava/lang/String;

    .prologue
    .line 205
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 204
    invoke-static/range {v0 .. v5}, Lcom/android/settings/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZZ)Landroid/content/Intent;

    move-result-object v6

    .line 206
    .local v6, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "password"

    invoke-virtual {v6, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    return-object v6
.end method

.method public static createIntent(Landroid/content/Context;IIIZLjava/lang/String;I)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "quality"    # I
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I
    .param p4, "requirePasswordToDecrypt"    # Z
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "userId"    # I

    .prologue
    .line 212
    invoke-static/range {p0 .. p5}, Lcom/android/settings/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 214
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;IIIZZ)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "quality"    # I
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I
    .param p4, "requirePasswordToDecrypt"    # Z
    .param p5, "confirmCredentials"    # Z

    .prologue
    .line 184
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/settings/ChooseLockPassword;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 185
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "lockscreen.password_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    const-string/jumbo v1, "lockscreen.password_min"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    const-string/jumbo v1, "lockscreen.password_max"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    const-string/jumbo v1, "confirm_credentials"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 189
    const-string/jumbo v1, "extra_require_password"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 190
    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;IIIZZI)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "quality"    # I
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I
    .param p4, "requirePasswordToDecrypt"    # Z
    .param p5, "confirmCredentials"    # Z
    .param p6, "userId"    # I

    .prologue
    .line 196
    invoke-static/range {p0 .. p5}, Lcom/android/settings/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZZ)Landroid/content/Intent;

    move-result-object v0

    .line 198
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    return-object v0
.end method

.method private sendIntentToKnoxKeyguard(I)V
    .locals 5
    .param p1, "resultCode"    # I

    .prologue
    .line 366
    const/4 v0, 0x0

    .line 367
    .local v0, "knoxIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "knoxIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.knox.securefolder.keyguard.PASSWORD_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    .local v0, "knoxIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.knox.securefolder"

    const-string/jumbo v3, "com.samsung.knox.securefolder.keyguard.KnoxKeyguardReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 375
    :goto_0
    const-string/jumbo v1, "resetResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 376
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 377
    sget-boolean v1, Lcom/android/settings/ChooseLockPassword;->mIsEnforcedMultifactorNReset:Z

    if-eqz v1, :cond_0

    .line 378
    const-string/jumbo v1, "first_lock_type"

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "first_lock_type"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 380
    :cond_0
    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ChooseLockPassword;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 364
    return-void

    .line 371
    .local v0, "knoxIntent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "knoxIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.knox.kss.PASSWORD_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    .local v0, "knoxIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.knox.kss"

    const-string/jumbo v3, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private sendIntentToMDMFW(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 352
    return-void
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
    .line 252
    const-class v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 176
    .local v0, "modIntent":Landroid/content/Intent;
    const-string/jumbo v1, ":settings:show_fragment"

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getFragmentClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string/jumbo v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 178
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 247
    const-class v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 248
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 258
    sput-boolean v3, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    .line 263
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 265
    sget-boolean v1, Lcom/android/settings/ChooseLockPassword;->mIsRecovery:Z

    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v4, 0x80000

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 269
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->isFloating()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v4, -0x80000000

    invoke-virtual {v1, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 273
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "lockscreen.password_type"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/settings/ChooseLockPassword;->mRQuality:I

    .line 274
    sget v1, Lcom/android/settings/ChooseLockPassword;->mRQuality:I

    const/high16 v4, 0x20000

    if-eq v4, v1, :cond_3

    .line 275
    sget v1, Lcom/android/settings/ChooseLockPassword;->mRQuality:I

    const/high16 v4, 0x30000

    if-ne v4, v1, :cond_4

    move v1, v2

    .line 274
    :goto_0
    sput-boolean v1, Lcom/android/settings/ChooseLockPassword;->mIsPin:Z

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "from_personal"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ChooseLockPassword;->mFromPersonalPage:Z

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "from_applock"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ChooseLockPassword;->mFromAppLock:Z

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "personal_mQuality"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ChooseLockPassword;->mPersonalPage_isPin:Z

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "applock_mQuality"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ChooseLockPassword;->mAppLock_isPin:Z

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "for_fingerprint"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ChooseLockPassword;->mForFingerprint:Z

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "for_iris"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ChooseLockPassword;->mForIris:Z

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "for_face"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ChooseLockPassword;->mForFace:Z

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "knoxEnforcePassword"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ChooseLockPassword;->mKnoxEnforcePassword:Z

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "fromKnoxKeyguard"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ChooseLockPassword;->mIsEnforcedMultifactorNReset:Z

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "forPrivateBackupKey"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ChooseLockPassword;->mForPrivateModeBackupKey:Z

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "forAppLockBackupKey"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/ChooseLockPassword;->mAppLockBackupKey:Ljava/lang/String;

    .line 289
    sget-object v1, Lcom/android/settings/ChooseLockPassword;->mAppLockBackupKey:Ljava/lang/String;

    if-eqz v1, :cond_5

    :goto_1
    sput-boolean v2, Lcom/android/settings/ChooseLockPassword;->mForAppLockBackupKey:Z

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "isFromKnoxFinger"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ChooseLockPassword;->mIsFromKnoxFinger:Z

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "isRecovery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ChooseLockPassword;->mIsRecovery:Z

    .line 296
    const-string/jumbo v0, ""

    .line 297
    .local v0, "msg":Ljava/lang/CharSequence;
    sget-boolean v1, Lcom/android/settings/ChooseLockPassword;->mFromPersonalPage:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/settings/ChooseLockPassword;->mForPrivateModeBackupKey:Z

    if-eqz v1, :cond_7

    .line 298
    :cond_2
    sget-boolean v1, Lcom/android/settings/ChooseLockPassword;->mPersonalPage_isPin:Z

    if-eqz v1, :cond_6

    const v1, 0x7f0b0a72

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 305
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->setTitle(Ljava/lang/CharSequence;)V

    .line 256
    return-void

    .end local v0    # "msg":Ljava/lang/CharSequence;
    :cond_3
    move v1, v2

    .line 274
    goto/16 :goto_0

    :cond_4
    move v1, v3

    .line 275
    goto/16 :goto_0

    :cond_5
    move v2, v3

    .line 289
    goto :goto_1

    .line 299
    .restart local v0    # "msg":Ljava/lang/CharSequence;
    :cond_6
    const v1, 0x7f0b0a74

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    .line 301
    :cond_7
    sget-boolean v1, Lcom/android/settings/ChooseLockPassword;->mIsPin:Z

    if-eqz v1, :cond_8

    const v1, 0x7f0b1431

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    .line 302
    :cond_8
    const v1, 0x7f0b142f

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 386
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onDestroy()V

    .line 385
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 311
    if-eq p1, v3, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 312
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ge v1, v4, :cond_1

    sget-boolean v1, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockPassword;->mAllowHomeAndBack:Z

    if-eqz v1, :cond_5

    .line 325
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockPassword;->mAllowHomeAndBack:Z

    if-eqz v1, :cond_2

    .line 326
    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockPassword;->sendIntentToMDMFW(I)V

    .line 330
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockPassword;->mAllowHomeAndBack:Z

    if-nez v1, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-lt v1, v4, :cond_4

    .line 331
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockPassword;->sendIntentToKnoxKeyguard(I)V

    .line 336
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 313
    :cond_5
    if-ne p1, v3, :cond_7

    .line 314
    invoke-static {}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-get0()Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    move-result-object v0

    .line 315
    .local v0, "mFragmentObj":Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;
    invoke-virtual {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 316
    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-get8(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-eq v1, v2, :cond_6

    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-get8(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v1, v2, :cond_7

    .line 317
    :cond_6
    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-get6(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    sget-object v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 322
    .end local v0    # "mFragmentObj":Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;
    :cond_7
    const/4 v1, 0x1

    return v1
.end method
