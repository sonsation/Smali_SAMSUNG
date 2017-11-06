.class final Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedMod;
.super Ljava/lang/Object;
.source "MilkPlayerTimeLogger.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmartStationSeedMod"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedMod;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedMod;->mContext:Landroid/content/Context;

    .line 178
    return-void
.end method


# virtual methods
.method public onEventHappened()V
    .locals 10

    .prologue
    .line 182
    iget-object v5, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedMod;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v5}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$000(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v5

    if-nez v5, :cond_0

    .line 183
    const-string v5, "MilkPlayerTimeLogger"

    const-string v7, " run! but something is wrong!. mMusicMetadata is null. This should not happened"

    invoke-static {v5, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedMod;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v5}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$000(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v5

    const-string v7, "android.media.metadata.MEDIA_ID"

    invoke-virtual {v5, v7}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "mediaId":Ljava/lang/String;
    const/4 v0, 0x0

    .line 190
    .local v0, "seed":Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;
    iget-object v5, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedMod;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v5}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$000(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 191
    iget-object v5, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedMod;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$300(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 192
    .local v6, "trackId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 193
    new-instance v0, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    .end local v0    # "seed":Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;
    iget-object v5, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedMod;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .line 194
    invoke-static {v5}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$000(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v5

    const-string v7, "android.media.metadata.TITLE"

    invoke-virtual {v5, v7}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "mod"

    invoke-direct {v0, v6, v5, v7}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .end local v6    # "trackId":Ljava/lang/String;
    .restart local v0    # "seed":Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 208
    iget-object v5, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedMod;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->createSmartStationSeedAsync(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)V

    .line 211
    :cond_2
    const-string v5, "MilkPlayerTimeLogger"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "run. create seed from mod. title - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedMod;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .line 212
    invoke-static {v8}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$000(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v8

    const-string v9, "android.media.metadata.TITLE"

    invoke-virtual {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", seed - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 211
    invoke-static {v5, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedMod;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v5}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$000(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v5

    const-string v7, "android.media.metadata.TITLE"

    invoke-virtual {v5, v7}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedMod;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v5}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$000(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v5

    const-string v7, "android.media.metadata.ALBUM"

    invoke-virtual {v5, v7}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, "album":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedMod;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v5}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$000(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v5

    const-string v7, "android.media.metadata.ARTIST"

    invoke-virtual {v5, v7}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, "artist":Ljava/lang/String;
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v5, v7

    const/4 v7, 0x1

    aput-object v3, v5, v7

    const/4 v7, 0x2

    aput-object v4, v5, v7

    invoke-static {v5}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->canUseAsSeed([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 202
    new-instance v0, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    .end local v0    # "seed":Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;
    const-string v5, "local"

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "seed":Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 218
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

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedMod;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .line 219
    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$000(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "null"

    .line 220
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedMod;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .line 220
    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$000(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    const-string v2, "android.media.metadata.TITLE"

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
