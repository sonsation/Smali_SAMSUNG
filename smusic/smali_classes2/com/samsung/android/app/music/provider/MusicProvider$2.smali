.class Lcom/samsung/android/app/music/provider/MusicProvider$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/samsung/android/app/music/provider/MusicProvider;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/provider/MusicProvider;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/MusicProvider$2;->this$0:Lcom/samsung/android/app/music/provider/MusicProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 9
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 420
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 421
    iget-object v6, p0, Lcom/samsung/android/app/music/provider/MusicProvider$2;->this$0:Lcom/samsung/android/app/music/provider/MusicProvider;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 422
    .local v0, "context":Landroid/content/Context;
    const/4 v2, 0x0

    .line 423
    .local v2, "isStartService":Z
    const/4 v4, 0x0

    .line 424
    .local v4, "syncEvent":I
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 428
    .local v5, "uriString":Ljava/lang/String;
    const-string v6, "/audio/artists"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "/audio/albums"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "/audio/genres"

    .line 429
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 430
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/MusicProvider;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSrcProviderObserver onChange uri = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is skipped"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_1
    :goto_0
    return-void

    .line 434
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/music/provider/MusicProvider;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSrcProviderObserver onChange uri = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", selfChange = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v6, "content://media/external"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 437
    iget-object v6, p0, Lcom/samsung/android/app/music/provider/MusicProvider$2;->this$0:Lcom/samsung/android/app/music/provider/MusicProvider;

    const v7, 0x10001

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/provider/MusicProvider;->access$100(Lcom/samsung/android/app/music/provider/MusicProvider;I)I

    move-result v3

    .line 438
    .local v3, "previousCount":I
    iget-object v6, p0, Lcom/samsung/android/app/music/provider/MusicProvider$2;->this$0:Lcom/samsung/android/app/music/provider/MusicProvider;

    invoke-static {v6}, Lcom/samsung/android/app/music/provider/MusicProvider;->access$200(Lcom/samsung/android/app/music/provider/MusicProvider;)I

    move-result v1

    .line 439
    .local v1, "currentCount":I
    invoke-static {}, Lcom/samsung/android/app/music/provider/MusicProvider;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSrcProviderObserver - currentCount : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", previousCount : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    if-eq v3, v1, :cond_3

    .line 444
    const/4 v2, 0x1

    .line 445
    const/4 v4, 0x3

    .line 448
    .end local v1    # "currentCount":I
    .end local v3    # "previousCount":I
    :cond_3
    if-eqz v2, :cond_1

    .line 449
    invoke-static {v0, v4}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->sync(Landroid/content/Context;I)V

    goto :goto_0
.end method
