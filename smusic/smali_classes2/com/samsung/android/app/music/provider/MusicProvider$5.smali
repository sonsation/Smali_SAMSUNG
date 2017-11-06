.class Lcom/samsung/android/app/music/provider/MusicProvider$5;
.super Landroid/os/Handler;
.source "MusicProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/provider/MusicProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/provider/MusicProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/provider/MusicProvider;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/MusicProvider$5;->this$0:Lcom/samsung/android/app/music/provider/MusicProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 507
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MusicProvider$5;->this$0:Lcom/samsung/android/app/music/provider/MusicProvider;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 508
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 509
    .local v0, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 510
    const-string v4, "album_id=0"

    iput-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 511
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MusicProvider$5;->this$0:Lcom/samsung/android/app/music/provider/MusicProvider;

    invoke-static {v4, v1, v0}, Lcom/samsung/android/app/music/provider/MusicProvider;->access$400(Lcom/samsung/android/app/music/provider/MusicProvider;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)I

    move-result v3

    .line 513
    .local v3, "srcCount":I
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    .end local v0    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 514
    .restart local v0    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->MUSIC_PROVIDER_CONTENT_URI:Landroid/net/Uri;

    iput-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 515
    const-string/jumbo v4, "source_album_id IS NULL OR source_album_id=0"

    iput-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 517
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MusicProvider$5;->this$0:Lcom/samsung/android/app/music/provider/MusicProvider;

    invoke-static {v4, v1, v0}, Lcom/samsung/android/app/music/provider/MusicProvider;->access$400(Lcom/samsung/android/app/music/provider/MusicProvider;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)I

    move-result v2

    .line 519
    .local v2, "ownCount":I
    invoke-static {}, Lcom/samsung/android/app/music/provider/MusicProvider;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAlbumSyncHandler : srcCount "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ownCount "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    if-eq v3, v2, :cond_0

    .line 521
    const/4 v4, 0x4

    invoke-static {v1, v4}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->sync(Landroid/content/Context;I)V

    .line 523
    :cond_0
    return-void
.end method
