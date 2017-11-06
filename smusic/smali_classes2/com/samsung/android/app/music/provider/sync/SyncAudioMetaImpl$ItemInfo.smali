.class final Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;
.super Ljava/lang/Object;
.source "SyncAudioMetaImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ItemInfo"
.end annotation


# instance fields
.field private final mAlbumId:Ljava/lang/String;

.field private final mDate:Ljava/lang/String;

.field private final mId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/lang/String;
    .param p3, "albumId"    # Ljava/lang/String;

    .prologue
    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;->mId:Ljava/lang/String;

    .line 520
    iput-object p2, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;->mDate:Ljava/lang/String;

    .line 521
    iput-object p3, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;->mAlbumId:Ljava/lang/String;

    .line 522
    return-void
.end method


# virtual methods
.method compareTo(Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;)I
    .locals 2
    .param p1, "item"    # Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;

    .prologue
    .line 529
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;->mId:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method isEqualTo(Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;)Z
    .locals 3
    .param p1, "item"    # Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;

    .prologue
    .line 533
    const/4 v0, 0x1

    .line 534
    .local v0, "isEqual":Z
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;->mDate:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;->mDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;->mAlbumId:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 535
    :cond_0
    const/4 v0, 0x0

    .line 542
    :cond_1
    return v0
.end method
