.class public Lcom/samsung/android/settings/qstile/PowerSavingTile;
.super Landroid/service/quicksettings/TileService;
.source "PowerSavingTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/qstile/PowerSavingTile$1;,
        Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBatteryExtendedTime:J

.field private mContext:Landroid/content/Context;

.field private mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;

.field private mPsmObserver:Landroid/database/ContentObserver;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/qstile/PowerSavingTile;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mBatteryExtendedTime:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/qstile/PowerSavingTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/qstile/PowerSavingTile;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mBatteryExtendedTime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/qstile/PowerSavingTile;I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->setPowerSavingMode(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/qstile/PowerSavingTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->updateState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mBatteryExtendedTime:J

    .line 60
    new-instance v0, Lcom/samsung/android/settings/qstile/PowerSavingTile$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile$1;-><init>(Lcom/samsung/android/settings/qstile/PowerSavingTile;)V

    iput-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 48
    return-void
.end method

.method private getRemoteViews()Landroid/widget/RemoteViews;
    .locals 6

    .prologue
    const v5, 0x7f1106c0

    .line 202
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 203
    const v2, 0x7f04026a

    .line 202
    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 204
    .local v0, "remoteViews":Landroid/widget/RemoteViews;
    const v1, 0x7f0b0244

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 205
    const v1, 0x7f0b0c87

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1106c2

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 206
    const v1, 0x7f0b0c89

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1106c5

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 207
    const v1, 0x7f0b0c88

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1106c8

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 210
    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "qs_detail_content_secondary_text_color"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const/high16 v4, -0x1000000

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 209
    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 212
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->updateRemainingTime(Landroid/widget/RemoteViews;)V

    .line 213
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->setupPendingIntent(Landroid/widget/RemoteViews;)V

    .line 214
    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->updateButtonStatus(Landroid/widget/RemoteViews;I)V

    .line 216
    return-object v0
.end method

.method private isBlockedEdmSettingsChange()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 437
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "false"

    aput-object v3, v2, v4

    .line 438
    .local v2, "selectionArgsFalse":[Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    .line 439
    const-string/jumbo v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    .line 440
    const-string/jumbo v5, "isSettingsChangesAllowed"

    .line 438
    invoke-static {v3, v4, v5, v2}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 441
    .local v0, "allowSettingsChange":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-nez v0, :cond_0

    .line 442
    const/4 v1, 0x1

    .line 445
    .local v1, "ret":Z
    :goto_0
    return v1

    .line 444
    .end local v1    # "ret":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "ret":Z
    goto :goto_0
.end method

.method private setPowerSavingMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->updateState()V

    .line 394
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 395
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.sm.POWER_MODE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    const-string/jumbo v2, "battery_mode"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 397
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 398
    .local v1, "mHandler":Landroid/os/Handler;
    new-instance v2, Lcom/samsung/android/settings/qstile/PowerSavingTile$4;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile$4;-><init>(Lcom/samsung/android/settings/qstile/PowerSavingTile;Landroid/content/Intent;)V

    .line 403
    const-wide/16 v4, 0x1f4

    .line 398
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 391
    return-void
.end method

.method private setupPendingIntent(Landroid/widget/RemoteViews;)V
    .locals 5
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    const/high16 v4, 0x8000000

    .line 268
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 269
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.settings.ACTION_POWERMODE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string/jumbo v2, "mode"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 271
    const/16 v2, 0x1e14

    invoke-static {p0, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 272
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    const v2, 0x7f1106c1

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 274
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 275
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.settings.ACTION_POWERMODE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string/jumbo v2, "mode"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    const/16 v2, 0x1e15

    invoke-static {p0, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 278
    const v2, 0x7f1106c4

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 280
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 281
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.settings.ACTION_POWERMODE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string/jumbo v2, "mode"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    const/16 v2, 0x1e16

    invoke-static {p0, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 284
    const v2, 0x7f1106c7

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 264
    return-void
.end method

.method private showItPolicyToast()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 425
    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    .line 426
    iget-object v2, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 427
    iget-object v4, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0c75

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 426
    const v4, 0x7f0b11fb

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 425
    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 429
    .local v0, "toast":Landroid/widget/Toast;
    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0}, Landroid/widget/Toast;->setShowForAllUsers()V

    .line 431
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 424
    :cond_0
    return-void
.end method

.method private updateButtonDescription(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 407
    return-void
.end method

.method private updateButtonStatus(Landroid/widget/RemoteViews;I)V
    .locals 8
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "mode"    # I

    .prologue
    const v1, 0x7f0204a2

    const v7, 0x7f1106c9

    const v6, 0x7f1106c8

    const v5, 0x7f1106c7

    const v4, 0x7f0d01c0

    .line 288
    packed-switch p2, :pswitch_data_0

    .line 338
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isPowerSavingModeAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    sget-object v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PSM disabled : isPowerSavingModeAllowed returns FALSE"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-string/jumbo v0, "setEnabled"

    const v1, 0x7f1106c4

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 341
    const v0, 0x7f0d00c1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1106c5

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 342
    const v0, 0x7f0d00c2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1106c6

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 343
    const-string/jumbo v0, "setEnabled"

    const/4 v1, 0x0

    invoke-virtual {p1, v5, v0, v1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 344
    const v0, 0x7f0d00c1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 345
    const v0, 0x7f0d00c2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v7, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isDisableMaxMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    const-string/jumbo v0, "setEnabled"

    const/4 v1, 0x0

    invoke-virtual {p1, v5, v0, v1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 350
    const v0, 0x7f0d00c1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 351
    const v0, 0x7f0d00c2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v7, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 354
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->updateButtonDescription(I)V

    .line 287
    return-void

    .line 290
    :pswitch_0
    const-string/jumbo v2, "setBackgroundResource"

    .line 291
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f0204a3

    .line 290
    :goto_1
    const v3, 0x7f1106c1

    invoke-virtual {p1, v3, v2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 292
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v2, 0x7f1106c2

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 293
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v2, 0x7f1106c3

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 295
    const-string/jumbo v0, "setBackgroundResource"

    const v2, 0x7f1106c4

    const v3, 0x7f0204a0

    invoke-virtual {p1, v2, v0, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 296
    const v0, 0x7f0d00bf

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v2, 0x7f1106c5

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 297
    const v0, 0x7f0d00c0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v2, 0x7f1106c6

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 299
    const-string/jumbo v2, "setBackgroundResource"

    .line 300
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f0204a5

    .line 299
    :goto_2
    invoke-virtual {p1, v5, v2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 301
    const v0, 0x7f0d00bf

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 302
    const v0, 0x7f0d00c0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v7, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_0

    .line 291
    :cond_2
    const v0, 0x7f0204a6

    goto :goto_1

    :cond_3
    move v0, v1

    .line 300
    goto :goto_2

    .line 306
    :pswitch_1
    const-string/jumbo v2, "setBackgroundResource"

    .line 307
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 306
    :goto_3
    const v3, 0x7f1106c1

    invoke-virtual {p1, v3, v2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 308
    const v0, 0x7f0d01c2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v2, 0x7f1106c2

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 309
    const v0, 0x7f0d01c2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v2, 0x7f1106c3

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 311
    const-string/jumbo v0, "setBackgroundResource"

    const v2, 0x7f1106c4

    const v3, 0x7f0204a1

    invoke-virtual {p1, v2, v0, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 312
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v2, 0x7f1106c5

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 313
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v2, 0x7f1106c6

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 315
    const-string/jumbo v0, "setBackgroundResource"

    .line 316
    iget-object v2, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    const v1, 0x7f0204a5

    .line 315
    :cond_4
    invoke-virtual {p1, v5, v0, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 317
    const v0, 0x7f0d00bf

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 318
    const v0, 0x7f0d00c0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v7, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_0

    .line 307
    :cond_5
    const v0, 0x7f0204a5

    goto :goto_3

    .line 322
    :pswitch_2
    const-string/jumbo v0, "setBackgroundResource"

    .line 323
    iget-object v2, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 322
    :goto_4
    const v2, 0x7f1106c1

    invoke-virtual {p1, v2, v0, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 324
    const v0, 0x7f0d01c2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1106c2

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 325
    const v0, 0x7f0d01c2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1106c3

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 327
    const-string/jumbo v0, "setBackgroundResource"

    const v1, 0x7f1106c4

    const v2, 0x7f0204a0

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 328
    const v0, 0x7f0d00bf

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1106c5

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 329
    const v0, 0x7f0d00c0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1106c6

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 331
    const-string/jumbo v1, "setBackgroundResource"

    .line 332
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    const v0, 0x7f0204a7

    .line 331
    :goto_5
    invoke-virtual {p1, v5, v1, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 333
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 334
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v7, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_0

    .line 323
    :cond_6
    const v1, 0x7f0204a5

    goto :goto_4

    .line 332
    :cond_7
    const v0, 0x7f0204a4

    goto :goto_5

    .line 288
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateRemainingTime(Landroid/widget/RemoteViews;)V
    .locals 16
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    .line 220
    const/4 v2, 0x0

    .line 224
    .local v2, "customFreqManager":Landroid/os/CustomFrequencyManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "CustomFrequencyManagerService"

    invoke-virtual {v5, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/os/CustomFrequencyManager;

    move-object v2, v0

    .line 225
    .local v2, "customFreqManager":Landroid/os/CustomFrequencyManager;
    if-nez v2, :cond_0

    .line 226
    const-wide/16 v6, 0x0

    .local v6, "powerSavingMaximumRemainingTime":J
    const-wide/16 v8, 0x0

    .local v8, "powerSavingMediumRemainingTime":J
    const-wide/16 v10, 0x0

    .line 227
    .local v10, "powerSavingOffRemainingTime":J
    return-void

    .line 230
    .end local v6    # "powerSavingMaximumRemainingTime":J
    .end local v8    # "powerSavingMediumRemainingTime":J
    .end local v10    # "powerSavingOffRemainingTime":J
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/CustomFrequencyManager;->getBatteryRemainingUsageTime(I)I

    move-result v5

    int-to-long v10, v5

    .line 231
    .restart local v10    # "powerSavingOffRemainingTime":J
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/os/CustomFrequencyManager;->getBatteryRemainingUsageTime(I)I

    move-result v5

    int-to-long v8, v5

    .line 232
    .restart local v8    # "powerSavingMediumRemainingTime":J
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/os/CustomFrequencyManager;->getBatteryRemainingUsageTime(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    int-to-long v6, v5

    .line 238
    .restart local v6    # "powerSavingMaximumRemainingTime":J
    sget-object v5, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateRemainingTime - Off : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " MID : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 239
    const-string/jumbo v13, " MAX : "

    .line 238
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 239
    const-string/jumbo v13, " Extended : "

    .line 238
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 239
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mBatteryExtendedTime:J

    .line 238
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-lez v5, :cond_1

    .line 243
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mBatteryExtendedTime:J

    add-long/2addr v12, v10

    long-to-int v12, v12

    invoke-static {v5, v12}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 242
    const v12, 0x7f1106c3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 247
    :goto_0
    const-wide/16 v12, 0x0

    cmp-long v5, v8, v12

    if-lez v5, :cond_2

    .line 249
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mBatteryExtendedTime:J

    add-long/2addr v12, v8

    long-to-int v12, v12

    invoke-static {v5, v12}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 248
    const v12, 0x7f1106c6

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 253
    :goto_1
    const-wide/16 v12, 0x0

    cmp-long v5, v6, v12

    if-lez v5, :cond_3

    .line 255
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mBatteryExtendedTime:J

    add-long/2addr v12, v6

    long-to-int v12, v12

    invoke-static {v5, v12}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, "maximumTime":Ljava/lang/String;
    const v5, 0x7f1106c9

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    const v13, 0x7f0b0244

    invoke-virtual {v5, v13, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const v12, 0x7f1106c0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 219
    .end local v4    # "maximumTime":Ljava/lang/String;
    :goto_2
    return-void

    .line 233
    .end local v2    # "customFreqManager":Landroid/os/CustomFrequencyManager;
    .end local v6    # "powerSavingMaximumRemainingTime":J
    .end local v8    # "powerSavingMediumRemainingTime":J
    .end local v10    # "powerSavingOffRemainingTime":J
    :catch_0
    move-exception v3

    .line 234
    .local v3, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void

    .line 245
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "customFreqManager":Landroid/os/CustomFrequencyManager;
    .restart local v6    # "powerSavingMaximumRemainingTime":J
    .restart local v8    # "powerSavingMediumRemainingTime":J
    .restart local v10    # "powerSavingOffRemainingTime":J
    :cond_1
    const v5, 0x7f1106c3

    const/16 v12, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 251
    :cond_2
    const v5, 0x7f1106c6

    const/16 v12, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    .line 259
    :cond_3
    const v5, 0x7f1106c9

    const/16 v12, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 260
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    const v12, 0x7f0b0245

    invoke-virtual {v5, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v12, 0x7f1106c0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private updateState()V
    .locals 3

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    .line 154
    .local v0, "tile":Landroid/service/quicksettings/Tile;
    if-eqz v0, :cond_1

    .line 155
    const v1, 0x7f0204aa

    invoke-static {p0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 156
    const v1, 0x7f0b0241

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 158
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    .line 152
    :goto_1
    return-void

    .line 157
    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    .line 160
    :cond_1
    sget-object v1, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getQsTile() is null"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public checkScreenState(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 368
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isPowerSavingModeAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    sget-object v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PSM onClick : isPowerSavingModeAllowed returns FALSE"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void

    .line 373
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->isBlockedEdmSettingsChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->showItPolicyToast()V

    .line 375
    sget-object v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PSM onClick : isBlockedEdmSettingsChange returns TRUE"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-void

    .line 379
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    new-instance v0, Lcom/samsung/android/settings/qstile/PowerSavingTile$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/qstile/PowerSavingTile$3;-><init>(Lcom/samsung/android/settings/qstile/PowerSavingTile;I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->unlockAndRun(Ljava/lang/Runnable;)V

    .line 367
    :goto_0
    return-void

    .line 387
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->setPowerSavingMode(I)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 105
    sget-object v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBind"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->registerObserver(Landroid/os/Handler;)V

    .line 107
    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onClick()V
    .locals 5

    .prologue
    .line 359
    iget-object v2, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v1

    .line 360
    .local v1, "currentMode":I
    sget-object v2, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onClick/currentMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    .line 364
    .local v0, "changeMode":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->checkScreenState(I)V

    .line 358
    return-void

    .line 362
    .end local v0    # "changeMode":I
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getLastPSMmode(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    .line 119
    return-void
.end method

.method public onStartListening()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 126
    sget-object v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStartListening"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->updateState()V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;-><init>(Lcom/samsung/android/settings/qstile/PowerSavingTile;Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;)V

    iput-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 135
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.samsung.android.settings.ACTION_POWERMODE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    return-void
.end method

.method public onStopListening()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    sget-object v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStopListening"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;->cancel(Z)Z

    .line 146
    iput-object v2, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 140
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->unregisterObserver()V

    .line 113
    sget-object v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUnbind"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public registerObserver(Landroid/os/Handler;)V
    .locals 5
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPsmObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Lcom/samsung/android/settings/qstile/PowerSavingTile$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/qstile/PowerSavingTile$2;-><init>(Lcom/samsung/android/settings/qstile/PowerSavingTile;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPsmObserver:Landroid/database/ContentObserver;

    .line 89
    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 90
    const-string/jumbo v2, "low_power"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPsmObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    .line 89
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "error"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public semGetDetailView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public semGetDetailViewTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 175
    const v0, 0x7f0b0c75

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public semGetSettingsIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->isBlockedEdmSettingsChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x0

    return-object v0

    .line 169
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sm.ACTION_BATTERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public semIsToggleButtonChecked()Z
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public semIsToggleButtonExists()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public semSetToggleButtonChecked(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->isBlockedEdmSettingsChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->showItPolicyToast()V

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->semUpdateDetailView()V

    .line 189
    return-void
.end method

.method public unregisterObserver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPsmObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPsmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 99
    iput-object v2, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPsmObserver:Landroid/database/ContentObserver;

    .line 96
    :cond_0
    return-void
.end method
