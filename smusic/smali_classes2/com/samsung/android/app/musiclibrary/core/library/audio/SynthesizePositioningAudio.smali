.class public Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;
.super Ljava/lang/Object;
.source "SynthesizePositioningAudio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;
    }
.end annotation


# static fields
.field private static final DEFAULT:I = 0x0

.field private static final DEFAULT_PRIORITY:I = 0x0

.field private static final NEGATIVE:I = -0x1

.field private static final POSITIVE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAlbumPositionData:Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;

.field private mIsAlbumPositionChanged:I

.field private mIsEnableSynthPositionAudio:Z

.field private mNewFraction:F

.field private mSoundAliveCompat:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "audioSessionId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->mSoundAliveCompat:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;

    .line 20
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->mIsEnableSynthPositionAudio:Z

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->mNewFraction:F

    .line 24
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->mIsAlbumPositionChanged:I

    .line 26
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;-><init>(Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->mAlbumPositionData:Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;

    .line 33
    new-instance v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;)V

    invoke-direct {v0, v2, p1, v1}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;-><init>(IILcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->mSoundAliveCompat:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;

    .line 41
    const-wide/16 v0, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->set3DEffectPosition(ZD)V

    .line 42
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static isSupport3DEffect()Z
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->isSupport3DEffect()Z

    move-result v0

    return v0
.end method

.method private set3DEffectPosition(ZD)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "fraction"    # D

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->mSoundAliveCompat:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->set3DEffectPosition(ZD)V

    .line 78
    return-void
.end method

.method private set3DPosition(ZD)V
    .locals 4
    .param p1, "isEnable"    # Z
    .param p2, "fraction"    # D

    .prologue
    .line 73
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    mul-double/2addr v0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->set3DEffectPosition(ZD)V

    .line 74
    return-void
.end method


# virtual methods
.method public applyPositionEffect(ZIF)V
    .locals 4
    .param p1, "isNotSelectedPosition"    # Z
    .param p2, "position"    # I
    .param p3, "fraction"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->mAlbumPositionData:Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;->isInnerPosition(IF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->mAlbumPositionData:Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;->selectedPosition:I

    if-gez v0, :cond_4

    .line 83
    if-eqz p1, :cond_0

    .line 84
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->mIsAlbumPositionChanged:I

    if-nez v0, :cond_3

    .line 85
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_2

    .line 86
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->mIsAlbumPositionChanged:I

    .line 99
    :cond_0
    :goto_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->mIsAlbumPositionChanged:I

    if-ne v0, v1, :cond_5

    .line 100
    const/high16 v0, 0x40000000    # 2.0f

    add-float/2addr v0, p3

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->mNewFraction:F

    .line 106
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->mIsEnableSynthPositionAudio:Z

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->mNewFraction:F

    float-to-double v2, v1

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->set3DPosition(ZD)V

    .line 108
    :cond_1
    return-void

    .line 88
    :cond_2
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->mIsAlbumPositionChanged:I

    goto :goto_0

    .line 91
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->mIsAlbumPositionChanged:I

    goto :goto_0

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->mAlbumPositionData:Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;->getAlbumDirection(IF)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->mIsAlbumPositionChanged:I

    goto :goto_0

    .line 101
    :cond_5
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->mIsAlbumPositionChanged:I

    if-ne v0, v2, :cond_6

    .line 102
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->mNewFraction:F

    goto :goto_1

    .line 104
    :cond_6
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->mNewFraction:F

    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->mIsEnableSynthPositionAudio:Z

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->mSoundAliveCompat:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->release()V

    .line 46
    return-void
.end method

.method public setEnabled(Z)V
    .locals 5
    .param p1, "isEnable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->mIsEnableSynthPositionAudio:Z

    .line 50
    if-eqz p1, :cond_0

    .line 52
    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->set3DPosition(ZD)V

    .line 58
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->mNewFraction:F

    .line 59
    iput v4, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->mIsAlbumPositionChanged:I

    .line 60
    return-void

    .line 55
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->mNewFraction:F

    float-to-double v0, v0

    invoke-direct {p0, v4, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->set3DPosition(ZD)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->mAlbumPositionData:Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;->reset()V

    goto :goto_0
.end method

.method public setItemPosition(II)V
    .locals 1
    .param p1, "selectedPosition"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 67
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->mAlbumPositionData:Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$AlbumPositionData;->initPosition(II)V

    .line 70
    :cond_0
    return-void
.end method
