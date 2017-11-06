.class public Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "PlaylistQueryArgs.java"


# static fields
.field public static final COL_INDEX_ID:I = 0x0

.field public static final COL_INDEX_VIEW_TYPE:I = 0x1

.field public static final PLAYLIST_TYPE_ALL:I = 0x2

.field public static final PLAYLIST_TYPE_LOCAL:I = 0x0

.field public static final PLAYLIST_TYPE_ONLINE:I = 0x1

.field private static final REORDER_NAME:Ljava/lang/String; = "Reorder playlist"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;-><init>(I)V

    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "playlistType"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 29
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;->uri:Landroid/net/Uri;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v0, "projectionBuilder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "_id"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    const-string v2, "name"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    const-string v2, "is_sync"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->REGIONAL_CHN_PINYIN_ENABLED:Z

    if-eqz v2, :cond_0

    .line 35
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;->projection:[Ljava/lang/String;

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "name NOT IN (\'Reorder playlist\')"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .local v1, "selectionBuilder":Ljava/lang/StringBuilder;
    packed-switch p1, :pswitch_data_0

    .line 55
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;->selection:Ljava/lang/String;

    .line 56
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " COLLATE LOCALIZED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;->orderBy:Ljava/lang/String;

    .line 58
    return-void

    .line 44
    :pswitch_0
    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is_sync"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=0"

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 48
    :pswitch_1
    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is_sync"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=1"

    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
