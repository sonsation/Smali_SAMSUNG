.class public Lcom/samsung/android/settings/powersaving/LowBatteryActivity;
.super Landroid/app/Activity;
.source "LowBatteryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/powersaving/LowBatteryActivity$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAvailableTime:I

.field private mBatteryLevel:I

.field private mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPercentInCircleTv:Landroid/widget/TextView;

.field private mBatteryPluggedState:I

.field private mButtonBackground:Landroid/widget/LinearLayout;

.field private mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

.field private mExtendedBatteryTime:I

.field private mIsBatteryStatusCharging:Z

.field private mIsBatteryStatusUnknown:Z

.field private mLowPowerModeObserver:Landroid/database/ContentObserver;

.field private mMaxButton:Landroid/widget/LinearLayout;

.field private mMaxTextCust:Landroid/widget/TextView;

.field private mMaxTextMain:Landroid/widget/TextView;

.field private mMaxTextSub:Landroid/widget/TextView;

.field private mMidButton:Landroid/widget/LinearLayout;

.field private mMidTextCust:Landroid/widget/TextView;

.field private mMidTextMain:Landroid/widget/TextView;

.field private mMidTextSub:Landroid/widget/TextView;

.field private mOffButton:Landroid/widget/LinearLayout;

.field private mOffTextMain:Landroid/widget/TextView;

.field private mOffTextSub:Landroid/widget/TextView;

.field private mRemainTimeInCircleTv:Landroid/widget/TextView;

.field private mWarningDesc:Landroid/widget/TextView;


