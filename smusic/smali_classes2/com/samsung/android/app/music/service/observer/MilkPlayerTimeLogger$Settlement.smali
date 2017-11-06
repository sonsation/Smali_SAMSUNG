.class final Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;
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
    name = "Settlement"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mRadioHistoryTimerEvent:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$RadioHistoryTimerEvent;

.field final synthetic this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->mContext:Landroid/content/Context;

    .line 232
    new-instance v0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$RadioHistoryTimerEvent;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$RadioHistoryTimerEvent;-><init>(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->mRadioHistoryTimerEvent:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$RadioHistoryTimerEvent;

    .line 233
    return-void
.end method

.method private settle()V
    .locals 9

    .prologue
    const-wide/32 v6, 0xea60

    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$000(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    .line 250
    const-string v0, "SMUSIC-SV-MediaCenter"

    const-string v1, "MilkPlayerTimeLogger run! but something is wrong!. mMusicMetadata is null. This should not happened"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$000(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 256
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$100(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 257
    const-string v0, "SMUSIC-SV-MediaCenter"

    const-string v1, "MilkPlayerTimeLogger run! but something is wrong!. mExtraContent is null. This should not happened"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$100(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "track_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "trackId":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$100(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "station_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 263
    .local v8, "stationId":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$100(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "settlement_ext"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "settlementExt":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .line 265
    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$400(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$400(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)J

    move-result-wide v6

    .line 267
    .local v6, "currentPosition":J
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .line 268
    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$500(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)J

    move-result-wide v4

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandSender;->settle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    goto :goto_0

    .line 271
    .end local v2    # "trackId":Ljava/lang/String;
    .end local v3    # "settlementExt":Ljava/lang/String;
    .end local v6    # "currentPosition":J
    .end local v8    # "stationId":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$100(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v3, ""

    .line 273
    .restart local v3    # "settlementExt":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .line 274
    invoke-static {v1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$000(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    const-string v4, "android.media.metadata.MEDIA_ID"

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$300(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 275
    .restart local v2    # "trackId":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .line 276
    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$400(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$400(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)J

    move-result-wide v6

    .line 278
    .restart local v6    # "currentPosition":J
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .line 279
    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$500(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)J

    move-result-wide v4

    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandSender;->settle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJ)V

    goto/16 :goto_0

    .line 271
    .end local v2    # "trackId":Ljava/lang/String;
    .end local v3    # "settlementExt":Ljava/lang/String;
    .end local v6    # "currentPosition":J
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .line 272
    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$100(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "settlement_ext"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method public onEventHappened()V
    .locals 1

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->settle()V

    .line 238
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->mRadioHistoryTimerEvent:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$RadioHistoryTimerEvent;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$RadioHistoryTimerEvent;->onEventHappened()V

    .line 239
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 243
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

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .line 244
    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$000(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "null"

    .line 245
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .line 245
    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$000(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    const-string v2, "android.media.metadata.TITLE"

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
