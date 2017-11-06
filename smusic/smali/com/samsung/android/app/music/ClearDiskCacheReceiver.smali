.class public Lcom/samsung/android/app/music/ClearDiskCacheReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ClearDiskCacheReceiver.java"


# static fields
.field public static final ACTION_CLEAR_DISK_CACHE:Ljava/lang/String; = "com.samsung.android.app.music.action.CLEAR_DISK_CACHE"

.field public static final EXTRA_BASE_URI:Ljava/lang/String; = "extra.BASE_URI"

.field public static final EXTRA_THUMBNAIL_ID:Ljava/lang/String; = "thumbnail_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v10, -0x1

    const v9, 0x7f0d0064

    const v8, 0x7f0d0063

    const v7, 0x7f0d0061

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "action":Ljava/lang/String;
    const-string v4, "com.samsung.android.app.music.action.CLEAR_DISK_CACHE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 24
    const-string v4, "extra.BASE_URI"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, "uri":Ljava/lang/String;
    const-string/jumbo v4, "thumbnail_id"

    invoke-virtual {p2, v4, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 27
    .local v2, "thumbnailId":J
    const-string v4, "ClearDiskCacheReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive() | action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | thumbnailId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    if-eqz v1, :cond_1

    cmp-long v4, v2, v10

    if-eqz v4, :cond_1

    .line 32
    invoke-static {v9}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v4

    .line 33
    invoke-virtual {v4, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withBaseUri(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->removeFromDiskCache()V

    .line 34
    invoke-static {v8}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v4

    .line 35
    invoke-virtual {v4, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withBaseUri(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->removeFromDiskCache()V

    .line 36
    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v4

    .line 37
    invoke-virtual {v4, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withBaseUri(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->removeFromDiskCache()V

    .line 39
    invoke-static {v9}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v4

    .line 40
    invoke-virtual {v4, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withBaseUri(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->removeFromMemCache()V

    .line 41
    invoke-static {v8}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v4

    .line 42
    invoke-virtual {v4, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withBaseUri(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->removeFromMemCache()V

    .line 43
    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v4

    .line 44
    invoke-virtual {v4, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withBaseUri(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->removeFromMemCache()V

    .line 50
    .end local v1    # "uri":Ljava/lang/String;
    .end local v2    # "thumbnailId":J
    :cond_0
    :goto_0
    return-void

    .line 46
    .restart local v1    # "uri":Ljava/lang/String;
    .restart local v2    # "thumbnailId":J
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->clearDiskCache()V

    .line 47
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->clearCache()V

    goto :goto_0
.end method
