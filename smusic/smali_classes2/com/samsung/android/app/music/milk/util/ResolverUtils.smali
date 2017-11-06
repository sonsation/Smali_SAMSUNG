.class public final Lcom/samsung/android/app/music/milk/util/ResolverUtils;
.super Ljava/lang/Object;
.source "ResolverUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/util/ResolverUtils$RadioHistory;,
        Lcom/samsung/android/app/music/milk/util/ResolverUtils$PurchasedTracks;,
        Lcom/samsung/android/app/music/milk/util/ResolverUtils$Artist;,
        Lcom/samsung/android/app/music/milk/util/ResolverUtils$Album;,
        Lcom/samsung/android/app/music/milk/util/ResolverUtils$MusicCategory;,
        Lcom/samsung/android/app/music/milk/util/ResolverUtils$DownloadBasket;,
        Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;,
        Lcom/samsung/android/app/music/milk/util/ResolverUtils$Favorite;,
        Lcom/samsung/android/app/music/milk/util/ResolverUtils$Station;,
        Lcom/samsung/android/app/music/milk/util/ResolverUtils$StationTracks;,
        Lcom/samsung/android/app/music/milk/util/ResolverUtils$Tracks;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaxOrder(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 69
    const/4 v7, 0x0

    .line 70
    .local v7, "playOrder":I
    const/4 v6, 0x0

    .line 72
    .local v6, "c":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "max(play_order)"

    aput-object v1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 73
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 75
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 79
    :cond_0
    if-eqz v6, :cond_1

    .line 80
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 83
    :cond_1
    return v7

    .line 79
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 80
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method
