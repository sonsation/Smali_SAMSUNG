.class public Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;
.super Ljava/lang/Object;
.source "AudioManagerCompat.java"


# static fields
.field public static final ACTION_AUDIO_BECOMING_NOISY_SEC:Ljava/lang/String;

.field private static final IS_MULTI_SOUND_ON:Ljava/lang/String; = "isMultiSoundOn"

.field private static final PERSIST_AUDIO_FINEMEDIAVOLUME:Ljava/lang/String; = "persist.audio.finemediavolume"

.field private static final PERSIST_AUDIO_GLOBAL_EFFECT:Ljava/lang/String; = "persist.audio.globaleffect"

.field private static final PERSIST_AUDIO_UHQA:Ljava/lang/String; = "persist.audio.uhqa"

.field public static final SAMSUNG_EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String;

.field public static final SAMSUNG_EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String;

.field public static final SAMSUNG_VOLUME_CHANGED_ACTION:Ljava/lang/String;

.field public static final SOUNDALIVE_SET_SPEED:I


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mSamsungAudioManagerCompat:Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;

.field private mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x400

    .line 31
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 33
    const-string v0, "android.media.AudioManager"

    const-string v1, "SEM_VOLUME_CHANGED_ACTION"

    const-string v2, ""

    .line 34
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->SAMSUNG_VOLUME_CHANGED_ACTION:Ljava/lang/String;

    .line 36
    const-string v0, "android.media.AudioManager"

    const-string v1, "SEM_EXTRA_VOLUME_STREAM_TYPE"

    const-string v2, ""

    .line 37
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->SAMSUNG_EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String;

    .line 39
    const-string v0, "android.media.AudioManager"

    const-string v1, "SEM_EXTRA_VOLUME_STREAM_VALUE"

    const-string v2, ""

    .line 40
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->SAMSUNG_EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String;

    .line 41
    const-string v0, "android.media.AUDIO_BECOMING_NOISY_SEC"

    sput-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->ACTION_AUDIO_BECOMING_NOISY_SEC:Ljava/lang/String;

    .line 42
    sput v3, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->SOUNDALIVE_SET_SPEED:I

    .line 50
    :goto_0
    return-void

    .line 44
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->VOLUME_CHANGED_ACTION:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->SAMSUNG_VOLUME_CHANGED_ACTION:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->SAMSUNG_EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->SAMSUNG_EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String;

    .line 47
    const-string v0, "android.media.AUDIO_BECOMING_NOISY_SEC"

    sput-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->ACTION_AUDIO_BECOMING_NOISY_SEC:Ljava/lang/String;

    .line 48
    sput v3, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->SOUNDALIVE_SET_SPEED:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    .line 68
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSamsungAudioManagerCompat:Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSamsungAudioManagerCompat:Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;

    goto :goto_0
.end method

.method public static getDeviceOut(I)I
    .locals 1
    .param p0, "typeDevice"    # I

    .prologue
    .line 76
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p0}, Landroid/media/AudioManager;->semGetDeviceOut(I)I

    move-result v0

    .line 79
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->getDeviceOut(I)I

    move-result v0

    goto :goto_0
.end method

.method public static getEarProtectLimit()I
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Landroid/media/AudioManager;->semGetEarProtectLimit()I

    move-result v0

    .line 103
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/android/media/AudioManagerSdlCompat;->getEarProtectLimitIndex()I

    move-result v0

    goto :goto_0
.end method

.method public static isFineVolumeSupported()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 130
    sget-boolean v2, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v2, :cond_1

    .line 131
    invoke-static {}, Landroid/media/AudioManager;->semIsFineVolumeSupported()Z

    move-result v0

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    const-string v2, "persist.audio.finemediavolume"

    invoke-static {v2, v1}, Lcom/samsung/android/app/music/support/android/os/SystemPropertiesCompat;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 134
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->isSupportFineVolume()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isSupportGlobalEffect()Z
    .locals 2

    .prologue
    .line 166
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 168
    const/4 v0, 0x1

    .line 170
    :goto_0
    return v0

    :cond_0
    const-string v0, "1"

    const-string v1, "persist.audio.globaleffect"

    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/android/os/SystemPropertiesSdlCompat;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isUhqSupported()Z
    .locals 2

    .prologue
    .line 139
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-static {}, Landroid/media/AudioManager;->semIsUhqSupported()Z

    move-result v0

    .line 142
    :goto_0
    return v0

    :cond_0
    const-string v0, "1"

    const-string v1, "persist.audio.uhqa"

    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/android/os/SystemPropertiesSdlCompat;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static setSmartVoumeEnable(Z)V
    .locals 1
    .param p0, "enable"    # Z

    .prologue
    .line 124
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-nez v0, :cond_0

    .line 125
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/AudioManagerSdlCompat;->setSmartVoumeEnable(Z)V

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method public getFineVolume(I)I
    .locals 2
    .param p1, "StreamType"    # I

    .prologue
    .line 92
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->semGetFineVolume(I)I

    move-result v0

    .line 95
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSamsungAudioManagerCompat:Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->getFineVolume(Landroid/media/AudioManager;I)I

    move-result v0

    goto :goto_0
.end method

.method public isMultiSoundOn(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 147
    sget-boolean v2, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v2, :cond_1

    .line 148
    sget v2, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v3, 0x31705

    if-lt v2, v3, :cond_2

    .line 149
    iget-object v1, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    if-nez v1, :cond_0

    .line 150
    new-instance v1, Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-direct {v1, p1}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemSoundAssistantManager;->isMultiSoundOn()Z

    move-result v1

    .line 162
    :cond_1
    :goto_0
    return v1

    .line 153
    :cond_2
    sget v2, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v3, 0x316a1

    if-lt v2, v3, :cond_1

    .line 154
    const-string v2, "android.media.AudioManager"

    const-string v3, "isMultiSoundOn"

    new-array v4, v1, [Ljava/lang/Class;

    .line 155
    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 157
    .local v0, "mMethod":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_1

    .line 158
    iget-object v2, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public isSafeMediaVolumeDeviceOn()Z
    .locals 1

    .prologue
    .line 108
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result v0

    .line 111
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSamsungAudioManagerCompat:Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->isSafeMediaVolumeDeviceOn()Z

    move-result v0

    goto :goto_0
.end method

.method public isSplitSoundOn()Z
    .locals 1

    .prologue
    .line 116
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semIsSplitSoundOn()Z

    move-result v0

    .line 119
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSamsungAudioManagerCompat:Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->isSplitSoundOn()Z

    move-result v0

    goto :goto_0
.end method

.method public setFineVolume(III)V
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    .line 84
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->semSetFineVolume(III)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSamsungAudioManagerCompat:Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->setFineVolume(Landroid/media/AudioManager;III)V

    goto :goto_0
.end method
