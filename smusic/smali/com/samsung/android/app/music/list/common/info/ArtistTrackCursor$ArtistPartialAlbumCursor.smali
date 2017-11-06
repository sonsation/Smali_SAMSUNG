.class final Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$ArtistPartialAlbumCursor;
.super Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;
.source "ArtistTrackCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArtistPartialAlbumCursor"
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/Cursor;II)V
    .locals 0
    .param p1, "c"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "rangeStart"    # I
    .param p3, "rangeEnd"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;-><init>(Landroid/database/Cursor;II)V

    .line 72
    return-void
.end method


# virtual methods
.method protected onRedirectCompleteInternal(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11
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
    const/4 v10, 0x0

    .line 83
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->onRedirectCompleteInternal(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 84
    invoke-static {}, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onRedirectCompleteInternal() redirected-infos : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 85
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", subtitle-infos : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 86
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 84
    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;

    const/16 v5, -0x270f

    iget v6, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->columnCount:I

    invoke-direct {v2, p0, v5, v10, v6}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;-><init>(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;III)V

    .line 95
    .local v2, "sinfo":Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$ArtistPartialAlbumCursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, "rowIdColumnIndex":I
    const-string/jumbo v5, "year_name"

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$ArtistPartialAlbumCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 98
    .local v4, "yearColumnIndex":I
    const-string v5, "album"

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$ArtistPartialAlbumCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 99
    .local v3, "subtitleColumnIndex":I
    const-string v5, "album_id"

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$ArtistPartialAlbumCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 103
    .local v0, "albumIdIndex":I
    :cond_0
    invoke-virtual {p0, v10}, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$ArtistPartialAlbumCursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    .line 108
    :goto_0
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$ArtistPartialAlbumCursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;->setColumnValue(ILjava/lang/Object;)V

    .line 109
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$ArtistPartialAlbumCursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;->setColumnValue(ILjava/lang/Object;)V

    .line 110
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$ArtistPartialAlbumCursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;->setColumnValue(ILjava/lang/Object;)V

    .line 112
    .end local v0    # "albumIdIndex":I
    .end local v1    # "rowIdColumnIndex":I
    .end local v3    # "subtitleColumnIndex":I
    .end local v4    # "yearColumnIndex":I
    :cond_1
    invoke-virtual {p3, v10, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 113
    new-instance v5, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;

    invoke-direct {v5, v10, v10}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;-><init>(II)V

    invoke-virtual {p2, v10, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 121
    return-void

    .line 106
    .restart local v0    # "albumIdIndex":I
    .restart local v1    # "rowIdColumnIndex":I
    .restart local v3    # "subtitleColumnIndex":I
    .restart local v4    # "yearColumnIndex":I
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$ArtistPartialAlbumCursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0
.end method

.method protected onRedirectStartInternal(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;)V
    .locals 1
    .param p1, "data"    # Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;

    .prologue
    .line 76
    const/4 v0, 0x0

    iput v0, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->pos:I

    .line 77
    const/4 v0, 0x1

    iput v0, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->subtitlePos:I

    .line 78
    return-void
.end method
