.class Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;
.super Ljava/lang/Object;
.source "MiniPlayerAlbumArt.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageSwitcherInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final mActiveQueue:I

.field private final mAlbumId:J

.field private mAnimationStarted:Z

.field private final mCpAttrs:I

.field private final mIsPrivate:Z

.field private final mViDirection:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 360
    new-instance v0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mAnimationStarted:Z

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mCpAttrs:I

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mIsPrivate:Z

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mAlbumId:J

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mViDirection:I

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mActiveQueue:I

    .line 333
    return-void

    :cond_0
    move v0, v1

    .line 329
    goto :goto_0
.end method

.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mAnimationStarted:Z

    .line 320
    const-string v0, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mCpAttrs:I

    .line 321
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isPrivate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mIsPrivate:Z

    .line 322
    const-string v0, "com.samsung.android.app.music.metadata.ALBUM_ID"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mAlbumId:J

    .line 323
    const-string v0, "com.samsung.android.app.music.metadata.PLAY_DIRECTION"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mViDirection:I

    .line 324
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueType()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mActiveQueue:I

    .line 325
    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mIsPrivate:Z

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    .prologue
    .line 305
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mAlbumId:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    .prologue
    .line 305
    iget v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mCpAttrs:I

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    .prologue
    .line 305
    iget v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mActiveQueue:I

    return v0
.end method


# virtual methods
.method animationStarted()V
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mAnimationStarted:Z

    .line 344
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 381
    if-ne p0, p1, :cond_1

    .line 390
    :cond_0
    :goto_0
    return v1

    .line 384
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 385
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 388
    check-cast v0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    .line 390
    .local v0, "that":Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;
    iget v3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mCpAttrs:I

    iget v4, v0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mCpAttrs:I

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mIsPrivate:Z

    iget-boolean v4, v0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mIsPrivate:Z

    if-ne v3, v4, :cond_4

    iget-wide v4, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mAlbumId:J

    iget-wide v6, v0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mAlbumId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget v3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mViDirection:I

    iget v4, v0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mViDirection:I

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mAnimationStarted:Z

    iget-boolean v4, v0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mAnimationStarted:Z

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mActiveQueue:I

    iget v4, v0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mActiveQueue:I

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method getViDirection()I
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mAnimationStarted:Z

    if-eqz v0, :cond_0

    .line 337
    const/4 v0, 0x0

    .line 339
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mViDirection:I

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 398
    iget v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mCpAttrs:I

    .line 399
    .local v0, "result":I
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mIsPrivate:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v4, v1

    .line 400
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mAlbumId:J

    iget-wide v6, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mAlbumId:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v0, v1, v4

    .line 401
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mViDirection:I

    add-int v0, v1, v4

    .line 402
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mAnimationStarted:Z

    if-eqz v4, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 403
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mActiveQueue:I

    add-int v0, v1, v2

    .line 404
    return v0

    :cond_0
    move v1, v3

    .line 399
    goto :goto_0

    :cond_1
    move v2, v3

    .line 402
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageSwitcherInfo{mCpAttrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mCpAttrs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsPrivate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mIsPrivate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAlbumId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mAlbumId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mViDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mViDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAnimationStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mAnimationStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mActiveQueue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mActiveQueue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 353
    iget v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mCpAttrs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mIsPrivate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mAlbumId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 356
    iget v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mViDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    iget v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->mActiveQueue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    return-void

    .line 354
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
