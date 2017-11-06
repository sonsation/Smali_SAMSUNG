.class public final Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;
.super Ljava/lang/Object;
.source "SecAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager$DeviceOutConstants;
    }
.end annotation


# static fields
.field public static final ACTION_AUDIO_BECOMING_NOISY_SEC:Ljava/lang/String;

.field private static final APP_NAME_RES_ID:I

.field private static final DEVICE_OUT_UNKNOWN:I = -0xa

.field public static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String;

.field public static final EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-AudioManager"

.field private static final MAX_FINE_VOLUME:I = 0x96

.field private static final MULTI_SOUND_TAG:Ljava/lang/String; = "multisound_pinappname="

.field private static final SETTINGS_ALL_SOUND_OFF:Ljava/lang/String; = "all_sound_off"

.field private static final SETTINGS_BT_UHQ_MODE:Ljava/lang/String; = "bluetooth_a2dp_uhqa_mode"

.field private static final SETTINGS_BT_UHQ_SUPPORT:Ljava/lang/String; = "bluetooth_a2dp_uhqa_support"

.field public static final STREAM_DEVICES_CHANGED_ACTION:Ljava/lang/String; = "android.media.STREAM_DEVICES_CHANGED_ACTION"

.field public static final STREAM_MUSIC:I = 0x3

.field private static final SUPPORT_FW_FINE_VOLUME:Z

.field public static final VOLUME_CHANGED_ACTION:Ljava/lang/String;

.field private static sSecAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mAudioManagerCompat:Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;

.field private mMaxVolume:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/utils/features/CoreAppFeatures;->SUPPORT_FW_FINE_VOLUME:Z

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->SUPPORT_FW_FINE_VOLUME:Z

    .line 55
    sget-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->ACTION_AUDIO_BECOMING_NOISY_SEC:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->ACTION_AUDIO_BECOMING_NOISY_SEC:Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->SAMSUNG_VOLUME_CHANGED_ACTION:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->VOLUME_CHANGED_ACTION:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->SAMSUNG_EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String;

    .line 76
    sget-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->SAMSUNG_EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String;

    .line 85
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->app_name:I

    sput v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->APP_NAME_RES_ID:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManager:Landroid/media/AudioManager;

    .line 97
    new-instance v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManagerCompat:Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;

    .line 98
    return-void
.end method

.method private getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 249
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->APP_NAME_RES_ID:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAudioPath()I
    .locals 6

    .prologue
    const/16 v0, -0xa

    .line 344
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "audioParam;outDevice"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 348
    const-string v3, "SMUSIC-AudioManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioManager.getParameters(\'audioParam;outDevice\') is wrong so return as Speaker. Path is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :goto_0
    return v0

    .line 356
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, "audio":I
    goto :goto_0

    .line 357
    .end local v0    # "audio":I
    :catch_0
    move-exception v1

    .line 358
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v3, "SMUSIC-AudioManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioManager.getParameters(\'audioParam;outDevice\') is wrong so return as Speaker. Path is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDeviceOut(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 367
    .line 368
    invoke-static {p1}, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->getDeviceOut(I)I

    move-result v0

    return v0
.end method

.method private getFieldValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 372
    const-string v0, "android.media.AudioManager"

    const/4 v1, 0x0

    .line 373
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 372
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Don\'t send Activity itself, it can make activity leak. Please put a application context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->sSecAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    if-nez v0, :cond_1

    .line 112
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->sSecAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    .line 114
    :cond_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->sSecAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    return-object v0
.end method

