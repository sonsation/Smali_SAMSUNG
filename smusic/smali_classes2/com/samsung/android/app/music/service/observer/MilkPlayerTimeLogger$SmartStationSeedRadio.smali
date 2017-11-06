.class final Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedRadio;
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
    name = "SmartStationSeedRadio"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedRadio;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedRadio;->mContext:Landroid/content/Context;

    .line 141
    return-void
.end method


# virtual methods
.method public onEventHappened()V
    .locals 5

    .prologue
    .line 145
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedRadio;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$000(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    if-nez v1, :cond_0

    .line 146
    const-string v1, "MilkPlayerTimeLogger"

    const-string v2, " run! but something is wrong!. mMusicMetadata is null. This should not happened"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedRadio;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$100(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    .line 151
    const-string v1, "MilkPlayerTimeLogger"

    const-string v2, " run! but something is wrong!. mExtraContent is null. This should not happened"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_1
    const-string v1, "MilkPlayerTimeLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "run. create seed from radio. title - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedRadio;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .line 157
    invoke-static {v3}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$000(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v3

    const-string v4, "android.media.metadata.TITLE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    new-instance v0, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedRadio;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .line 159
    invoke-static {v1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$100(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "track_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedRadio;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .line 160
    invoke-static {v2}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$000(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    const-string v3, "android.media.metadata.TITLE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "radio"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .local v0, "seed":Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedRadio;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->createSmartStationSeedAsync(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 167
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

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedRadio;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .line 168
    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$000(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "null"

    .line 169
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$SmartStationSeedRadio;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .line 169
    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$000(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    const-string v2, "android.media.metadata.TITLE"

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
