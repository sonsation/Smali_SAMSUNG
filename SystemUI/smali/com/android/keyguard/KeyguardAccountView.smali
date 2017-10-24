.class public Lcom/android/keyguard/KeyguardAccountView;
.super Landroid/widget/LinearLayout;
.source "KeyguardAccountView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardAccountView$SACallback;
    }
.end annotation


# instance fields
.field private final MINIMUM_PASSWORD_LENGTH_BEFORE_REPORT:I

.field cm:Landroid/net/ConnectivityManager;

.field private final countryCodeChina:Ljava/lang/String;

.field private final countryCodeIndia:Ljava/lang/String;

.field private isNetworkConnected:Z

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCheckingDialog:Landroid/app/ProgressDialog;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCurrentMobileKeyboardState:I

.field private mISaService:Lcom/msc/sa/aidl/ISAService;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLogin:Landroid/widget/EditText;

.field private mOk:Landroid/widget/Button;

.field private mPassword:Landroid/widget/EditText;

.field private mRegistertCode:Ljava/lang/String;

.field private mRequestID:I

.field private mSACallback:Lcom/android/keyguard/KeyguardAccountView$SACallback;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field mServiceConnection:Landroid/content/ServiceConnection;

.field private mShowImeAtScreenOn:Z


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardAccountView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAccountView;->isNetworkConnected:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardAccountView;)Lcom/msc/sa/aidl/ISAService;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mISaService:Lcom/msc/sa/aidl/ISAService;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KeyguardAccountView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/KeyguardAccountView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/KeyguardAccountView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mRegistertCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/KeyguardAccountView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mRequestID:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/KeyguardAccountView$SACallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mSACallback:Lcom/android/keyguard/KeyguardAccountView$SACallback;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/SecurityMessageDisplay;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/keyguard/KeyguardAccountView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mShowImeAtScreenOn:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KeyguardAccountView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardAccountView;->isNetworkConnected:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/KeyguardAccountView;Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAccountView;->mISaService:Lcom/msc/sa/aidl/ISAService;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/KeyguardAccountView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAccountView;->mRegistertCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/keyguard/KeyguardAccountView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardAccountView;->mRequestID:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardAccountView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAccountView;->destroySAConnect()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardAccountView;Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardAccountView;->postOnCheckPasswordResult(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardAccountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardAccountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardAccountView;->isNetworkConnected:Z

    .line 97
    iput-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCurrentMobileKeyboardState:I

    .line 105
    iput-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mISaService:Lcom/msc/sa/aidl/ISAService;

    .line 106
    iput-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mSACallback:Lcom/android/keyguard/KeyguardAccountView$SACallback;

    .line 107
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mRegistertCode:Ljava/lang/String;

    .line 109
    iput-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 110
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguard/KeyguardAccountView;->MINIMUM_PASSWORD_LENGTH_BEFORE_REPORT:I

    .line 111
    const-string/jumbo v0, "86"

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->countryCodeChina:Ljava/lang/String;

    .line 112
    const-string/jumbo v0, "91"

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->countryCodeIndia:Ljava/lang/String;

    .line 113
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAccountView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 114
    const-string/jumbo v1, "connectivity"

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->cm:Landroid/net/ConnectivityManager;

    .line 131
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 132
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardAccountView;->mShowImeAtScreenOn:Z

    .line 133
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    return-void
.end method

.method private asyncCheckSAPassword()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 377
    sget-boolean v4, Lcom/android/keyguard/KeyguardRune;->SUPPORT_AOSP_LOCKOUT:Z

    if-eqz v4, :cond_0

    .line 378
    const-string/jumbo v4, "KeyguardAccountView"

    const-string/jumbo v5, "asyncCheckSAPassword"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    .line 381
    const-string/jumbo v5, "com.osp.app.signin"

    .line 382
    new-instance v6, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 380
    invoke-virtual {v4, v5, v6}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v1

    .line 384
    .local v1, "accounts":[Landroid/accounts/Account;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, "login":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardAccountView;->findIntendedAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 387
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_1

    .line 388
    const-string/jumbo v4, "KeyguardAccountView"

    const-string/jumbo v5, "asyncCheckPassword accoun t== null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-direct {p0, v8}, Lcom/android/keyguard/KeyguardAccountView;->postOnCheckPasswordResult(Z)V

    .line 390
    return-void

    .line 393
    :cond_1
    array-length v4, v1

    if-lez v4, :cond_2

    .line 394
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.msc.action.samsungaccount.REQUEST_SERVICE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    .local v2, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.osp.app.signin"

    const-string/jumbo v6, "com.msc.sa.service.RequestService"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 397
    new-instance v4, Lcom/android/keyguard/KeyguardAccountView$5;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardAccountView$5;-><init>(Lcom/android/keyguard/KeyguardAccountView;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardAccountView;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 422
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAccountView;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 423
    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 422
    const/4 v7, 0x1

    invoke-virtual {v4, v2, v5, v7, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 376
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method private destroySAConnect()V
    .locals 3

    .prologue
    .line 429
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mISaService:Lcom/msc/sa/aidl/ISAService;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAccountView;->mRegistertCode:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/msc/sa/aidl/ISAService;->unregisterCallback(Ljava/lang/String;)Z

    .line 430
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAccountView;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 431
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 432
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mISaService:Lcom/msc/sa/aidl/ISAService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_0
    return-void

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private dissmissProgressDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 545
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 547
    iput-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    .line 544
    :cond_0
    return-void
.end method

.method private findIntendedAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 13
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 453
    iget-object v9, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v9

    .line 454
    const-string/jumbo v10, "com.osp.app.signin"

    .line 455
    new-instance v11, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v12

    invoke-direct {v11, v12}, Landroid/os/UserHandle;-><init>(I)V

    .line 453
    invoke-virtual {v9, v10, v11}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v2

    .line 456
    .local v2, "accounts":[Landroid/accounts/Account;
    const-string/jumbo v9, "KeyguardAccountView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "findIntendedAccount(), accounts.length = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/4 v3, 0x0

    .line 463
    .local v3, "bestAccount":Landroid/accounts/Account;
    const/4 v4, 0x0

    .line 464
    .local v4, "bestScore":I
    const/4 v9, 0x0

    array-length v10, v2

    .end local v3    # "bestAccount":Landroid/accounts/Account;
    :goto_0
    if-ge v9, v10, :cond_8

    aget-object v0, v2, v9

    .line 465
    .local v0, "a":Landroid/accounts/Account;
    const/4 v6, 0x0

    .line 466
    .local v6, "score":I
    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 467
    const/4 v6, 0x4

    .line 488
    :cond_0
    :goto_1
    if-le v6, v4, :cond_7

    .line 489
    move-object v3, v0

    .line 490
    .local v3, "bestAccount":Landroid/accounts/Account;
    move v4, v6

    .line 464
    .end local v3    # "bestAccount":Landroid/accounts/Account;
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 468
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardAccountView;->isStringDouble(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 469
    const-string/jumbo v11, "KeyguardAccountView"

    const-string/jumbo v12, "Id is number case"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "86"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 471
    .local v7, "usernameWithCountryCodeChina":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "91"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 472
    .local v8, "usernameWithCountryCodeIndia":Ljava/lang/String;
    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 473
    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 472
    if-eqz v11, :cond_0

    .line 474
    :cond_3
    const/4 v6, 0x4

    goto :goto_1

    .line 475
    .end local v7    # "usernameWithCountryCodeChina":Ljava/lang/String;
    .end local v8    # "usernameWithCountryCodeIndia":Ljava/lang/String;
    :cond_4
    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 476
    const/4 v6, 0x3

    goto :goto_1

    .line 477
    :cond_5
    const/16 v11, 0x40

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-gez v11, :cond_0

    .line 478
    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/16 v12, 0x40

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 479
    .local v5, "i":I
    if-ltz v5, :cond_0

    .line 480
    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 481
    .local v1, "aUsername":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 482
    const/4 v6, 0x2

    goto :goto_1

    .line 483
    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 484
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 491
    .end local v1    # "aUsername":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_7
    if-ne v6, v4, :cond_1

    .line 492
    const/4 v3, 0x0

    .local v3, "bestAccount":Landroid/accounts/Account;
    goto/16 :goto_2

    .line 495
    .end local v0    # "a":Landroid/accounts/Account;
    .end local v3    # "bestAccount":Landroid/accounts/Account;
    .end local v6    # "score":I
    :cond_8
    return-object v3
.end method

.method private getProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 534
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    .line 535
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_login_checking_password:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 537
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 538
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 539
    const/16 v1, 0x7d9

    .line 538
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private postOnCheckPasswordResult(Z)V
    .locals 3
    .param p1, "success"    # Z

    .prologue
    .line 270
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_AOSP_LOCKOUT:Z

    if-eqz v0, :cond_0

    .line 271
    const-string/jumbo v0, "KeyguardAccountView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "postOnCheckPasswordResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAccountView;->dissmissProgressDialog()V

    .line 274
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/KeyguardAccountView$4;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/KeyguardAccountView$4;-><init>(Lcom/android/keyguard/KeyguardAccountView;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 268
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 189
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 192
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 311
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 312
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 321
    const/4 v0, 0x1

    return v0

    .line 323
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public isStringDouble(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 602
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    const/4 v1, 0x1

    return v1

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return v1
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 251
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 252
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mOk:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    .line 253
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 254
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 255
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 256
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-ge v1, v2, :cond_1

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->kg_login_invalid_input:I

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 258
    return-void

    .line 260
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAccountView;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 261
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAccountView;->asyncCheckSAPassword()V

    .line 250
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :cond_2
    :goto_0
    return-void

    .line 263
    .restart local v0    # "info":Landroid/net/NetworkInfo;
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->no_network_connection:I

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 564
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 565
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAccountView;->dissmissProgressDialog()V

    .line 563
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/16 v3, 0x1000

    const/4 v2, 0x0

    .line 139
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 140
    new-instance v0, Lcom/android/keyguard/KeyguardAccountView$SACallback;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardAccountView$SACallback;-><init>(Lcom/android/keyguard/KeyguardAccountView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mSACallback:Lcom/android/keyguard/KeyguardAccountView$SACallback;

    .line 141
    sget v0, Lcom/android/keyguard/R$id;->login:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAccountView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    .line 144
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 146
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0, v3, v2}, Landroid/widget/EditText;->semSetActionModeMenuItemEnabled(IZ)V

    .line 149
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/KeyguardAccountView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardAccountView$1;-><init>(Lcom/android/keyguard/KeyguardAccountView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 157
    sget v0, Lcom/android/keyguard/R$id;->password:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAccountView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    .line 158
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 160
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v3, v2}, Landroid/widget/EditText;->semSetActionModeMenuItemEnabled(IZ)V

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/KeyguardAccountView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardAccountView$2;-><init>(Lcom/android/keyguard/KeyguardAccountView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 169
    sget v0, Lcom/android/keyguard/R$id;->ok:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAccountView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mOk:Landroid/widget/Button;

    .line 170
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-static {p0}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 173
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAccountView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 174
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAccountView;->reset()V

    .line 138
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAccountView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 554
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAccountView;->dissmissProgressDialog()V

    .line 552
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAccountView;->reset()V

    .line 558
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 195
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    const/4 v2, 0x0

    .line 218
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 219
    if-eqz p2, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAccountView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 217
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 229
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string/jumbo v1, ""

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 230
    new-instance v0, Lcom/android/keyguard/KeyguardAccountView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardAccountView$3;-><init>(Lcom/android/keyguard/KeyguardAccountView;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAccountView;->post(Ljava/lang/Runnable;)Z

    .line 224
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 583
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 181
    return-void
.end method

.method public showMessage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v0, p2}, Lcom/android/keyguard/SecurityMessageDisplay;->setNextMessageColor(I)V

    .line 597
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 595
    return-void
.end method

.method public showPromptReason(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 589
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 573
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 579
    const/4 v0, 0x0

    return v0
.end method

.method public updateChildViewsLook()V
    .locals 0

    .prologue
    .line 610
    return-void
.end method
