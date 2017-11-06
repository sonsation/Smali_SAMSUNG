.class Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;
.super Landroid/os/AsyncTask;
.source "PlaylistItemUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final sPlaylistItemInfoCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHolder:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

.field private final mPlaylistId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->sPlaylistItemInfoCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .param p3, "playlistId"    # J

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->mHolder:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    .line 38
    iput-wide p3, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->mPlaylistId:J

    .line 39
    return-void
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->sPlaylistItemInfoCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 100
    return-void
.end method

.method private updateUi(Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;)V
    .locals 7
    .param p1, "info"    # Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;

    .prologue
    .line 80
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->mHolder:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->getItemId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->mPlaylistId:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->mHolder:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->mHolder:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    iget-object v3, v3, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01de

    .line 86
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0004

    iget v3, p1, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->trackCount:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p1, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->trackCount:I

    .line 88
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "trackCount":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->mHolder:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->mHolder:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 92
    const v1, 0x7f0d0063

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->cpAttrs:I

    .line 93
    invoke-static {v2}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getArtWorkUri(I)Landroid/net/Uri;

    move-result-object v2

    iget-wide v4, p1, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->thumbnailId:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withBaseUri(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->mHolder:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    sget v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->DEFAULT_ALBUM_ART:I

    .line 94
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToImageView(Landroid/widget/ImageView;I)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;
    .locals 13
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v9, 0x0

    const/4 v4, -0x1

    .line 53
    new-instance v0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->mContext:Landroid/content/Context;

    iget-wide v10, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->mPlaylistId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "unknown"

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 55
    .local v0, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    new-instance v8, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;

    invoke-direct {v8}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;-><init>()V

    .line 56
    .local v8, "info":Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "album_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "cp_attrs"

    aput-object v2, v3, v1

    .line 59
    .local v3, "projection":[Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v5, v9

    .line 60
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 61
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, v8, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->trackCount:I

    .line 63
    const-string v1, "album_id"

    .line 64
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v8, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->thumbnailId:J

    .line 65
    const-string v1, "cp_attrs"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v8, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->cpAttrs:I

    .line 66
    sget-object v1, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->sPlaylistItemInfoCache:Landroid/util/LruCache;

    iget-wide v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->mPlaylistId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    :goto_0
    if-eqz v7, :cond_0

    if-eqz v9, :cond_3

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    :cond_0
    :goto_1
    return-object v8

    .line 68
    :cond_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->sPlaylistItemInfoCache:Landroid/util/LruCache;

    iget-wide v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->mPlaylistId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    :catchall_0
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    :goto_2
    if-eqz v7, :cond_2

    if-eqz v2, :cond_4

    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_3
    throw v1

    :catch_1
    move-exception v1

    invoke-virtual {v9, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_2
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v2, v9

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->doInBackground([Ljava/lang/Void;)Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->updateUi(Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;)V

    .line 77
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->onPostExecute(Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 44
    sget-object v1, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->sPlaylistItemInfoCache:Landroid/util/LruCache;

    iget-wide v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->mPlaylistId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;

    .line 45
    .local v0, "info":Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;
    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;

    .end local v0    # "info":Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;
    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;-><init>()V

    .line 48
    .restart local v0    # "info":Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->updateUi(Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;)V

    .line 49
    return-void
.end method
