.class final Lcom/samsung/android/app/music/list/common/info/DlnaDmsArtistTrackCursor$ArtistPartialAlbumCursor;
.super Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;
.source "DlnaDmsArtistTrackCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/common/info/DlnaDmsArtistTrackCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArtistPartialAlbumCursor"
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/Cursor;II)V
    .locals 0
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "rangeStart"    # I
    .param p3, "rangeEnd"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;-><init>(Landroid/database/Cursor;II)V

    .line 68
    return-void
.end method


# virtual methods
.method protected onRedirectCompleteInternal(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "data"    # Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "redirectedInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;>;"
    .local p3, "subtitleInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;>;"
    const/4 v8, 0x0

    .line 79
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->onRedirectCompleteInternal(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 80
    invoke-static {}, Lcom/samsung/android/app/music/list/common/info/DlnaDmsArtistTrackCursor;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onRedirectCompleteInternal() redirected-infos : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 81
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", subtitle-infos : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 82
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;

    const/16 v4, -0x270f

    iget v5, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->columnCount:I

    invoke-direct {v2, p0, v4, v8, v5}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;-><init>(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;III)V

    .line 91
    .local v2, "sinfo":Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/info/DlnaDmsArtistTrackCursor$ArtistPartialAlbumCursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "rowIdColumnIndex":I
    const-string v4, "album"

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/common/info/DlnaDmsArtistTrackCursor$ArtistPartialAlbumCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 94
    .local v3, "subtitleColumnIndex":I
    const-string v4, "album_id"

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/common/info/DlnaDmsArtistTrackCursor$ArtistPartialAlbumCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 98
    .local v0, "albumIdIndex":I
    :cond_0
    invoke-virtual {p0, v8}, Lcom/samsung/android/app/music/list/common/info/DlnaDmsArtistTrackCursor$ArtistPartialAlbumCursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 103
    :goto_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/list/common/info/DlnaDmsArtistTrackCursor$ArtistPartialAlbumCursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;->setColumnValue(ILjava/lang/Object;)V

    .line 104
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/common/info/DlnaDmsArtistTrackCursor$ArtistPartialAlbumCursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;->setColumnValue(ILjava/lang/Object;)V

    .line 106
    .end local v0    # "albumIdIndex":I
    .end local v1    # "rowIdColumnIndex":I
    .end local v3    # "subtitleColumnIndex":I
    :cond_1
    invoke-virtual {p3, v8, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 107
    new-instance v4, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;

    invoke-direct {v4, v8, v8}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;-><init>(II)V

    invoke-virtual {p2, v8, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 115
    return-void

    .line 101
    .restart local v0    # "albumIdIndex":I
    .restart local v1    # "rowIdColumnIndex":I
    .restart local v3    # "subtitleColumnIndex":I
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/info/DlnaDmsArtistTrackCursor$ArtistPartialAlbumCursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0
.end method

.method protected onRedirectStartInternal(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;)V
    .locals 1
    .param p1, "data"    # Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;

    .prologue
    .line 72
    const/4 v0, 0x0

    iput v0, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->pos:I

    .line 73
    const/4 v0, 0x1

    iput v0, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->subtitlePos:I

    .line 74
    return-void
.end method
