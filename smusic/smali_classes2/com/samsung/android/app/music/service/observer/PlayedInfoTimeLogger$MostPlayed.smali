.class Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$MostPlayed;
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
    name = "MostPlayed"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$MostPlayed;->this$0:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;
    .param p2, "x1"    # Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$1;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$MostPlayed;-><init>(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)V

    return-void
.end method


# virtual methods
.method public onEventHappened()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$MostPlayed;->this$0:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->access$200(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v6

    .line 109
    .local v6, "audioId":J
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$MostPlayed;->this$0:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->access$300(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    .line 110
    invoke-static {v1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/String;

    const-string v4, "most_played"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    .line 109
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 112
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v10, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v10, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 114
    .local v10, "values":Landroid/content/ContentValues;
    const-string v0, "most_played"

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$MostPlayed;->this$0:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$MostPlayed;->this$0:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->access$300(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, v6, v7, v10}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->access$400(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;Landroid/content/Context;JLandroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 117
    .end local v10    # "values":Landroid/content/ContentValues;
    :cond_0
    if-eqz v8, :cond_1

    if-eqz v3, :cond_4

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$MostPlayed;->this$0:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->access$300(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->sync(Landroid/content/Context;I)V

    .line 120
    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.samsung.android.app.music.core.state.PLAYED_INFO_CHANGED"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v9, "i":Landroid/content/Intent;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    .line 130
    :cond_2
    const-string v0, "com.sec.android.app.music.intent.extra.RECENTLY_PLAYED_UPDATED"

    invoke-virtual {v9, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$MostPlayed;->this$0:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->access$300(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$MostPlayed;->this$0:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->access$300(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$MostPlayedRank;->NOTIFY_CONTENT_URI:Landroid/net/Uri;

    .line 136
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 137
    return-void

    .line 117
    .end local v9    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 109
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_1
    if-eqz v8, :cond_5

    if-eqz v3, :cond_6

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    :goto_2
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
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

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$MostPlayed;->this$0:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    .line 102
    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->access$200(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "null"

    .line 103
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$MostPlayed;->this$0:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;

    .line 103
    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->access$200(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    const-string v2, "android.media.metadata.TITLE"

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
