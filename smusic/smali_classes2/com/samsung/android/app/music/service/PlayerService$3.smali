.class Lcom/samsung/android/app/music/service/PlayerService$3;
.super Landroid/content/BroadcastReceiver;
.source "PlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/PlayerService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/PlayerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/PlayerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/PlayerService;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$3;->this$0:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 268
    const-string v3, "com.samsung.android.app.music.action.USER_INFO_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    const-string v3, "extra_user_id"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "userId":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/app/music/service/PlayerService$3;->this$0:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v3, v2}, Lcom/samsung/android/app/music/service/PlayerService;->access$900(Lcom/samsung/android/app/music/service/PlayerService;Ljava/lang/String;)V

    .line 285
    .end local v2    # "userId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    const-string v3, "com.sec.android.app.music.action.ACTION_STREAMING_AUTHORITY_CHANGED"

    .line 272
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 273
    const-string v3, "extra_is_streaming_user"

    const/4 v4, 0x0

    .line 274
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 276
    .local v1, "isStreamingUser":Z
    const-string v3, "SMUSIC-SV"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Streaming authority changed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v3, p0, Lcom/samsung/android/app/music/service/PlayerService$3;->this$0:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/PlayerService;->access$1000(Lcom/samsung/android/app/music/service/PlayerService;)V

    .line 278
    iget-object v3, p0, Lcom/samsung/android/app/music/service/PlayerService$3;->this$0:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/PlayerService;->access$1100(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getNextDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v0

    .line 279
    .local v0, "dataSource":Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    if-eqz v0, :cond_0

    .line 280
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isLocal()Z

    move-result v3

    if-nez v3, :cond_0

    .line 281
    iget-object v3, p0, Lcom/samsung/android/app/music/service/PlayerService$3;->this$0:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/PlayerService;->access$1200(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->requestSetNextDataSourceInBackground(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    goto :goto_0
.end method
