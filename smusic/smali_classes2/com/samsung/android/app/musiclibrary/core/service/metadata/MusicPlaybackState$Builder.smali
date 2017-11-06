.class public final Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;
.super Ljava/lang/Object;
.source "MusicPlaybackState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDuration:J

.field private mPlaySpeed:F

.field private mPlayerType:I

.field private mPosition:J

.field private mSoundPath:I

.field private mState:I

.field private mSupposedToPlaying:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->mState:I

    .line 149
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->mPlayerType:I

    .line 151
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->mSoundPath:I

    .line 153
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->mPosition:J

    .line 155
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->mDuration:J

    .line 157
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->mPlaySpeed:F

    .line 159
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->mSupposedToPlaying:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .prologue
    .line 146
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->mState:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .prologue
    .line 146
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->mPlayerType:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .prologue
    .line 146
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->mSoundPath:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->mPosition:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .prologue
    .line 146
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->mPlaySpeed:F

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->mSupposedToPlaying:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 2

    .prologue
    .line 197
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$1;)V

    return-object v0
.end method

.method public setDuration(J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 182
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->mDuration:J

    .line 183
    return-object p0
.end method

.method public setPlaySpeed(F)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;
    .locals 0
    .param p1, "playSpeed"    # F

    .prologue
    .line 187
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->mPlaySpeed:F

    .line 188
    return-object p0
.end method

.method public setPlayerState(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->mState:I

    .line 163
    return-object p0
.end method

.method public setPlayerType(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 167
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->mPlayerType:I

    .line 168
    return-object p0
.end method

.method public setPosition(J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;
    .locals 1
    .param p1, "position"    # J

    .prologue
    .line 177
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->mPosition:J

    .line 178
    return-object p0
.end method

.method public setSoundPath(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;
    .locals 0
    .param p1, "path"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->mSoundPath:I

    .line 173
    return-object p0
.end method

.method public setSupposedToPlaying(Z)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;
    .locals 0
    .param p1, "supposedToPlaying"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->mSupposedToPlaying:Z

    .line 193
    return-object p0
.end method
