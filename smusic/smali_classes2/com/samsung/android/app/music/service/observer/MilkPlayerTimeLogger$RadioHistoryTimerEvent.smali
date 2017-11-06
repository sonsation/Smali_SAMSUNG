.class public final Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$RadioHistoryTimerEvent;
.super Ljava/lang/Object;
.source "MilkPlayerTimeLogger.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RadioHistoryTimerEvent"
.end annotation


# static fields
.field public static final EVENT_TIME:J = 0xea60L


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$RadioHistoryTimerEvent;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object p2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$RadioHistoryTimerEvent;->mContext:Landroid/content/Context;

    .line 293
    return-void
.end method


# virtual methods
.method public onEventHappened()V
    .locals 5

    .prologue
    .line 297
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$RadioHistoryTimerEvent;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$000(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    if-nez v2, :cond_1

    .line 298
    const-string v2, "MilkPlayerTimeLogger"

    const-string v3, " run! but something is wrong!. mMusicMetadata is null. This should not happened"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$RadioHistoryTimerEvent;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$100(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_2

    .line 303
    const-string v2, "MilkPlayerTimeLogger"

    const-string v3, " run! but something is wrong!. mExtraContent is null. This should not happened"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$RadioHistoryTimerEvent;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$100(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "track_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "trackId":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$RadioHistoryTimerEvent;->this$0:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->access$100(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "station_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "stationId":Ljava/lang/String;
    const-string v2, "MilkPlayerTimeLogger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RadioHistoryTimerEvent onEventHappened trackId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " stationId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 312
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$RadioHistoryTimerEvent;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandSender;->addRadioHistory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