# direct methods
.method static synthetic -set0(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryPluggedState:I

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mIsBatteryStatusCharging:Z

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mIsBatteryStatusUnknown:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getCurrentPowerMode()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->updateBatteryStatus()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->updatePowerSavingButton(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->TAG:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mExtendedBatteryTime:I

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    .line 88
    new-instance v0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity$1;-><init>(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    .line 30
    return-void
.end method

.method private getCurrentPowerMode()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 446
    const/4 v1, 0x0

    .line 448
    .local v1, "mode":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "low_power"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    .line 449
    .local v0, "lowPowerMode":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "ultra_powersaving_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 451
    .local v2, "ultraPowerMode":Z
    :cond_0
    if-eqz v2, :cond_3

    .line 452
    const/4 v1, 0x2

    .line 457
    :cond_1
    :goto_1
    return v1

    .line 448
    .end local v0    # "lowPowerMode":Z
    .end local v2    # "ultraPowerMode":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "lowPowerMode":Z
    goto :goto_0

    .line 454
    .restart local v2    # "ultraPowerMode":Z
    :cond_3
    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 455
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private registerBatteryStatusReceiver()V
    .locals 2

    .prologue
    .line 371
    new-instance v1, Lcom/samsung/android/settings/powersaving/LowBatteryActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity$2;-><init>(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;)V

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    .line 397
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 398
    .local v0, "batteryLevelFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 370
    return-void
.end method

.method private registerContentObserver()V
    .locals 4

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 356
    const-string/jumbo v1, "low_power"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 355
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 354
    return-void
.end method

.method private setBatteryStatus()V
    .locals 7

    .prologue
    const v6, 0x7f0a0258

    const/4 v5, 0x0

    .line 418
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getCurrentPowerMode()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    .line 417
    invoke-static {p0, v1, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTIme(Landroid/content/Context;II)I

    move-result v0

    .line 420
    .local v0, "time":I
    if-gtz v0, :cond_0

    .line 421
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    const v2, 0x7f0b025d

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 423
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0631

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 424
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 422
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 432
    :goto_0
    iput v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mAvailableTime:I

    .line 416
    return-void

    .line 427
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    .line 428
    const v2, 0x7f0a025a

    .line 429
    const v3, 0x7f0a025b

    .line 430
    const v4, 0x7f0d01d0

    .line 427
    invoke-static {p0, v0, v2, v3, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->formatSpannableBatteryTime(Landroid/content/Context;IIII)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "location"    # I
    .param p2, "isOff"    # Z
    .param p3, "selected"    # Z

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const/4 v1, 0x0

    .line 170
    .local v1, "solidDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 171
    .local v2, "strokeDrawable":Landroid/graphics/drawable/Drawable;
    packed-switch p1, :pswitch_data_0

    .line 197
    .end local v0    # "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .end local v1    # "solidDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "strokeDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v2, :cond_0

    .line 199
    const v3, 0x7f0d01a5

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getColor(I)I

    move-result v3

    .line 200
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 198
    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 202
    :cond_0
    if-eqz v1, :cond_1

    .line 203
    if-eqz p3, :cond_3

    .line 204
    if-eqz p2, :cond_2

    .line 206
    const v3, 0x7f0d01c1

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getColor(I)I

    move-result v3

    .line 207
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 205
    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 220
    :cond_1
    :goto_1
    return-object v0

    .line 173
    .restart local v0    # "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .restart local v1    # "solidDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "strokeDrawable":Landroid/graphics/drawable/Drawable;
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 174
    const v4, 0x7f020493

    .line 173
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 175
    .local v0, "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const v3, 0x7f1109fb

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 176
    .local v1, "solidDrawable":Landroid/graphics/drawable/Drawable;
    const v3, 0x7f1109fa

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "strokeDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 179
    .local v0, "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .local v1, "solidDrawable":Landroid/graphics/drawable/Drawable;
    .local v2, "strokeDrawable":Landroid/graphics/drawable/Drawable;
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 180
    const v4, 0x7f020492

    .line 179
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 181
    .local v0, "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const v3, 0x7f1109f9

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 182
    .local v1, "solidDrawable":Landroid/graphics/drawable/Drawable;
    const v3, 0x7f1109f8

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "strokeDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 185
    .local v0, "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .local v1, "solidDrawable":Landroid/graphics/drawable/Drawable;
    .local v2, "strokeDrawable":Landroid/graphics/drawable/Drawable;
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 186
    const v4, 0x7f020494

    .line 185
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 187
    .local v0, "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const v3, 0x7f1109fd

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 188
    .local v1, "solidDrawable":Landroid/graphics/drawable/Drawable;
    const v3, 0x7f1109fc

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "strokeDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 191
    .local v0, "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .local v1, "solidDrawable":Landroid/graphics/drawable/Drawable;
    .local v2, "strokeDrawable":Landroid/graphics/drawable/Drawable;
    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 192
    const v4, 0x7f020491

    .line 191
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 193
    .local v0, "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const v3, 0x7f1109f7

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 194
    .local v1, "solidDrawable":Landroid/graphics/drawable/Drawable;
    const v3, 0x7f1109f6

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "strokeDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 210
    .end local v0    # "bgLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .end local v1    # "solidDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "strokeDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    const v3, 0x7f0d01a2

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getColor(I)I

    move-result v3

    .line 211
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 209
    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 216
    :cond_3
    const v3, 0x7f0d01bf

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getColor(I)I

    move-result v3

    .line 217
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 215
    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_1

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private unregisterContentObserver()V
    .locals 2

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 359
    return-void
.end method

.method private unregisterReceivers()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 364
    :cond_0
    return-void
.end method

.method private updateBatteryStatus()V
    .locals 5

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBatteryStatus()V

    .line 404
    invoke-static {}, Landroid/icu/text/NumberFormat;->getNumberInstance()Landroid/icu/text/NumberFormat;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "percentage":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryPercentInCircleTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iget v2, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setScore(IIZ)V

    .line 407
    iget v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    const/4 v2, 0x5

    if-gt v1, v2, :cond_0

    .line 408
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mWarningDesc:Landroid/widget/TextView;

    const v2, 0x7f0b0c81

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 413
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getCurrentPowerMode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->updatePowerSavingButton(I)V

    .line 401
    return-void

    .line 410
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mWarningDesc:Landroid/widget/TextView;

    const v2, 0x7f0b0c82

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private updatePowerSavingButton(I)V
    .locals 12
    .param p1, "mode"    # I

    .prologue
    const v11, 0x7f0d01c0

    const/16 v7, 0x8

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 224
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 225
    return-void

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 228
    .local v4, "resources":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mButtonBackground:Landroid/widget/LinearLayout;

    const/4 v8, 0x3

    invoke-direct {p0, v8, v6, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 230
    invoke-static {p0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    .line 231
    .local v0, "isRTL":Z
    if-ne p1, v10, :cond_4

    .line 232
    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-direct {p0, v6, v6, v9}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_0
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextCust:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextCust:Landroid/widget/TextView;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isChangedValue(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    invoke-direct {p0, v10, v9, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_2
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 241
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextMain:Landroid/widget/TextView;

    const v8, 0x7f0d01c2

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextSub:Landroid/widget/TextView;

    const v8, 0x7f0d01c2

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidButton:Landroid/widget/LinearLayout;

    invoke-direct {p0, v9, v6, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 245
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextMain:Landroid/widget/TextView;

    const v8, 0x7f0d01a4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 246
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextSub:Landroid/widget/TextView;

    const v8, 0x7f0d01a3

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextCust:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    :goto_3
    iget v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    iget v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mExtendedBatteryTime:I

    .line 285
    invoke-static {p0, v6, v5, v8}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTIme(Landroid/content/Context;III)I

    move-result v3

    .line 288
    .local v3, "psmTimeOff":I
    iget v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    iget v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mExtendedBatteryTime:I

    .line 287
    invoke-static {p0, v9, v5, v8}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTIme(Landroid/content/Context;III)I

    move-result v2

    .line 290
    .local v2, "psmTimeMid":I
    iget v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    iget v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mExtendedBatteryTime:I

    .line 289
    invoke-static {p0, v10, v5, v8}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTIme(Landroid/content/Context;III)I

    move-result v1

    .line 293
    .local v1, "psmTimeMax":I
    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextMain:Landroid/widget/TextView;

    .line 294
    const v5, 0x7f0b0c87

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 293
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    if-lez v3, :cond_b

    if-eqz p1, :cond_b

    .line 296
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextSub:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextSub:Landroid/widget/TextView;

    invoke-static {p0, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    :goto_4
    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextMain:Landroid/widget/TextView;

    .line 303
    const v5, 0x7f0b0c89

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 302
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    if-lez v2, :cond_c

    if-eq p1, v9, :cond_c

    .line 306
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextSub:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextSub:Landroid/widget/TextView;

    invoke-static {p0, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    :goto_5
    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    .line 313
    const v5, 0x7f0b0c88

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 312
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    if-lez v1, :cond_d

    if-eq p1, v10, :cond_d

    .line 316
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    invoke-static {p0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    :goto_6
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isDisableMaxMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 323
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 324
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 325
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextCust:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextCust:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 326
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 327
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    :goto_7
    sget-object v5, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updatePowerSavingButton, mode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void

    .line 233
    .end local v1    # "psmTimeMax":I
    .end local v2    # "psmTimeMid":I
    .end local v3    # "psmTimeOff":I
    :cond_1
    invoke-direct {p0, v10, v6, v9}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_0

    :cond_2
    move v5, v7

    .line 237
    goto/16 :goto_1

    .line 240
    :cond_3
    invoke-direct {p0, v6, v9, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_2

    .line 249
    :cond_4
    if-ne p1, v9, :cond_8

    .line 250
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidButton:Landroid/widget/LinearLayout;

    invoke-direct {p0, v9, v6, v9}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 251
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextMain:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextSub:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextCust:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextCust:Landroid/widget/TextView;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isChangedValue(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    :goto_8
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    invoke-direct {p0, v10, v9, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_9
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 258
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextMain:Landroid/widget/TextView;

    const v8, 0x7f0d01c2

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextSub:Landroid/widget/TextView;

    const v8, 0x7f0d01c2

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    invoke-direct {p0, v6, v6, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_a
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 263
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    const v8, 0x7f0d01a4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 264
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    const v8, 0x7f0d01a3

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextCust:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_5
    move v5, v7

    .line 254
    goto :goto_8

    .line 257
    :cond_6
    invoke-direct {p0, v6, v9, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_9

    .line 262
    :cond_7
    invoke-direct {p0, v10, v6, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_a

    .line 268
    :cond_8
    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    invoke-direct {p0, v10, v9, v9}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_b
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 270
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextMain:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 271
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextSub:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidButton:Landroid/widget/LinearLayout;

    invoke-direct {p0, v9, v6, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 274
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextMain:Landroid/widget/TextView;

    const v8, 0x7f0d01a4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 275
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextSub:Landroid/widget/TextView;

    const v8, 0x7f0d01a3

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 276
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextCust:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_a

    invoke-direct {p0, v6, v6, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_c
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 280
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    const v8, 0x7f0d01a4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 281
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    const v8, 0x7f0d01a3

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextCust:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 269
    :cond_9
    invoke-direct {p0, v6, v9, v9}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_b

    .line 279
    :cond_a
    invoke-direct {p0, v10, v6, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_c

    .line 299
    .restart local v1    # "psmTimeMax":I
    .restart local v2    # "psmTimeMid":I
    .restart local v3    # "psmTimeOff":I
    :cond_b
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextSub:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 309
    :cond_c
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextSub:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 319
    :cond_d
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 330
    :cond_e
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 331
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 146
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 149
    :sswitch_0
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getCurrentPowerMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    const-string/jumbo v1, "LowBattery"

    invoke-static {p0, v2, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->startPSMDialogActivity(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 154
    :sswitch_1
    const-string/jumbo v1, "LowBattery"

    const/4 v2, 0x1

    invoke-static {p0, v2, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->startPSMDialogActivity(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 157
    :sswitch_2
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->startPSMDialogActivity(Landroid/content/Context;I)V

    goto :goto_0

    .line 146
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f11061d -> :sswitch_0
        0x7f110620 -> :sswitch_1
        0x7f110624 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const v1, 0x7f040199

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setContentView(I)V

    .line 102
    const v1, 0x7f11003e

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    .line 104
    const v1, 0x7f11055a

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryPercentInCircleTv:Landroid/widget/TextView;

    .line 105
    const v1, 0x7f11055e

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    .line 106
    const v1, 0x7f110560

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mWarningDesc:Landroid/widget/TextView;

    .line 108
    invoke-static {}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isHebrewLanguage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const v1, 0x7f110559

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, "circleInnerTextContainer":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutDirection(I)V

    .line 114
    .end local v0    # "circleInnerTextContainer":Landroid/view/View;
    :cond_0
    const v1, 0x7f11061c

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mButtonBackground:Landroid/widget/LinearLayout;

    .line 115
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mButtonBackground:Landroid/widget/LinearLayout;

    const/4 v2, 0x3

    invoke-direct {p0, v2, v3, v3}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 117
    const v1, 0x7f11061d

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffButton:Landroid/widget/LinearLayout;

    .line 118
    const v1, 0x7f110620

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidButton:Landroid/widget/LinearLayout;

    .line 119
    const v1, 0x7f110624

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    .line 120
    const v1, 0x7f11061e

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextMain:Landroid/widget/TextView;

    .line 121
    const v1, 0x7f11061f

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextSub:Landroid/widget/TextView;

    .line 122
    const v1, 0x7f110621

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextMain:Landroid/widget/TextView;

    .line 123
    const v1, 0x7f110622

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextSub:Landroid/widget/TextView;

    .line 124
    const v1, 0x7f110623

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextCust:Landroid/widget/TextView;

    .line 125
    const v1, 0x7f110625

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    .line 126
    const v1, 0x7f110626

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    .line 127
    const v1, 0x7f110627

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextCust:Landroid/widget/TextView;

    .line 129
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextMain:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0c87

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextMain:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0c89

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextMain:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0c88

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getCurrentPowerMode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->updatePowerSavingButton(I)V

    .line 138
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a05c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a05c3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 138
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setCircle(II)V

    .line 97
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 349
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 350
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->unregisterContentObserver()V

    .line 351
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->unregisterReceivers()V

    .line 348
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 339
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 340
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->registerContentObserver()V

    .line 341
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->registerBatteryStatusReceiver()V

    .line 343
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getCurrentPowerMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->updatePowerSavingButton(I)V

    .line 344
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->updateBatteryStatus()V

    .line 338
    return-void
.end method