.method public static isAllSoundOff(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 121
    const-string v2, "all_sound_off"

    invoke-static {p0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->getIntFromSettings(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isAudioPathBTHeadset()Z
    .locals 2

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getAudioPath()I

    move-result v0

    .line 403
    .local v0, "path":I
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isBtHeadset(I)Z

    move-result v1

    return v1
.end method

.method private isAudioPathBtInSeparateApp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 237
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "multisound_pinappname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x8

    .line 238
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getDeviceOut(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "parameter":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isAudioPathSpeakerInSeparateApp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 243
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "multisound_pinappname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    .line 244
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getDeviceOut(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 243
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "parameter":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isBt(I)Z
    .locals 4
    .param p1, "path"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 480
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 481
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getDeviceOut(I)I

    move-result v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    .line 485
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 481
    goto :goto_0

    .line 483
    :cond_2
    const-string v2, "DEVICE_OUT_BLUETOOTH_A2DP"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getFieldValue(Ljava/lang/String;)I

    move-result v2

    const-string v3, "DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES"

    .line 484
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getFieldValue(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v2, v3

    const-string v3, "DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER"

    .line 485
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getFieldValue(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v2, v3

    and-int/2addr v2, p1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isBtHeadset(I)Z
    .locals 4
    .param p1, "path"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 490
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 491
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getDeviceOut(I)I

    move-result v2

    const/4 v3, 0x7

    .line 492
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getDeviceOut(I)I

    move-result v3

    or-int/2addr v2, v3

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    .line 496
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 492
    goto :goto_0

    .line 494
    :cond_2
    const-string v2, "DEVICE_OUT_BLUETOOTH_A2DP"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getFieldValue(Ljava/lang/String;)I

    move-result v2

    const-string v3, "DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES"

    .line 495
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getFieldValue(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v2, v3

    const-string v3, "DEVICE_OUT_BLUETOOTH_SCO_HEADSET"

    .line 496
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getFieldValue(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v2, v3

    and-int/2addr v2, p1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isBtUhqMode(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 449
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 450
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_a2dp_uhqa_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 453
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 450
    goto :goto_0

    .line 453
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_a2dp_uhqa_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isBtUhqSupport(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 435
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 437
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_a2dp_uhqa_support"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 440
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 437
    goto :goto_0

    .line 440
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_a2dp_uhqa_support"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isEarjack(I)Z
    .locals 4
    .param p1, "path"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 470
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 471
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getDeviceOut(I)I

    move-result v2

    const/4 v3, 0x4

    .line 472
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getDeviceOut(I)I

    move-result v3

    or-int/2addr v2, v3

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    .line 475
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 472
    goto :goto_0

    .line 474
    :cond_2
    const-string v2, "DEVICE_OUT_WIRED_HEADPHONE"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getFieldValue(Ljava/lang/String;)I

    move-result v2

    const-string v3, "DEVICE_OUT_WIRED_HEADSET"

    .line 475
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getFieldValue(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v2, v3

    and-int/2addr v2, p1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isHdmi(I)Z
    .locals 4
    .param p1, "path"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 511
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 512
    const/16 v2, 0x9

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getDeviceOut(I)I

    move-result v2

    const/16 v3, 0xa

    .line 513
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getDeviceOut(I)I

    move-result v3

    or-int/2addr v2, v3

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    .line 515
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 513
    goto :goto_0

    .line 515
    :cond_2
    const-string v2, "DEVICE_OUT_HDMI"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getFieldValue(Ljava/lang/String;)I

    move-result v2

    and-int/2addr v2, p1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isLineOut(I)Z
    .locals 4
    .param p1, "path"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 501
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 502
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getDeviceOut(I)I

    move-result v2

    const/4 v3, 0x6

    .line 503
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getDeviceOut(I)I

    move-result v3

    or-int/2addr v2, v3

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    .line 506
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 503
    goto :goto_0

    .line 505
    :cond_2
    const-string v2, "DEVICE_OUT_ANLG_DOCK_HEADSET"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getFieldValue(Ljava/lang/String;)I

    move-result v2

    const-string v3, "DEVICE_OUT_DGTL_DOCK_HEADSET"

    .line 506
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getFieldValue(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v2, v3

    and-int/2addr v2, p1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isMultiSoundEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 232
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->SUPPORT_SEPARATE_APP_SOUND:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManagerCompat:Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;

    .line 233
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->isMultiSoundOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private selectRouteInt(ILandroid/content/Context;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 314
    const-string v2, "media_router"

    .line 315
    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    .line 316
    .local v0, "mediaRouter":Landroid/media/MediaRouter;
    if-nez v0, :cond_0

    .line 317
    const-string v2, "SMUSIC-AudioManager"

    const-string/jumbo v3, "selectRouteInt : mediaRouter is NULL!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :goto_0
    return-void

    .line 321
    :cond_0
    const/4 v1, 0x0

    .line 322
    .local v1, "routeInfo":Landroid/media/MediaRouter$RouteInfo;
    if-nez p1, :cond_2

    .line 323
    invoke-virtual {v0}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    .line 328
    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    .line 329
    invoke-virtual {v0, v3, v1}, Landroid/media/MediaRouter;->selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 324
    :cond_2
    if-ne p1, v3, :cond_1

    .line 325
    invoke-static {v0}, Lcom/samsung/android/app/music/support/android/media/MediaRouterCompat;->getA2dpRoute(Landroid/media/MediaRouter;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    goto :goto_1

    .line 331
    :cond_3
    const-string v2, "SMUSIC-AudioManager"

    const-string/jumbo v3, "selectRouteInt : routeInfo is NULL!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public adjustStreamVolume(III)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 155
    return-void
.end method

.method public getEarProtectLimitIndex()I
    .locals 2

    .prologue
    .line 205
    invoke-static {}, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->getEarProtectLimit()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 206
    .local v0, "index":I
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->SUPPORT_FW_FINE_VOLUME:Z

    if-eqz v1, :cond_0

    .line 207
    mul-int/lit8 v0, v0, 0xa

    .line 209
    .end local v0    # "index":I
    :cond_0
    return v0
.end method

.method public getMaxVolume()I
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mMaxVolume:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 174
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->SUPPORT_FW_FINE_VOLUME:Z

    if-eqz v0, :cond_1

    .line 175
    const/16 v0, 0x96

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mMaxVolume:Ljava/lang/Integer;

    .line 180
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mMaxVolume:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mMaxVolume:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getVolume()I
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 166
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->SUPPORT_FW_FINE_VOLUME:Z

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManagerCompat:Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->getFineVolume(I)I

    move-result v0

    .line 169
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method public getVolumeNumber(I)I
    .locals 6
    .param p1, "volume"    # I

    .prologue
    .line 184
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->SUPPORT_FW_FINE_VOLUME:Z

    if-eqz v2, :cond_0

    .line 185
    int-to-double v2, p1

    const-wide v4, 0x4062c00000000000L    # 150.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v0, v2, v4

    .line 186
    .local v0, "level":D
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    .line 188
    .end local v0    # "level":D
    .end local p1    # "volume":I
    :cond_0
    return p1
.end method

.method public getVolumePercent()I
    .locals 6

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getVolume()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getMaxVolume()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v0, v2, v4

    .line 194
    .local v0, "level":D
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2
.end method

.method public isAudioPathBT()Z
    .locals 2

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getAudioPath()I

    move-result v0

    .line 393
    .local v0, "path":I
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isBt(I)Z

    move-result v1

    return v1
.end method

.method public isAudioPathEarjack()Z
    .locals 2

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getAudioPath()I

    move-result v0

    .line 383
    .local v0, "path":I
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isEarjack(I)Z

    move-result v1

    return v1
.end method

.method public isAudioPathHdmi()Z
    .locals 2

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getAudioPath()I

    move-result v0

    .line 423
    .local v0, "path":I
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isHdmi(I)Z

    move-result v1

    return v1
.end method

.method public isAudioPathLineOut()Z
    .locals 2

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getAudioPath()I

    move-result v0

    .line 413
    .local v0, "path":I
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isLineOut(I)Z

    move-result v1

    return v1
.end method

.method public isAudioPathUhqUpscalerActive(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathEarjack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathBTHeadset()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isBtUhqSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isBtUhqMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHeadsetOrBT()Z
    .locals 1

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathEarjack()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathBTHeadset()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathBT()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSafeMediaVolumeDeviceOn(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 213
    sget v3, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v4, 0x18ed7

    if-ge v3, v4, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-lt v3, v4, :cond_5

    .line 215
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isMultiSoundEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 217
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "appName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathBTHeadset()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 219
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathSpeakerInSeparateApp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .local v1, "isSafeVolumeDeviceOn":Z
    :goto_0
    move v2, v1

    .line 227
    .end local v0    # "appName":Ljava/lang/String;
    .end local v1    # "isSafeVolumeDeviceOn":Z
    :cond_1
    :goto_1
    return v2

    .restart local v0    # "appName":Ljava/lang/String;
    :cond_2
    move v1, v2

    .line 219
    goto :goto_0

    .line 221
    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathBtInSeparateApp(Ljava/lang/String;)Z

    move-result v1

    .restart local v1    # "isSafeVolumeDeviceOn":Z
    goto :goto_0

    .line 225
    .end local v0    # "appName":Ljava/lang/String;
    .end local v1    # "isSafeVolumeDeviceOn":Z
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManagerCompat:Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->isSafeMediaVolumeDeviceOn()Z

    move-result v2

    goto :goto_1

    .line 227
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathBTHeadset()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathEarjack()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_6
    move v2, v1

    goto :goto_1
.end method

.method public isSplitSoundOn()Z
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManagerCompat:Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->isSplitSoundOn()Z

    move-result v0

    return v0
.end method

.method public isWiredHeadsetOn()Z
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method public setSmartVolumeEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 257
    invoke-static {p1}, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->setSmartVoumeEnable(Z)V

    .line 258
    return-void
.end method

.method public setSoundPathToBT(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 297
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->selectRouteInt(ILandroid/content/Context;)V

    .line 298
    return-void
.end method

.method public setSoundPathToDevice(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 304
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->selectRouteInt(ILandroid/content/Context;)V

    .line 305
    return-void
.end method

.method public setVolume(I)V
    .locals 3
    .param p1, "volume"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 158
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->SUPPORT_FW_FINE_VOLUME:Z

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManagerCompat:Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;

    invoke-virtual {v0, v2, p1, v1}, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->setFineVolume(III)V

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method public toggleMute()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManager:Landroid/media/AudioManager;

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getVolume()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/support/media/AudioManagerCompat;->toggleMute(Landroid/media/AudioManager;I)V

    .line 130
    return-void
.end method
