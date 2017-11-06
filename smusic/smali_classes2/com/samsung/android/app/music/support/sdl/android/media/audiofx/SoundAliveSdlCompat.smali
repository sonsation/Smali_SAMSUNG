.class public Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;
.super Ljava/lang/Object;
.source "SoundAliveSdlCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat$OnSdlErrorListener;,
        Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat$LegacyExtra;,
        Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat$LegacyPresetConstants;
    }
.end annotation


# static fields
.field public static final PRESET_CLASSIC:I = 0x5

.field public static final PRESET_JAZZ:I = 0x4

.field public static final PRESET_NORMAL:I = 0x0

.field public static final PRESET_POP:I = 0x1

.field public static final PRESET_ROCK:I = 0x2

.field public static final PRESET_USER:I = 0xd

.field private static final TAG:Ljava/lang/String;

.field private static sIsSupportLegacyAPI:Ljava/lang/Boolean;

.field private static sLegacySet3DPosition:Ljava/lang/reflect/Method;


# instance fields
.field private final mAudioSessionId:I

.field private final mOnErrorListener:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat$OnSdlErrorListener;

.field private final mPriority:I

.field private mSoundAlive:Landroid/media/audiofx/SoundAlive;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat$OnSdlErrorListener;)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "audioSessionId"    # I
    .param p3, "listener"    # Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat$OnSdlErrorListener;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    .line 77
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mPriority:I

    .line 78
    iput p2, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mAudioSessionId:I

    .line 79
    iput-object p3, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mOnErrorListener:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat$OnSdlErrorListener;

    .line 80
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->ensureSoundAlive()V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;)Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat$OnSdlErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mOnErrorListener:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat$OnSdlErrorListener;

    return-object v0
.end method

.method private ensureSoundAlive()V
    .locals 4

    .prologue
    .line 85
    :try_start_0
    new-instance v1, Landroid/media/audiofx/SoundAlive;

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mPriority:I

    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mAudioSessionId:I

    invoke-direct {v1, v2, v3}, Landroid/media/audiofx/SoundAlive;-><init>(II)V

    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    .line 86
    sget v1, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v2, 0x837

    if-ge v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_1

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    new-instance v2, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat$1;-><init>(Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;)V

    invoke-virtual {v1, v2}, Landroid/media/audiofx/SoundAlive;->setErrorListener(Landroid/media/audiofx/SoundAlive$OnErrorListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_1
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->release()V

    goto :goto_0
.end method

.method public static isSupport3DEffect()Z
    .locals 2

    .prologue
    .line 133
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x8fd

    if-lt v0, v1, :cond_0

    .line 134
    const/4 v0, 0x1

    .line 136
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->isSupportLegacyApi()Z

    move-result v0

    goto :goto_0
.end method

.method private static isSupportLegacyApi()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 147
    sget-object v2, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->sIsSupportLegacyAPI:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 149
    const-string v2, "android.media.audiofx.SoundAlive"

    const-string/jumbo v3, "set3DPosition"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    .line 150
    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->sLegacySet3DPosition:Ljava/lang/reflect/Method;

    .line 152
    sget-object v2, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->sLegacySet3DPosition:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->sIsSupportLegacyAPI:Ljava/lang/Boolean;

    .line 154
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->sIsSupportLegacyAPI:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 152
    goto :goto_0
.end method

.method private static legacySet3DPosition(Landroid/media/audiofx/SoundAlive;ZD)V
    .locals 4
    .param p0, "sa"    # Landroid/media/audiofx/SoundAlive;
    .param p1, "enable"    # Z
    .param p2, "fraction"    # D

    .prologue
    .line 140
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->isSupportLegacyApi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 143
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->sLegacySet3DPosition:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    if-eqz v0, :cond_2

    .line 102
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x837

    if-ge v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    invoke-virtual {v0, v2}, Landroid/media/audiofx/SoundAlive;->setErrorListener(Landroid/media/audiofx/SoundAlive$OnErrorListener;)V

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    invoke-virtual {v0}, Landroid/media/audiofx/SoundAlive;->release()V

    .line 106
    iput-object v2, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    .line 108
    :cond_2
    return-void
.end method

.method public set3DEffectPosition(ZD)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "fraction"    # D

    .prologue
    .line 111
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    if-nez v1, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->ensureSoundAlive()V

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    if-eqz v1, :cond_1

    .line 117
    sget v1, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v2, 0x8fd

    if-lt v1, v2, :cond_2

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    invoke-virtual {v1, p1, p2, p3}, Landroid/media/audiofx/SoundAlive;->set3DEffectPosition(ZD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 130
    :cond_1
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    sget-object v1, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->release()V

    goto :goto_0

    .line 125
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    sget v1, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v2, 0x837

    if-ge v1, v2, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_1

    .line 127
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    invoke-static {v1, p1, p2, p3}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->legacySet3DPosition(Landroid/media/audiofx/SoundAlive;ZD)V

    goto :goto_0

    .line 120
    :catch_1
    move-exception v0

    goto :goto_1
.end method
