.class public Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;
.super Ljava/lang/Object;
.source "SoundAliveCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SdlSoundAliveCompatImpl;,
        Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;,
        Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SoundAliveCompatImpl;,
        Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;,
        Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyExtra;,
        Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyPresetConstants;
    }
.end annotation


# static fields
.field public static final PRESET_CLASSIC:I

.field public static final PRESET_JAZZ:I

.field public static final PRESET_NORMAL:I

.field public static final PRESET_POP:I

.field public static final PRESET_ROCK:I

.field public static final PRESET_USER:I


# instance fields
.field private final IMPL:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SoundAliveCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 22
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 23
    sput v1, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_NORMAL:I

    .line 24
    sput v2, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_POP:I

    .line 25
    sput v3, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_ROCK:I

    .line 26
    const/4 v0, 0x3

    sput v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_JAZZ:I

    .line 27
    sput v4, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_CLASSIC:I

    .line 28
    sput v5, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_USER:I

    .line 37
    :goto_0
    return-void

    .line 30
    :cond_0
    sput v1, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_NORMAL:I

    .line 31
    sput v2, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_POP:I

    .line 32
    sput v3, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_ROCK:I

    .line 33
    sput v4, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_JAZZ:I

    .line 34
    sput v5, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_CLASSIC:I

    .line 35
    const/16 v0, 0xd

    sput v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_USER:I

    goto :goto_0
.end method

.method public constructor <init>(IILcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "audioSessionId"    # I
    .param p3, "listener"    # Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;-><init>(IILcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->IMPL:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SoundAliveCompatImpl;

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SdlSoundAliveCompatImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SdlSoundAliveCompatImpl;-><init>(IILcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->IMPL:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SoundAliveCompatImpl;

    goto :goto_0
.end method

.method public static isSupport3DEffect()Z
    .locals 1

    .prologue
    .line 113
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->isSupport3DEffect()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->IMPL:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SoundAliveCompatImpl;

    invoke-interface {v0}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SoundAliveCompatImpl;->release()V

    .line 137
    return-void
.end method

.method public set3DEffectPosition(ZD)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "fraction"    # D

    .prologue
    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->IMPL:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SoundAliveCompatImpl;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SoundAliveCompatImpl;->set3dEffectPosition(ZD)V

    .line 141
    return-void
.end method
