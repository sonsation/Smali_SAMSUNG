.class public final Lcom/samsung/android/app/music/milk/util/ResolverUtils$StationTracks;
.super Ljava/lang/Object;
.source "ResolverUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/util/ResolverUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StationTracks"
.end annotation


# static fields
.field private static mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 177
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$StationTracks;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/util/ResolverUtils$StationTracks;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromStationTracks(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/SimpleTrack;
    .locals 4
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 197
    new-instance v2, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-direct {v2}, Lcom/samsung/android/app/music/common/model/SimpleTrack;-><init>()V

    .line 198
    .local v2, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    const-string/jumbo v3, "track_id"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setTrackId(Ljava/lang/String;)V

    .line 199
    const-string/jumbo v3, "track_track_title"

    .line 200
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setTrackTitle(Ljava/lang/String;)V

    .line 201
    const-string/jumbo v3, "track_album_id"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setAlbumId(Ljava/lang/String;)V

    .line 202
    const-string/jumbo v3, "track_album_title"

    .line 203
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setAlbumTitle(Ljava/lang/String;)V

    .line 204
    const v3, 0x80002

    invoke-static {v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->convertToAudioType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setAudioType(Ljava/lang/String;)V

    .line 205
    const-string/jumbo v3, "track_artist_id"

    .line 206
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "sourceArtistId":Ljava/lang/String;
    const-string/jumbo v3, "track_artist_name"

    .line 208
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "artistName":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/common/model/artist/Artist;->createArtists(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 209
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setArtistList(Ljava/util/ArrayList;)V

    .line 211
    return-object v2
.end method

.method public static getSimpleTrack(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/SimpleTrack;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "audioSourceId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 180
    const/4 v6, 0x0

    .line 182
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/milk/util/ResolverUtils$StationTracks;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string/jumbo v3, "track_id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    .line 183
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 185
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-static {v6}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$StationTracks;->fromStationTracks(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/SimpleTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 189
    if-eqz v6, :cond_0

    .line 190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_0
    :goto_0
    return-object v0

    .line 189
    :cond_1
    if-eqz v6, :cond_2

    .line 190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v7

    .line 193
    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method
