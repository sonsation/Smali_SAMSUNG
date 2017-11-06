.class Lcom/samsung/android/app/music/service/PlayerService$1;
.super Ljava/lang/Object;
.source "PlayerService.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/PlayerService;
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
    .line 179
    iput-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$1;->this$0:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 182
    const-string v2, "milk_streaming_quality_wifi"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "milk_streaming_quality_mobile"

    .line 183
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService$1;->this$0:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/PlayerService;->access$000(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getNextDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v0

    .line 185
    .local v0, "dataSource":Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    if-eqz v0, :cond_1

    .line 186
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isLocal()Z

    move-result v2

    if-nez v2, :cond_1

    .line 187
    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService$1;->this$0:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/PlayerService;->access$100(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->requestSetNextDataSourceInBackground(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    .line 207
    .end local v0    # "dataSource":Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    :cond_1
    :goto_0
    return-void

    .line 190
    :cond_2
    const-string v2, "my_music_mode"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v2

    invoke-virtual {v2, p1, v5}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 192
    .local v1, "isOn":Z
    const-string v2, "SV"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLocalMusicModeChanged isOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    if-eqz v1, :cond_4

    .line 194
    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService$1;->this$0:Lcom/samsung/android/app/music/service/PlayerService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/service/PlayerService;->access$200(Lcom/samsung/android/app/music/service/PlayerService;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 195
    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService$1;->this$0:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v2, v5}, Lcom/samsung/android/app/music/service/PlayerService;->access$300(Lcom/samsung/android/app/music/service/PlayerService;I)V

    .line 197
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService$1;->this$0:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/PlayerService;->access$400(Lcom/samsung/android/app/music/service/PlayerService;)V

    .line 201
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService$1;->this$0:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/PlayerService;->access$600(Lcom/samsung/android/app/music/service/PlayerService;)Z

    move-result v2

    if-eq v2, v1, :cond_1

    .line 202
    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService$1;->this$0:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v2, v1}, Lcom/samsung/android/app/music/service/PlayerService;->access$602(Lcom/samsung/android/app/music/service/PlayerService;Z)Z

    .line 203
    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService$1;->this$0:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/PlayerService;->access$700(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v2

    const/4 v3, 0x5

    .line 204
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 203
    invoke-interface {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->onCustomEvent(ILjava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService$1;->this$0:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/PlayerService;->access$500(Lcom/samsung/android/app/music/service/PlayerService;)V

    goto :goto_1
.end method
