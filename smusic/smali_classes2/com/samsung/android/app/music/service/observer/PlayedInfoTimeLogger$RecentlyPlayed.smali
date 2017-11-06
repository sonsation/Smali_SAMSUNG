.class Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$RecentlyPlayed;
.super Ljava/lang/Object;
.source "PlayedInfoTimeLogger.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentlyPlayed"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$RecentlyPlayed;->this$0:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;
    .param p2, "x1"    # Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$1;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$RecentlyPlayed;-><init>(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)V

    return-void
.end method


# virtual methods
.method public onEventHappened()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 76
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 77
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "recently_played"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 78
    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$RecentlyPlayed;->this$0:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$RecentlyPlayed;->this$0:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    invoke-static {v4}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->access$300(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$RecentlyPlayed;->this$0:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    invoke-static {v5}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->access$200(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7, v2}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->access$400(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;Landroid/content/Context;JLandroid/content/ContentValues;)V

    .line 80
    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$RecentlyPlayed;->this$0:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->access$300(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0xc

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->sync(Landroid/content/Context;I)V

    .line 82
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.app.music.core.state.PLAYED_INFO_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "com.sec.android.app.music.intent.extra.RECENTLY_PLAYED_UPDATED"

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$RecentlyPlayed;->this$0:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->access$300(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 86
    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$RecentlyPlayed;->this$0:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->access$200(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v3

    const-string v4, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v0, v4

    .line 87
    .local v0, "cpAttrs":I
    invoke-static {v0}, Lcom/samsung/android/app/music/provider/CpAttrs;->isOnline(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$RecentlyPlayed;->this$0:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->access$300(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "PLMU"

    const-string v5, "Streaming"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/app/music/provider/CpAttrs;->isLocal(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$RecentlyPlayed;->this$0:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->access$300(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "PLMU"

    const-string v5, "Local"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " current meta :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$RecentlyPlayed;->this$0:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    .line 70
    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->access$200(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "null"

    .line 71
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$RecentlyPlayed;->this$0:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    .line 71
    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->access$200(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    const-string v2, "android.media.metadata.TITLE"

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
