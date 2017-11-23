.class public Lcom/android/settings/fingerprint/FingerprintEntry;
.super Landroid/app/Activity;
.source "FingerprintEntry.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintEntry$1;,
        Lcom/android/settings/fingerprint/FingerprintEntry$2;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static isSearchEntry:Z

.field private static mUserId:I


# instance fields
.field private key:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mIdentifyFingerprint:Z

.field private mIsAfw:Z

.field private mIsWaitingResult:Z

.field private mToken:[B


# direct methods
.method static synthetic -get0(Lcom/android/settings/fingerprint/FingerprintEntry;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/fingerprint/FingerprintEntry;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/fingerprint/FingerprintEntry;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic -get3()I
    .locals 1

    sget v0, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/fingerprint/FingerprintEntry;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEntry;->startFragment(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/fingerprint/FingerprintEntry;->isSearchEntry:Z

    .line 472
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEntry$1;

    invoke-direct {v0}, Lcom/android/settings/fingerprint/FingerprintEntry$1;-><init>()V

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintEntry;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    .line 64
    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mToken:[B

    .line 65
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIdentifyFingerprint:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    .line 87
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsAfw:Z

    .line 90
    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 524
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEntry$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEntry$2;-><init>(Lcom/android/settings/fingerprint/FingerprintEntry;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 56
    return-void
.end method

.method private authenticateFingerprint()V
    .locals 4

    .prologue
    .line 221
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v3, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->runRegister()V

    .line 223
    return-void

    .line 226
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 227
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string/jumbo v2, "for_fingerprint_authentication"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 229
    const-string/jumbo v2, "isAfw"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsAfw:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 230
    const-string/jumbo v2, "android.intent.extra.USER_ID"

    sget v3, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    const/16 v2, 0x68

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEntry;->startActivityForResult(Landroid/content/Intent;I)V

    .line 232
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsWaitingResult:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "FpstFingerprintEntry"

    const-string/jumbo v3, "authenticateFingerprint : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    goto :goto_0
.end method

.method private deleteAllFingerprints()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 241
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/16 v1, 0x3e8

    const/4 v4, -0x1

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v0

    if-nez v0, :cond_0

    .line 242
    const-string/jumbo v0, "FpstFingerprintEntry"

    const-string/jumbo v1, "deleteAllFingerprints Success"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v0, 0x1

    return v0

    .line 245
    :cond_0
    const-string/jumbo v0, "FpstFingerprintEntry"

    const-string/jumbo v1, "deleteAllFingerprints Fail"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return v6
.end method

.method private launchChooseOrConfirmLock()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 316
    const-string/jumbo v0, "FpstFingerprintEntry"

    const-string/jumbo v2, "launchConfirmLock "

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 320
    .local v1, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    .line 322
    const v0, 0x7f0b1249

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 323
    const-wide/16 v6, 0x0

    sget v8, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    .line 321
    const/16 v2, 0x65

    move-object v5, v4

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    const-string/jumbo v0, "FpstFingerprintEntry"

    const-string/jumbo v2, "ConfirmLock Fail"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    .line 326
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    .line 315
    :cond_0
    return-void
.end method

.method private runRegister()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 175
    const-string/jumbo v5, "FpstFingerprintEntry"

    const-string/jumbo v6, "There is no enrolled fingerprint. Run RegisterFingerprint!!"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "always_finish_activities"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    .line 179
    const v7, 0x7f0b0108

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintEntry;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 178
    const v7, 0x7f0b06a8

    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "errorMessage":Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 181
    const v6, 0x7f0b069f

    .line 180
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 184
    new-instance v6, Lcom/android/settings/fingerprint/FingerprintEntry$3;

    invoke-direct {v6, p0}, Lcom/android/settings/fingerprint/FingerprintEntry$3;-><init>(Lcom/android/settings/fingerprint/FingerprintEntry;)V

    .line 183
    const v7, 0x104000a

    .line 180
    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 190
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v5, Lcom/android/settings/fingerprint/FingerprintEntry$4;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/FingerprintEntry$4;-><init>(Lcom/android/settings/fingerprint/FingerprintEntry;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 196
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 174
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v2    # "errorMessage":Ljava/lang/String;
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->isInMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 198
    const v5, 0x7f0b072e

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintEntry;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 199
    .local v4, "toast":Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    goto :goto_0

    .line 202
    .end local v4    # "toast":Landroid/widget/Toast;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 203
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "com.android.settings.fingerprint.RegisterFingerprint"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string/jumbo v5, "previousStage"

    const-string/jumbo v6, "fingerprint_entry"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const-string/jumbo v5, "hw_auth_token"

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mToken:[B

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 206
    const/high16 v5, 0x20000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 207
    const-string/jumbo v5, "isAfw"

    iget-boolean v6, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsAfw:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 208
    const-string/jumbo v5, "android.intent.extra.USER_ID"

    sget v6, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    const/16 v5, 0x67

    :try_start_0
    invoke-virtual {p0, v3, v5}, Lcom/android/settings/fingerprint/FingerprintEntry;->startActivityForResult(Landroid/content/Intent;I)V

    .line 211
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsWaitingResult:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_1
    return-void

    .line 212
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v5, "FpstFingerprintEntry"

    const-string/jumbo v6, "runRegister : Activity Not Found !"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    goto :goto_1
.end method

.method private showDatabaseFailureDialog()V
    .locals 4

    .prologue
    .line 400
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 401
    const v2, 0x7f0b069f

    .line 400
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 402
    const v2, 0x7f0b06eb

    .line 400
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 404
    new-instance v2, Lcom/android/settings/fingerprint/FingerprintEntry$7;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintEntry$7;-><init>(Lcom/android/settings/fingerprint/FingerprintEntry;)V

    .line 403
    const v3, 0x104000a

    .line 400
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 411
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEntry$8;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintEntry$8;-><init>(Lcom/android/settings/fingerprint/FingerprintEntry;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 417
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 399
    return-void
.end method

.method private showSensorErrorDialog(I)V
    .locals 4
    .param p1, "Stringid"    # I

    .prologue
    .line 375
    const v1, 0x7f0b06a2

    if-ne p1, v1, :cond_0

    .line 376
    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 375
    if-eqz v1, :cond_0

    .line 377
    const p1, 0x7f0b06a3

    .line 380
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 381
    const v2, 0x7f0b069f

    .line 380
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 384
    new-instance v2, Lcom/android/settings/fingerprint/FingerprintEntry$5;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintEntry$5;-><init>(Lcom/android/settings/fingerprint/FingerprintEntry;)V

    .line 383
    const v3, 0x104000a

    .line 380
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 390
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEntry$6;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintEntry$6;-><init>(Lcom/android/settings/fingerprint/FingerprintEntry;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 396
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 374
    return-void
.end method

.method private startFragment(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 421
    move-object v7, p1

    .line 423
    .local v7, "cxt":Landroid/content/Context;
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/16 v1, 0xa

    new-array v3, v1, [B

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 424
    const-string/jumbo v0, "FpstFingerprintEntry"

    const-string/jumbo v1, "onCreate DB Corrupt"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->deleteAllFingerprints()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->showDatabaseFailureDialog()V

    .line 430
    :goto_0
    return-void

    .line 428
    :cond_0
    const v0, 0x7f0b06a2

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEntry;->showSensorErrorDialog(I)V

    goto :goto_0

    .line 433
    :cond_1
    if-nez p1, :cond_3

    .line 434
    const-string/jumbo v0, "FpstFingerprintEntry"

    const-string/jumbo v1, "startFragment : context is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_2
    :goto_1
    return-void

    .line 436
    :cond_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 437
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v0, ":settings:fragment_args_key"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 439
    const-string/jumbo v0, "fromSearch"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 440
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const-string/jumbo v1, "finger_scanner"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const-string/jumbo v1, "support_samsung_account"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const-string/jumbo v1, "support_web_signin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const-string/jumbo v1, "set_screen_lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 441
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const-string/jumbo v1, "samsung_pay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 440
    if-eqz v0, :cond_5

    .line 442
    :cond_4
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/fingerprint/FingerprintEntry;->isSearchEntry:Z

    .line 443
    const-string/jumbo v0, "FpstFingerprintEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startFragment subMenuSearch: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_5
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mToken:[B

    if-eqz v0, :cond_6

    .line 447
    const-string/jumbo v0, "tokenFromLock"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mToken:[B

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 449
    :cond_6
    const-string/jumbo v0, "identifyFingerprint"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIdentifyFingerprint:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 450
    const-string/jumbo v0, "isAfw"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsAfw:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 451
    const-string/jumbo v0, "android.intent.extra.USER_ID"

    sget v1, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 453
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 454
    sget-boolean v0, Lcom/android/settings/fingerprint/FingerprintEntry;->isSearchEntry:Z

    if-eqz v0, :cond_7

    .line 455
    const-string/jumbo v1, "com.android.settings.fingerprint.FingerprintSettings"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0b069a

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragmentBySearch(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 457
    :cond_7
    invoke-static {}, Lcom/android/settings/SettingsActivity;->getSettingsActivityContext()Landroid/content/Context;

    move-result-object v7

    .line 458
    if-eqz v7, :cond_2

    .line 459
    const-string/jumbo v0, "FpstFingerprintEntry"

    const-string/jumbo v1, "startFragment : startPreferencePanel"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    .line 460
    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-string/jumbo v1, "com.android.settings.fingerprint.FingerprintSettings"

    const v3, 0x7f0b069a

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_1

    .line 464
    :cond_8
    const-string/jumbo v1, "com.android.settings.fingerprint.FingerprintSettings"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0b069a

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 252
    const-string/jumbo v0, "FpstFingerprintEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "=====onActivityResult : requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    .line 255
    const/16 v0, 0x65

    if-ne p1, v0, :cond_4

    .line 256
    if-ne p2, v3, :cond_2

    .line 257
    if-eqz p3, :cond_0

    .line 258
    const-string/jumbo v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mToken:[B

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v1, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEntry;->startFragment(Landroid/content/Context;)V

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    .line 250
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->runRegister()V

    .line 266
    return-void

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    .line 274
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    goto :goto_0

    .line 276
    :cond_4
    const/16 v0, 0x67

    if-ne p1, v0, :cond_8

    .line 277
    if-ne p2, v3, :cond_6

    .line 278
    if-eqz p3, :cond_5

    .line 279
    const-string/jumbo v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mToken:[B

    .line 281
    :cond_5
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEntry;->startFragment(Landroid/content/Context;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    goto :goto_0

    .line 284
    :cond_6
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_7

    .line 285
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 286
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    .line 289
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    goto :goto_0

    .line 291
    :cond_8
    const/16 v0, 0x68

    if-ne p1, v0, :cond_c

    .line 292
    if-ne p2, v3, :cond_a

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIdentifyFingerprint:Z

    .line 294
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v1, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 295
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEntry;->startFragment(Landroid/content/Context;)V

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    goto :goto_0

    .line 298
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->runRegister()V

    .line 299
    return-void

    .line 302
    :cond_a
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_b

    .line 303
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 304
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    .line 307
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    .line 308
    invoke-virtual {p0, v4, v4}, Lcom/android/settings/fingerprint/FingerprintEntry;->overridePendingTransition(II)V

    goto :goto_0

    .line 311
    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/res/Configuration;

    .prologue
    .line 333
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 334
    const-string/jumbo v0, "FpstFingerprintEntry"

    const-string/jumbo v1, "=====onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f0b06a2

    const/4 v7, 0x0

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const-string/jumbo v4, "FpstFingerprintEntry"

    const-string/jumbo v5, "=====onCreate()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput-object p0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    .line 97
    sput-boolean v7, Lcom/android/settings/fingerprint/FingerprintEntry;->isSearchEntry:Z

    .line 100
    new-instance v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 102
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isNotAvailableFingerprintWithMobileKeyboard(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    const-string/jumbo v4, "FpstFingerprintEntry"

    const-string/jumbo v5, "Mobile keyboard attached"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const v6, 0x7f0b069a

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintEntry;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x7f0b074b

    invoke-virtual {p0, v6, v5}, Lcom/android/settings/fingerprint/FingerprintEntry;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    .line 106
    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 110
    const-string/jumbo v4, "FpstFingerprintEntry"

    const-string/jumbo v5, "onCreate() : isInMultiWindowMode is TRUE."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const v4, 0x7f0b072e

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintEntry;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    .line 113
    return-void

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, ":settings:fragment_args_key"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, ":settings:fragment_args_key"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    .line 120
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "isAfw"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsAfw:Z

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    .line 123
    const-string/jumbo v4, "FpstFingerprintEntry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mUserId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string/jumbo v4, "FpstFingerprintEntry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mIsAfw : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsAfw:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "fingerprint"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 128
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v4, :cond_3

    .line 129
    const-string/jumbo v4, "FpstFingerprintEntry"

    const-string/jumbo v5, "onCreate mGFingerprintManager == null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-direct {p0, v8}, Lcom/android/settings/fingerprint/FingerprintEntry;->showSensorErrorDialog(I)V

    .line 131
    return-void

    .line 133
    :cond_3
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    .line 134
    .local v0, "isHWdetected":Z
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->requestGetSensorStatus()I

    move-result v3

    .line 135
    .local v3, "status":I
    if-eqz v0, :cond_4

    const v4, 0x186c8

    if-eq v3, v4, :cond_5

    const v4, 0x186c9

    if-eq v3, v4, :cond_5

    .line 136
    :cond_4
    const-string/jumbo v4, "FpstFingerprintEntry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCreate isHardwareDetected = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", requestGetSensorStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0, v8}, Lcom/android/settings/fingerprint/FingerprintEntry;->showSensorErrorDialog(I)V

    .line 138
    return-void

    .line 142
    :cond_5
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 143
    .local v2, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 146
    .local v1, "keyguardMgr":Landroid/app/KeyguardManager;
    if-eqz p1, :cond_6

    .line 147
    const-string/jumbo v4, "IsWaitingResult"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    .line 148
    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    if-eqz v4, :cond_6

    .line 149
    return-void

    .line 154
    :cond_6
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "fingerprint_guide_shown"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 157
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v5, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 158
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 163
    :cond_7
    sget v4, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v1, v4}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v4

    if-nez v4, :cond_9

    .line 164
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->authenticateFingerprint()V

    .line 93
    :goto_0
    return-void

    .line 159
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->runRegister()V

    .line 160
    return-void

    .line 166
    :cond_9
    sget v4, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v4

    const v5, 0x61000

    if-ne v4, v5, :cond_a

    .line 167
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->authenticateFingerprint()V

    goto :goto_0

    .line 169
    :cond_a
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->launchChooseOrConfirmLock()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 370
    const-string/jumbo v0, "FpstFingerprintEntry"

    const-string/jumbo v1, "=====onDestroy()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 369
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "FingerprintsEntry"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 351
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 345
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 339
    const-string/jumbo v0, "FpstFingerprintEntry"

    const-string/jumbo v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-string/jumbo v0, "IsWaitingResult"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 341
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 338
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 357
    const-string/jumbo v1, "FpstFingerprintEntry"

    const-string/jumbo v2, "=====onStop()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 361
    .local v0, "keyguardMgr":Landroid/app/KeyguardManager;
    sget v1, Lcom/android/settings/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    if-eqz v1, :cond_1

    .line 365
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 356
    return-void

    .line 362
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    goto :goto_0
.end method
