.class public final Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;
.super Ljava/lang/Object;
.source "SamsungAudioManagerCompat.java"


# static fields
.field public static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String;

.field public static final EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String;

.field private static final HAS_FINE_VOLUME_METHOD:Z

.field private static final HAS_SAMSUNG_AUDIO_MANGER:Z

.field private static final UNDEFINED:I

.field public static final VOLUME_CHANGED_ACTION:Ljava/lang/String;


# instance fields
.field private final mSamsungAudioManager:Landroid/media/SamsungAudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x836

    if-ge v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    .line 27
    :cond_0
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    sput-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->VOLUME_CHANGED_ACTION:Ljava/lang/String;

    .line 28
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    sput-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String;

    .line 29
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    sput-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String;

    .line 43
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->hasSamsungAudioManger()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->HAS_SAMSUNG_AUDIO_MANGER:Z

    .line 45
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->hasFineVolumeMethod()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->HAS_FINE_VOLUME_METHOD:Z

    return-void

    .line 32
    :cond_1
    const-string v0, "android.media.AudioManager"

    const-string v1, "VOLUME_CHANGED_ACTION"

    const-string v2, ""

    .line 33
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->VOLUME_CHANGED_ACTION:Ljava/lang/String;

    .line 35
    const-string v0, "android.media.AudioManager"

    const-string v1, "EXTRA_VOLUME_STREAM_TYPE"

    const-string v2, ""

    .line 36
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String;

    .line 38
    const-string v0, "android.media.AudioManager"

    const-string v1, "EXTRA_VOLUME_STREAM_VALUE"

    const-string v2, ""

    .line 39
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-boolean v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->HAS_SAMSUNG_AUDIO_MANGER:Z

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Landroid/media/SamsungAudioManager;

    invoke-direct {v0, p1}, Landroid/media/SamsungAudioManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    goto :goto_0
.end method

.method public static getDeviceOut(I)I
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 58
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x8fd

    if-lt v0, v1, :cond_0

    .line 59
    invoke-static {p0}, Landroid/media/SamsungAudioManager;->getDeviceOut(I)I

    move-result v0

    .line 61
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasFineVolumeMethod()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 132
    const-string v4, "android.media.SamsungAudioManager"

    const-string v5, "getFineMediaVolume"

    new-array v6, v3, [Ljava/lang/Class;

    .line 133
    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 135
    .local v0, "getFineMediaVolume":Ljava/lang/reflect/Method;
    const-string v4, "android.media.SamsungAudioManager"

    const-string/jumbo v5, "setFineMediaVolume"

    new-array v6, v2, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    .line 136
    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 137
    .local v1, "setFineMediaVolume":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private static hasSamsungAudioManger()Z
    .locals 1

    .prologue
    .line 127
    const-string v0, "android.media.SamsungAudioManager"

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->hasClass(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportFineVolume()Z
    .locals 1

    .prologue
    .line 141
    sget-boolean v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->HAS_SAMSUNG_AUDIO_MANGER:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->HAS_FINE_VOLUME_METHOD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getFineVolume(Landroid/media/AudioManager;I)I
    .locals 5
    .param p1, "manager"    # Landroid/media/AudioManager;
    .param p2, "streamType"    # I

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    if-eqz v3, :cond_0

    .line 96
    sget v3, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v4, 0x8fe

    if-lt v3, v4, :cond_1

    .line 97
    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/SamsungAudioManager;->getFineVolume(I)I

    move-result v2

    .line 106
    :cond_0
    :goto_0
    return v2

    .line 98
    :cond_1
    sget-boolean v3, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->HAS_FINE_VOLUME_METHOD:Z

    if-eqz v3, :cond_0

    .line 99
    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 100
    .local v1, "streamVolume":I
    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v2}, Landroid/media/SamsungAudioManager;->getFineMediaVolume()I

    move-result v0

    .line 101
    .local v0, "offset":I
    mul-int/lit8 v2, v1, 0xa

    add-int/2addr v2, v0

    goto :goto_0
.end method

.method public getFineVolumeOffset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v0}, Landroid/media/SamsungAudioManager;->getFineMediaVolume()I

    move-result v0

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSafeMediaVolumeDeviceOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 111
    sget v1, Landroid/os/Build$VERSION;->SDL_INT:I

    const/16 v2, 0x837

    if-ge v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_1

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v1}, Landroid/media/SamsungAudioManager;->isSafeMediaVolumeDeviceOn()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 115
    :cond_1
    return v0
.end method

.method public isSplitSoundOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 119
    sget v1, Landroid/os/Build$VERSION;->SDL_INT:I

    const/16 v2, 0x837

    if-ge v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_1

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v1}, Landroid/media/SamsungAudioManager;->isSplitSoundOn()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 123
    :cond_1
    return v0
.end method

.method public setFineVolume(Landroid/media/AudioManager;III)V
    .locals 4
    .param p1, "manager"    # Landroid/media/AudioManager;
    .param p2, "streamType"    # I
    .param p3, "index"    # I
    .param p4, "flags"    # I

    .prologue
    .line 73
    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    if-eqz v2, :cond_0

    .line 74
    sget v2, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v3, 0x8fe

    if-lt v2, v3, :cond_1

    .line 75
    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v2, p2, p3, p4}, Landroid/media/SamsungAudioManager;->setFineVolume(III)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    sget-boolean v2, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->HAS_FINE_VOLUME_METHOD:Z

    if-eqz v2, :cond_0

    .line 77
    div-int/lit8 v1, p3, 0xa

    .line 78
    .local v1, "streamVolume":I
    rem-int/lit8 v0, p3, 0xa

    .line 79
    .local v0, "offset":I
    invoke-virtual {p1, p2, v1, p4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 80
    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v2, v0}, Landroid/media/SamsungAudioManager;->setFineMediaVolume(I)V

    goto :goto_0
.end method

.method public setFineVolumeOffset(I)V
    .locals 1
    .param p1, "offset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v0, p1}, Landroid/media/SamsungAudioManager;->setFineMediaVolume(I)V

    .line 70
    :cond_0
    return-void
.end method
