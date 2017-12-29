.class public Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;
.super Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;
.source "NfcOsaifukeitaiSettingsKDI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$1;,
        Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$2;
    }
.end annotation


# instance fields
.field private mABeam:Landroid/preference/PreferenceScreen;

.field private mCashbee:Landroid/preference/PreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLockNumInit:Landroid/preference/PreferenceScreen;

.field private mLockNumchg:Landroid/preference/PreferenceScreen;

.field private mMenu_Korea:Z

.field private mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

.field private mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

.field private mNfclock:Landroid/preference/PreferenceScreen;

.field private mRWp2p:Landroid/preference/PreferenceScreen;

.field private mRetry_counter:I

.field private mRoot:Landroid/preference/PreferenceScreen;

.field private mSetLayout:Z

.field private mUimNfcSupport:Z

.field private mfilter:Landroid/content/IntentFilter;

.field private mfilter_apk:Landroid/content/IntentFilter;

.field nfcBroadcast:Landroid/content/BroadcastReceiver;

.field private uimDetectAction:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRetry_counter:I

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->uimDetectAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRetry_counter:I

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mUimNfcSupport:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;II)V
    .locals 0
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->list_items_update(II)V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;-><init>()V

    .line 68
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    .line 69
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    .line 70
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    .line 71
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    .line 72
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumchg:Landroid/preference/PreferenceScreen;

    .line 73
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumInit:Landroid/preference/PreferenceScreen;

    .line 74
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    .line 75
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRoot:Landroid/preference/PreferenceScreen;

    .line 77
    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mMenu_Korea:Z

    .line 78
    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mSetLayout:Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mUimNfcSupport:Z

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mHandler:Landroid/os/Handler;

    .line 85
    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRetry_counter:I

    .line 104
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$1;-><init>(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    .line 546
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$2;-><init>(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->uimDetectAction:Ljava/lang/Runnable;

    .line 89
    return-void
.end method

.method constructor <init>(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "mNfclock"    # Landroid/preference/PreferenceScreen;
    .param p2, "mRWp2p"    # Landroid/preference/PreferenceScreen;
    .param p3, "mABeam"    # Landroid/preference/PreferenceScreen;
    .param p4, "mCashbee"    # Landroid/preference/PreferenceScreen;
    .param p5, "mLockNumchg"    # Landroid/preference/PreferenceScreen;
    .param p6, "mLockNumInit"    # Landroid/preference/PreferenceScreen;
    .param p7, "mNfcPaymentSettings"    # Landroid/preference/PreferenceScreen;
    .param p8, "mRoot"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;-><init>()V

    .line 68
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    .line 69
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    .line 70
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    .line 71
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    .line 72
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumchg:Landroid/preference/PreferenceScreen;

    .line 73
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumInit:Landroid/preference/PreferenceScreen;

    .line 74
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    .line 75
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRoot:Landroid/preference/PreferenceScreen;

    .line 77
    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mMenu_Korea:Z

    .line 78
    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mSetLayout:Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mUimNfcSupport:Z

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mHandler:Landroid/os/Handler;

    .line 85
    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRetry_counter:I

    .line 104
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$1;-><init>(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    .line 546
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI$2;-><init>(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->uimDetectAction:Ljava/lang/Runnable;

    .line 94
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    .line 95
    iput-object p2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    .line 96
    iput-object p3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    .line 97
    iput-object p4, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    .line 98
    iput-object p5, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumchg:Landroid/preference/PreferenceScreen;

    .line 99
    iput-object p6, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumInit:Landroid/preference/PreferenceScreen;

    .line 100
    iput-object p7, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    .line 101
    iput-object p8, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRoot:Landroid/preference/PreferenceScreen;

    .line 93
    return-void
.end method

.method private List_items_settings_of_cashbee(Z)V
    .locals 3
    .param p1, "set"    # Z

    .prologue
    .line 499
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[S] List_items_settings_of_cashbee set = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mMenu_Korea:Z

    if-nez v0, :cond_1

    .line 503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mMenu_Korea:Z

    .line 509
    :cond_0
    :goto_0
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v1, "[E] List_items_settings_of_cashbee "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return-void

    .line 504
    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mMenu_Korea:Z

    if-eqz v0, :cond_0

    .line 506
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mMenu_Korea:Z

    goto :goto_0
.end method

.method private List_items_update_of_ABeam(II)V
    .locals 13
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 365
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v3, "[S] List_items_update_of_ABeam"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v10, 0x0

    .line 368
    .local v10, "summary_resId":I
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 369
    return-void

    .line 374
    :cond_0
    const/4 v8, 0x1

    .line 377
    .local v8, "mMdmNfcPolicy":Z
    const-string/jumbo v0, "content://com.sec.knox.provider2/MiscPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 378
    .local v1, "mUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 379
    const-string/jumbo v3, "isNFCStateChangeAllowed"

    move-object v4, v2

    move-object v5, v2

    .line 378
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 380
    .local v7, "mDevSettingCr":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 381
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 383
    :try_start_0
    const-string/jumbo v0, "isNFCStateChangeAllowed"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    const/4 v8, 0x0

    .line 389
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 395
    :cond_2
    :goto_0
    if-gt v12, p1, :cond_7

    const/16 v0, 0xf

    if-gt p1, v0, :cond_7

    .line 396
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 397
    const v10, 0x7f0b1d09

    .line 428
    :cond_3
    :goto_1
    if-eqz v10, :cond_4

    .line 429
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 432
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->get3lmRemoteLockStatus()Z

    move-result v0

    if-nez v0, :cond_5

    .line 433
    const/4 v0, 0x2

    if-gt v0, p2, :cond_6

    .line 434
    const/4 v0, 0x3

    if-gt p2, v0, :cond_6

    .line 435
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 438
    :cond_6
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v2, "[E] List_items_update_of_ABeam"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return-void

    .line 386
    :catch_0
    move-exception v6

    .line 387
    .local v6, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_1
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 388
    .end local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_0
    move-exception v0

    .line 389
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 388
    throw v0

    .line 398
    :cond_7
    const/16 v0, 0x80

    if-ne p2, v0, :cond_8

    .line 399
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 400
    const v10, 0x7f0b1254

    goto :goto_1

    .line 402
    :cond_8
    if-nez p1, :cond_c

    if-nez p2, :cond_c

    .line 403
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 405
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getRWP2pStatus()I

    move-result v9

    .line 406
    .local v9, "result_rwp2p":I
    const/16 v0, 0xd

    if-ne v9, v0, :cond_b

    .line 407
    if-eqz v8, :cond_9

    .line 408
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 413
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getABeamStatus()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 414
    const v10, 0x7f0b1d08

    goto :goto_1

    .line 410
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_2

    .line 416
    :cond_a
    const v10, 0x7f0b1d09

    goto :goto_1

    .line 418
    :cond_b
    const/16 v0, 0xb

    if-ne v9, v0, :cond_3

    .line 419
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 420
    const v10, 0x7f0b1d09

    goto :goto_1

    .line 423
    .end local v9    # "result_rwp2p":I
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 424
    const v10, 0x7f0b1d09

    goto/16 :goto_1
.end method

.method private List_items_update_of_LockNumInit(II)V
    .locals 2
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    .line 530
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v1, "[S] List_items_update_of_LockNumInit "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumInit:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 533
    return-void

    .line 536
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mUimNfcSupport:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x80

    if-ne p2, v0, :cond_2

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumInit:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 543
    :goto_0
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v1, "[E] List_items_update_of_LockNumInit "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    return-void

    .line 536
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->get3lmRemoteLockStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 537
    const/4 v0, 0x2

    if-gt v0, p2, :cond_3

    const/4 v0, 0x3

    if-le p2, v0, :cond_1

    .line 540
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumInit:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

.method private List_items_update_of_LockNumchg(II)V
    .locals 2
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    .line 513
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v1, "[S] List_items_update_of_LockNumchg "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumchg:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 516
    return-void

    .line 519
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mUimNfcSupport:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x80

    if-ne p2, v0, :cond_2

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumchg:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 526
    :goto_0
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v1, "[E] List_items_update_of_LockNumchg "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-void

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->get3lmRemoteLockStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 520
    const/4 v0, 0x2

    if-gt v0, p2, :cond_3

    const/4 v0, 0x3

    if-le p2, v0, :cond_1

    .line 523
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumchg:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

.method private List_items_update_of_TapAndPay(II)V
    .locals 3
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    const/4 v2, 0x0

    .line 477
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v1, "[S] List_items_update_of_TapAndPay"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 480
    return-void

    .line 483
    :cond_0
    const/16 v0, 0x80

    if-ne p2, v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 491
    :goto_0
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v1, "[E] List_items_update_of_TapAndPay"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    return-void

    .line 485
    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 486
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 488
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

.method private List_items_update_of_cashbee(II)V
    .locals 6
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 442
    const-string/jumbo v2, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v3, "[S] List_items_update_of_cashbee "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    if-nez v2, :cond_0

    .line 445
    return-void

    .line 448
    :cond_0
    const/4 v0, 0x0

    .line 449
    .local v0, "summary_resId":I
    if-nez p1, :cond_4

    if-nez p2, :cond_4

    .line 450
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 455
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getNfcTypeSettings()I

    move-result v1

    .line 457
    .local v1, "type_settings":I
    if-ne v1, v5, :cond_5

    .line 458
    const v0, 0x7f0b1248

    .line 463
    :goto_1
    if-eqz v0, :cond_1

    .line 464
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 467
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->get3lmRemoteLockStatus()Z

    move-result v2

    if-nez v2, :cond_2

    .line 468
    const/4 v2, 0x2

    if-gt v2, p2, :cond_3

    .line 469
    const/4 v2, 0x3

    if-gt p2, v2, :cond_3

    .line 470
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 473
    :cond_3
    const-string/jumbo v2, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v3, "[E] List_items_update_of_cashbee"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-void

    .line 452
    .end local v1    # "type_settings":I
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 460
    .restart local v1    # "type_settings":I
    :cond_5
    const v0, 0x7f0b1249

    goto :goto_1
.end method

.method private List_items_update_of_nfclock(II)V
    .locals 7
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    const/16 v6, 0x100

    const/16 v5, 0x80

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 217
    const-string/jumbo v1, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v2, "[S] List_items_update_of_nfclock "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    if-nez v1, :cond_0

    .line 220
    return-void

    .line 223
    :cond_0
    const/4 v0, 0x0

    .line 225
    .local v0, "summary_resId":I
    if-ne p2, v5, :cond_3

    .line 226
    const v0, 0x7f0b1254

    .line 252
    :goto_0
    if-eqz v0, :cond_1

    .line 253
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 256
    :cond_1
    if-eq p2, v5, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mUimNfcSupport:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->get3lmRemoteLockStatus()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 258
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 267
    :goto_1
    const-string/jumbo v1, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v2, "[E] List_items_update_of_nfclock"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void

    .line 227
    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mUimNfcSupport:Z

    if-nez v1, :cond_7

    .line 228
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->checkSimMno()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 229
    if-nez p1, :cond_4

    .line 230
    const v0, 0x7f0b1255

    goto :goto_0

    .line 232
    :cond_4
    const v0, 0x7f0b1256

    goto :goto_0

    .line 235
    :cond_5
    if-nez p1, :cond_6

    .line 236
    const v0, 0x7f0b1257

    goto :goto_0

    .line 238
    :cond_6
    const v0, 0x7f0b1258

    goto :goto_0

    .line 241
    :cond_7
    if-ne p1, v6, :cond_8

    if-ne p2, v6, :cond_8

    .line 242
    const-string/jumbo v1, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v2, "[*] List_items_update_of_nfclock   :   Get CLF Status and UIM Status  is Error"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const v0, 0x7f0b1d09

    .line 241
    goto :goto_0

    .line 245
    :cond_8
    if-nez p1, :cond_9

    if-nez p2, :cond_9

    .line 246
    const v0, 0x7f0b1d09

    .line 245
    goto :goto_0

    .line 248
    :cond_9
    const v0, 0x7f0b1d08

    goto :goto_0

    .line 257
    :cond_a
    if-gt v4, p2, :cond_b

    const/4 v1, 0x3

    if-le p2, v1, :cond_2

    .line 260
    :cond_b
    if-gt v4, p1, :cond_c

    const/16 v1, 0xf

    if-gt p1, v1, :cond_c

    .line 261
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    .line 263
    :cond_c
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1
.end method

.method private List_items_update_of_nfrwp2p(II)V
    .locals 12
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    .line 271
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v2, "[S] List_items_update_of_nfrwp2p"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v11, 0x0

    .line 274
    .local v11, "summary_resId":I
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 275
    return-void

    .line 281
    :cond_0
    const/4 v8, 0x1

    .line 284
    .local v8, "mMdmNfcPolicy":Z
    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 285
    .local v1, "mUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 286
    const-string/jumbo v3, "isNFCEnabled"

    .line 285
    const/4 v2, 0x0

    .line 286
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 285
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 287
    .local v9, "mRestrictionCr":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 288
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 290
    :try_start_0
    const-string/jumbo v0, "isNFCEnabled"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    const/4 v8, 0x0

    .line 296
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 300
    :cond_2
    :goto_0
    const-string/jumbo v0, "content://com.sec.knox.provider2/MiscPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 301
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 302
    const-string/jumbo v3, "isNFCStateChangeAllowed"

    .line 301
    const/4 v2, 0x0

    .line 302
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 301
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 303
    .local v7, "mDevSettingCr":Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 304
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 306
    :try_start_1
    const-string/jumbo v0, "isNFCStateChangeAllowed"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_3

    .line 307
    const/4 v8, 0x0

    .line 312
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 317
    :cond_4
    :goto_1
    const/4 v0, 0x1

    if-gt v0, p1, :cond_9

    const/16 v0, 0xf

    if-gt p1, v0, :cond_9

    .line 318
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 319
    const v11, 0x7f0b1d09

    .line 351
    :cond_5
    :goto_2
    if-eqz v11, :cond_6

    .line 352
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 355
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->get3lmRemoteLockStatus()Z

    move-result v0

    if-nez v0, :cond_7

    .line 356
    const/4 v0, 0x2

    if-gt v0, p2, :cond_8

    .line 357
    const/4 v0, 0x3

    if-gt p2, v0, :cond_8

    .line 358
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 361
    :cond_8
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v2, "[E] List_items_update_of_nfrwp2p"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void

    .line 293
    .end local v7    # "mDevSettingCr":Landroid/database/Cursor;
    :catch_0
    move-exception v6

    .line 294
    .local v6, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_2
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 296
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 295
    .end local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_0
    move-exception v0

    .line 296
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 295
    throw v0

    .line 309
    .restart local v7    # "mDevSettingCr":Landroid/database/Cursor;
    :catch_1
    move-exception v6

    .line 310
    .restart local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_3
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 312
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 311
    .end local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_1
    move-exception v0

    .line 312
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 311
    throw v0

    .line 320
    :cond_9
    if-nez v8, :cond_b

    .line 321
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 322
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getRWP2pStatus()I

    move-result v10

    .line 323
    .local v10, "result":I
    const/16 v0, 0xb

    if-ne v10, v0, :cond_a

    .line 324
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v2, "EDM : NFC policy changed. R/W, P2P function can\'t be enabled"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const v11, 0x7f0b1d09

    goto :goto_2

    .line 326
    :cond_a
    const/16 v0, 0xd

    if-ne v10, v0, :cond_5

    .line 327
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v2, "EDM : NFC policy changed. R/W, P2P function can\'t be changed"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const v11, 0x7f0b1d08

    goto :goto_2

    .line 331
    .end local v10    # "result":I
    :cond_b
    const/16 v0, 0x80

    if-ne p2, v0, :cond_c

    .line 332
    const v11, 0x7f0b1254

    .line 333
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_2

    .line 334
    :cond_c
    if-nez p1, :cond_f

    if-nez p2, :cond_f

    .line 335
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 337
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getRWP2pStatus()I

    move-result v10

    .line 338
    .restart local v10    # "result":I
    const/16 v0, 0xd

    if-ne v10, v0, :cond_d

    .line 339
    const v11, 0x7f0b1d08

    goto/16 :goto_2

    .line 340
    :cond_d
    const/16 v0, 0xb

    if-ne v10, v0, :cond_e

    .line 341
    const v11, 0x7f0b1d09

    goto/16 :goto_2

    .line 343
    :cond_e
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v2, "[*] List_items_update_of_nfrwp2p not changed"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 346
    .end local v10    # "result":I
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 347
    const v11, 0x7f0b1d09

    goto/16 :goto_2
.end method

.method private list_items_update(II)V
    .locals 3
    .param p1, "clfLock"    # I
    .param p2, "uimLock"    # I

    .prologue
    .line 189
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v1, "[S] list_items_update"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[*] list_items_update  :  clfLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , uimLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->checkUIMSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mUimNfcSupport:Z

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->List_items_update_of_nfclock(II)V

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->List_items_update_of_nfrwp2p(II)V

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->List_items_update_of_ABeam(II)V

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->List_items_update_of_LockNumchg(II)V

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->List_items_update_of_LockNumInit(II)V

    .line 200
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->List_items_update_of_TapAndPay(II)V

    .line 202
    const-string/jumbo v0, "SENN82AB"

    const-string/jumbo v1, "S3FWRN5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v1, "[E] list_items_update"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getMobileCashbee_DisplayJudging()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->List_items_settings_of_cashbee(Z)V

    .line 208
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mMenu_Korea:Z

    if-eqz v0, :cond_1

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->List_items_update_of_cashbee(II)V

    .line 213
    :cond_1
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v1, "[E] list_items_update"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method


# virtual methods
.method public getKoreaMenu()Z
    .locals 1

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mMenu_Korea:Z

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 6
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 121
    const-string/jumbo v1, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v2, "[S] onCreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mContext:Landroid/content/Context;

    .line 124
    new-instance v1, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    .line 127
    const-string/jumbo v1, "[NfcOsaifukeitaiSettingsKDI]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mNfclock = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string/jumbo v1, "[NfcOsaifukeitaiSettingsKDI]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRWp2p = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRWp2p:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string/jumbo v1, "[NfcOsaifukeitaiSettingsKDI]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mABeam = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string/jumbo v1, "[NfcOsaifukeitaiSettingsKDI]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCashbee = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string/jumbo v1, "[NfcOsaifukeitaiSettingsKDI]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mLockNumchg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumchg:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string/jumbo v1, "[NfcOsaifukeitaiSettingsKDI]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mLockNumInit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mLockNumInit:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string/jumbo v1, "[NfcOsaifukeitaiSettingsKDI]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mNfcPaymentSettings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getUIMLockStatus()I

    move-result v0

    .line 138
    .local v0, "mUIMState":I
    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    .line 139
    :cond_0
    iput v4, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRetry_counter:I

    .line 140
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 141
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->uimDetectAction:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    const-string/jumbo v1, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v2, "get UIMLock status T.O. timer start "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .end local v0    # "mUIMState":I
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter:Landroid/content/IntentFilter;

    .line 146
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter:Landroid/content/IntentFilter;

    if-eqz v1, :cond_2

    .line 147
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.action.nfc.policychanged"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.android.settings.nfc.ACTION_OSAIFUKEITAI_NETWORK_CHG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter_apk:Landroid/content/IntentFilter;

    .line 155
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter_apk:Landroid/content/IntentFilter;

    if-eqz v1, :cond_3

    .line 156
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter_apk:Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter_apk:Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter_apk:Landroid/content/IntentFilter;

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter_apk:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->setHasOptionsMenu(Z)V

    .line 162
    const-string/jumbo v1, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v2, "[E] onCreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 183
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v1, "[S] onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 185
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v1, "[E] onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 166
    const-string/jumbo v2, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v3, "[S] resume"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mfilter_apk:Landroid/content/IntentFilter;

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getCLFLockStatus()I

    move-result v0

    .line 171
    .local v0, "clfLock":I
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getUIMLockStatus()I

    move-result v1

    .line 173
    .local v1, "uimLock":I
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->list_items_update(II)V

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->getKoreaMenu()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRoot:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mRoot:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;->mCashbee:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 179
    :cond_0
    const-string/jumbo v2, "[NfcOsaifukeitaiSettingsKDI]"

    const-string/jumbo v3, "[E] resume"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method
