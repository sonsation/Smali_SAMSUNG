.class Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;
.super Ljava/lang/Object;
.source "SoundAliveCompat.java"

# interfaces
.implements Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SoundAliveCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SepSoundAliveCompatImpl"
.end annotation


# instance fields
.field private final mAudioSessionId:I

.field private final mOnErrorListener:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;

.field private final mPriority:I

.field private mSemSoundAlive:Landroid/media/audiofx/SemSoundAlive;


# direct methods
.method public constructor <init>(IILcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;)V
    .locals 0
    .param p1, "priority"    # I
    .param p2, "audioSessionId"    # I
    .param p3, "listener"    # Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput p1, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->mPriority:I

    .line 154
    iput p2, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->mAudioSessionId:I

    .line 155
    iput-object p3, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->mOnErrorListener:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;

    .line 156
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->ensureSoundAlive()V

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;)Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->mOnErrorListener:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;

    return-object v0
.end method

.method private ensureSoundAlive()V
    .locals 4

    .prologue
    .line 170
    :try_start_0
    new-instance v1, Landroid/media/audiofx/SemSoundAlive;

    iget v2, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->mPriority:I

    iget v3, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->mAudioSessionId:I

    invoke-direct {v1, v2, v3}, Landroid/media/audiofx/SemSoundAlive;-><init>(II)V

    iput-object v1, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->mSemSoundAlive:Landroid/media/audiofx/SemSoundAlive;

    .line 171
    iget-object v1, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->mSemSoundAlive:Landroid/media/audiofx/SemSoundAlive;

    new-instance v2, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl$1;-><init>(Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;)V

    invoke-virtual {v1, v2}, Landroid/media/audiofx/SemSoundAlive;->setErrorListener(Landroid/media/audiofx/SemSoundAlive$OnErrorListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->release()V

    goto :goto_0
.end method


# virtual methods
.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->mSemSoundAlive:Landroid/media/audiofx/SemSoundAlive;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->mSemSoundAlive:Landroid/media/audiofx/SemSoundAlive;

    invoke-virtual {v0, v1}, Landroid/media/audiofx/SemSoundAlive;->setErrorListener(Landroid/media/audiofx/SemSoundAlive$OnErrorListener;)V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->mSemSoundAlive:Landroid/media/audiofx/SemSoundAlive;

    invoke-virtual {v0}, Landroid/media/audiofx/SemSoundAlive;->release()V

    .line 164
    iput-object v1, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->mSemSoundAlive:Landroid/media/audiofx/SemSoundAlive;

    .line 166
    :cond_0
    return-void
.end method

.method public set3dEffectPosition(ZD)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "fraction"    # D

    .prologue
    .line 185
    iget-object v1, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->mSemSoundAlive:Landroid/media/audiofx/SemSoundAlive;

    if-nez v1, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->ensureSoundAlive()V

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->mSemSoundAlive:Landroid/media/audiofx/SemSoundAlive;

    if-eqz v1, :cond_1

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->mSemSoundAlive:Landroid/media/audiofx/SemSoundAlive;

    invoke-virtual {v1, p1, p2, p3}, Landroid/media/audiofx/SemSoundAlive;->set3dEffectPosition(ZD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_1
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->release()V

    goto :goto_0
.end method
