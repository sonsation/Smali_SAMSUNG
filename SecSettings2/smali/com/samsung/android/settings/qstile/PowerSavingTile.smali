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
    const v5, 0x7f1105bd

    .line 197
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 198
    const v2, 0x7f040238

    .line 197
    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 199
    .local v0, "remoteViews":Landroid/widget/RemoteViews;
    const v1, 0x7f0b01b4

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 200
    const v1, 0x7f0b0aa5

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1105bf

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 201
    const v1, 0x7f0b0aa7

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1105c2

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 202
    const v1, 0x7f0b0aa6

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1105c5

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 205
    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "qs_detail_content_secondary_text_color"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const/high16 v4, -0x1000000

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 204
    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 207
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->updateRemainingTime(Landroid/widget/RemoteViews;)V

    .line 208
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->setupPendingIntent(Landroid/widget/RemoteViews;)V

    .line 209
    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->updateButtonStatus(Landroid/widget/RemoteViews;I)V

    .line 211
    return-object v0
.end method

.method private isBlockedEdmSettingsChange()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 422
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "false"

    aput-object v3, v2, v4

    .line 423
    .local v2, "selectionArgsFalse":[Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    .line 424
    const-string/jumbo v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    .line 425
    const-string/jumbo v5, "isSettingsChangesAllowed"

    .line 423
    invoke-static {v3, v4, v5, v2}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 426
    .local v0, "allowSettingsChange":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-nez v0, :cond_0

    .line 427
    const/4 v1, 0x1

    .line 430
    .local v1, "ret":Z
    :goto_0
    return v1

    .line 429
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
    .line 377
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->updateState()V

    .line 379
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 380
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.sm.POWER_MODE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const-string/jumbo v2, "battery_mode"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 383
    .local v1, "mHandler":Landroid/os/Handler;
    new-instance v2, Lcom/samsung/android/settings/qstile/PowerSavingTile$4;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile$4;-><init>(Lcom/samsung/android/settings/qstile/PowerSavingTile;Landroid/content/Intent;)V

    .line 388
    const-wide/16 v4, 0x1f4

    .line 383
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 376
    return-void
.end method

.method private setupPendingIntent(Landroid/widget/RemoteViews;)V
    .locals 5
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    const/high16 v4, 0x8000000

    .line 263
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 264
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.settings.ACTION_POWERMODE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string/jumbo v2, "mode"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    const/16 v2, 0x1e14

    invoke-static {p0, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 267
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    const v2, 0x7f1105be

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 269
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 270
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.settings.ACTION_POWERMODE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string/jumbo v2, "mode"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    const/16 v2, 0x1e15

    invoke-static {p0, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 273
    const v2, 0x7f1105c1

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 275
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 276
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.settings.ACTION_POWERMODE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string/jumbo v2, "mode"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    const/16 v2, 0x1e16

    invoke-static {p0, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 279
    const v2, 0x7f1105c4

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 259
    return-void
.end method

.method private showItPolicyToast()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 410
    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    .line 411
    iget-object v2, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 412
    iget-object v4, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0a94

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 411
    const v4, 0x7f0b0f9e

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 410
    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 414
    .local v0, "toast":Landroid/widget/Toast;
    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v0}, Landroid/widget/Toast;->setShowForAllUsers()V

    .line 416
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 409
    :cond_0
    return-void
.end method

.method private updateButtonDescription(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 392
    return-void
.end method

.method private updateButtonStatus(Landroid/widget/RemoteViews;I)V
    .locals 8
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "mode"    # I

    .prologue
    const v7, 0x7f1105c4

    const v6, 0x7f0d00b9

    const v5, 0x7f0d00b8

    const v1, 0x7f020419

    const v2, 0x7f020416

    .line 283
    packed-switch p2, :pswitch_data_0

    .line 333
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isDisableMaxMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const-string/jumbo v0, "setEnabled"

    const/4 v1, 0x0

    invoke-virtual {p1, v7, v0, v1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 335
    const v0, 0x7f0d01ac

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105c5

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 336
    const v0, 0x7f0d01ab

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105c6

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 339
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->updateButtonDescription(I)V

    .line 282
    return-void

    .line 285
    :pswitch_0
    const-string/jumbo v3, "setBackgroundResource"

    .line 286
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f020417

    .line 285
    :goto_1
    const v4, 0x7f1105be

    invoke-virtual {p1, v4, v3, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 287
    const v0, 0x7f0d01a9

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v3, 0x7f1105bf

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 288
    const v0, 0x7f0d01a8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v3, 0x7f1105c0

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 290
    const-string/jumbo v0, "setBackgroundResource"

    const v3, 0x7f1105c1

    const v4, 0x7f020414

    invoke-virtual {p1, v3, v0, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 291
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v3, 0x7f1105c2

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 292
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v3, 0x7f1105c3

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 294
    const-string/jumbo v3, "setBackgroundResource"

    .line 295
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 294
    :goto_2
    invoke-virtual {p1, v7, v3, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 296
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105c5

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 297
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105c6

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_0

    .line 286
    :cond_1
    const v0, 0x7f02041a

    goto :goto_1

    :cond_2
    move v0, v2

    .line 295
    goto :goto_2

    .line 301
    :pswitch_1
    const-string/jumbo v3, "setBackgroundResource"

    .line 302
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 301
    :goto_3
    const v4, 0x7f1105be

    invoke-virtual {p1, v4, v3, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 303
    const v0, 0x7f0d01ac

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v3, 0x7f1105bf

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 304
    const v0, 0x7f0d01ab

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v3, 0x7f1105c0

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 306
    const-string/jumbo v0, "setBackgroundResource"

    const v3, 0x7f1105c1

    const v4, 0x7f020415

    invoke-virtual {p1, v3, v0, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 307
    const v0, 0x7f0d01a9

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v3, 0x7f1105c2

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 308
    const v0, 0x7f0d01a8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v3, 0x7f1105c3

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 310
    const-string/jumbo v0, "setBackgroundResource"

    .line 311
    iget-object v3, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 310
    :goto_4
    invoke-virtual {p1, v7, v0, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 312
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105c5

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 313
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105c6

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 302
    goto :goto_3

    :cond_4
    move v1, v2

    .line 311
    goto :goto_4

    .line 317
    :pswitch_2
    const-string/jumbo v0, "setBackgroundResource"

    .line 318
    iget-object v3, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 317
    :goto_5
    const v1, 0x7f1105be

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 319
    const v0, 0x7f0d01ac

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105bf

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 320
    const v0, 0x7f0d01ab

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105c0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 322
    const-string/jumbo v0, "setBackgroundResource"

    const v1, 0x7f1105c1

    const v2, 0x7f020414

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 323
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105c2

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 324
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105c3

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 326
    const-string/jumbo v1, "setBackgroundResource"

    .line 327
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    const v0, 0x7f02041b

    .line 326
    :goto_6
    invoke-virtual {p1, v7, v1, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 328
    const v0, 0x7f0d01a9

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105c5

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 329
    const v0, 0x7f0d01a8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f1105c6

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_0

    :cond_5
    move v2, v1

    .line 318
    goto :goto_5

    .line 327
    :cond_6
    const v0, 0x7f020418

    goto :goto_6

    .line 283
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
    .line 215
    const/4 v2, 0x0

    .line 219
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

    .line 220
    .local v2, "customFreqManager":Landroid/os/CustomFrequencyManager;
    if-nez v2, :cond_0

    .line 221
    const-wide/16 v6, 0x0

    .local v6, "powerSavingMaximumRemainingTime":J
    const-wide/16 v8, 0x0

    .local v8, "powerSavingMediumRemainingTime":J
    const-wide/16 v10, 0x0

    .line 222
    .local v10, "powerSavingOffRemainingTime":J
    return-void

    .line 225
    .end local v6    # "powerSavingMaximumRemainingTime":J
    .end local v8    # "powerSavingMediumRemainingTime":J
    .end local v10    # "powerSavingOffRemainingTime":J
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/CustomFrequencyManager;->getBatteryRemainingUsageTime(I)I

    move-result v5

    int-to-long v10, v5

    .line 226
    .restart local v10    # "powerSavingOffRemainingTime":J
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/os/CustomFrequencyManager;->getBatteryRemainingUsageTime(I)I

    move-result v5

    int-to-long v8, v5

    .line 227
    .restart local v8    # "powerSavingMediumRemainingTime":J
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/os/CustomFrequencyManager;->getBatteryRemainingUsageTime(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    int-to-long v6, v5

    .line 233
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

    .line 234
    const-string/jumbo v13, " MAX : "

    .line 233
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 234
    const-string/jumbo v13, " Extended : "

    .line 233
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 234
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mBatteryExtendedTime:J

    .line 233
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-lez v5, :cond_1

    .line 238
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mBatteryExtendedTime:J

    add-long/2addr v12, v10

    long-to-int v12, v12

    invoke-static {v5, v12}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 237
    const v12, 0x7f1105c0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 242
    :goto_0
    const-wide/16 v12, 0x0

    cmp-long v5, v8, v12

    if-lez v5, :cond_2

    .line 244
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mBatteryExtendedTime:J

    add-long/2addr v12, v8

    long-to-int v12, v12

    invoke-static {v5, v12}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 243
    const v12, 0x7f1105c3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 248
    :goto_1
    const-wide/16 v12, 0x0

    cmp-long v5, v6, v12

    if-lez v5, :cond_3

    .line 250
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mBatteryExtendedTime:J

    add-long/2addr v12, v6

    long-to-int v12, v12

    invoke-static {v5, v12}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, "maximumTime":Ljava/lang/String;
    const v5, 0x7f1105c6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    const v13, 0x7f0b01b4

    invoke-virtual {v5, v13, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const v12, 0x7f1105bd

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 214
    .end local v4    # "maximumTime":Ljava/lang/String;
    :goto_2
    return-void

    .line 228
    .end local v2    # "customFreqManager":Landroid/os/CustomFrequencyManager;
    .end local v6    # "powerSavingMaximumRemainingTime":J
    .end local v8    # "powerSavingMediumRemainingTime":J
    .end local v10    # "powerSavingOffRemainingTime":J
    :catch_0
    move-exception v3

    .line 229
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

    .line 230
    return-void

    .line 240
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "customFreqManager":Landroid/os/CustomFrequencyManager;
    .restart local v6    # "powerSavingMaximumRemainingTime":J
    .restart local v8    # "powerSavingMediumRemainingTime":J
    .restart local v10    # "powerSavingOffRemainingTime":J
    :cond_1
    const v5, 0x7f1105c0

    const/16 v12, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 246
    :cond_2
    const v5, 0x7f1105c3

    const/16 v12, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    .line 254
    :cond_3
    const v5, 0x7f1105c6

    const/16 v12, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 255
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    const v12, 0x7f0b01b5

    invoke-virtual {v5, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v12, 0x7f1105bd

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private updateState()V
    .locals 3

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    .line 149
    .local v0, "tile":Landroid/service/quicksettings/Tile;
    if-eqz v0, :cond_1

    .line 150
    const v1, 0x7f02041d

    invoke-static {p0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 151
    const v1, 0x7f0b01b1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 153
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    .line 147
    :goto_1
    return-void

    .line 152
    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    .line 155
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
    .line 353
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isPowerSavingModeAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    sget-object v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PSM onClick : isPowerSavingModeAllowed returns FALSE"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void

    .line 358
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->isBlockedEdmSettingsChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->showItPolicyToast()V

    .line 360
    sget-object v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PSM onClick : isBlockedEdmSettingsChange returns TRUE"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-void

    .line 364
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 365
    new-instance v0, Lcom/samsung/android/settings/qstile/PowerSavingTile$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/qstile/PowerSavingTile$3;-><init>(Lcom/samsung/android/settings/qstile/PowerSavingTile;I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->unlockAndRun(Ljava/lang/Runnable;)V

    .line 352
    :goto_0
    return-void

    .line 372
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->setPowerSavingMode(I)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    sget-object v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBind"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->registerObserver(Landroid/os/Handler;)V

    .line 102
    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onClick()V
    .locals 5

    .prologue
    .line 344
    iget-object v2, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v1

    .line 345
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

    .line 346
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    .line 349
    .local v0, "changeMode":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->checkScreenState(I)V

    .line 343
    return-void

    .line 347
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
    .line 115
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    .line 114
    return-void
.end method

.method public onStartListening()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 121
    sget-object v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStartListening"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 123
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->updateState()V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;-><init>(Lcom/samsung/android/settings/qstile/PowerSavingTile;Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;)V

    iput-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 130
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.samsung.android.settings.ACTION_POWERMODE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    return-void
.end method

.method public onStopListening()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    sget-object v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStopListening"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;->cancel(Z)Z

    .line 141
    iput-object v2, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 135
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->unregisterObserver()V

    .line 108
    sget-object v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUnbind"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public registerObserver(Landroid/os/Handler;)V
    .locals 5
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPsmObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Lcom/samsung/android/settings/qstile/PowerSavingTile$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/qstile/PowerSavingTile$2;-><init>(Lcom/samsung/android/settings/qstile/PowerSavingTile;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPsmObserver:Landroid/database/ContentObserver;

    .line 84
    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 85
    const-string/jumbo v2, "low_power"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPsmObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    .line 84
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "error"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public semGetDetailView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public semGetDetailViewTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 170
    const v0, 0x7f0b0a94

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public semGetSettingsIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->isBlockedEdmSettingsChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x0

    return-object v0

    .line 164
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sm.ACTION_BATTERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public semIsToggleButtonChecked()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public semIsToggleButtonExists()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public semSetToggleButtonChecked(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->isBlockedEdmSettingsChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->showItPolicyToast()V

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->semUpdateDetailView()V

    .line 184
    return-void
.end method

.method public unregisterObserver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPsmObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPsmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 94
    iput-object v2, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPsmObserver:Landroid/database/ContentObserver;

    .line 91
    :cond_0
    return-void
.end method
