.class public final Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
.super Ljava/lang/Object;
.source "MusicPlaybackState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;,
        Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEMP_LAZY_PLAYER_INITIALIZE:Z


# instance fields
.field private final mDuration:J

.field private final mPlaySpeed:F

.field private final mPlayerType:I

.field private final mPosition:J

.field private final mSoundPath:I

.field private final mState:I

.field private final mSupposedToPlaying:Z

.field private final mSupposedToPlayingArray:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mSupposedToPlayingArray:[Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mState:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mPlayerType:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mSoundPath:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mPosition:J

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mDuration:J

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mPlaySpeed:F

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mSupposedToPlayingArray:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mSupposedToPlayingArray:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mSupposedToPlaying:Z

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$1;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mSupposedToPlayingArray:[Z

    .line 61
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mState:I

    .line 62
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mPlayerType:I

    .line 63
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mSoundPath:I

    .line 64
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->access$300(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mPosition:J

    .line 65
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mDuration:J

    .line 66
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mPlaySpeed:F

    .line 67
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->access$600(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mSupposedToPlaying:Z

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$1;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mDuration:J

    return-wide v0
.end method

.method public getPlaySpeed()F
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mPlaySpeed:F

    return v0
.end method

.method public getPlayerState()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mState:I

    return v0
.end method

.method public getPlayerType()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mPlayerType:I

    return v0
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mPosition:J

    return-wide v0
.end method

.method public getSoundPath()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mSoundPath:I

    return v0
.end method

.method public isSamePlaybackState(Z)Z
    .locals 1
    .param p1, "isSupposedTobePlaying"    # Z

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupposedToPlaying()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mSupposedToPlaying:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MusicPlaybackState > "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, " PlayState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    const-string v1, " PlayPosition : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mPosition:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 208
    const-string v1, " PlayDuration : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mDuration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 210
    const-string v1, " PlaySpeed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mPlaySpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 212
    const-string v1, " SupposedToPlay : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mSupposedToPlaying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 214
    const-string v1, " PlayerType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mPlayerType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    const-string v1, " SoundPath : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mSoundPath:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 124
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mPlayerType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mSoundPath:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mPosition:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 128
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 129
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mPlaySpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mSupposedToPlayingArray:[Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mSupposedToPlaying:Z

    aput-boolean v2, v0, v1

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->mSupposedToPlayingArray:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 132
    return-void
.end method
