.class public Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;
.super Ljava/lang/Object;
.source "MilkStreamingUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Receiver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mMessenger:Landroid/os/Messenger;

.field private mResult:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver$1;-><init>(Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;->mHandler:Landroid/os/Handler;

    .line 149
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;->mMessenger:Landroid/os/Messenger;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;->mContext:Landroid/content/Context;

    .line 133
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;->mResult:Landroid/os/Bundle;

    return-object p1
.end method

.method private requestToMilkService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "trackId"    # Ljava/lang/String;
    .param p3, "stationId"    # Ljava/lang/String;
    .param p4, "quality"    # I
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 188
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v1, "extra_messenger"

    iget-object v2, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 191
    const-string v1, "extra_track_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string v1, "extra_audio_quality"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    if-eqz p3, :cond_0

    .line 194
    const-string v1, "extra_station_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 197
    const-string v1, "SV-PlayerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MilkStreamingUrl: requestToMilk "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method private waitResponse()V
    .locals 4

    .prologue
    .line 201
    monitor-enter p0

    .line 203
    const-wide/16 v2, 0x2710

    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 208
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 207
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getMilkPlayingData(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 3
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 155
    const-string v0, "SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MilkStreamingUrl: getMilkPlayingData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v0, "com.samsung.android.app.music.action.ACTION_REQUEST_SONG"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;->requestToMilkService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 157
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;->waitResponse()V

    .line 158
    const-string v1, "SV-PlayerServer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MilkStreamingUrl: getMilkPlayingData "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " finished "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;->mResult:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, "null"

    .line 159
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;->mResult:Landroid/os/Bundle;

    return-object v0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;->mResult:Landroid/os/Bundle;

    .line 159
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getMilkRadioPlayingData(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 1
    .param p1, "stationId"    # Ljava/lang/String;
    .param p2, "trackId"    # Ljava/lang/String;
    .param p3, "quality"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 167
    const-string v0, "com.samsung.android.app.music.action.ACTION_REQUEST_RADIO"

    invoke-direct {p0, v0, p2, p1, p3}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;->requestToMilkService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 168
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;->waitResponse()V

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;->mResult:Landroid/os/Bundle;

    return-object v0
.end method

.method public getMilkRadioTracks(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2
    .param p1, "stationId"    # Ljava/lang/String;
    .param p2, "trackId"    # Ljava/lang/String;
    .param p3, "quality"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 175
    if-nez p1, :cond_0

    .line 176
    const-string v0, "SV-PlayerServer"

    const-string v1, "MilkStreamingUrl: getMilkRadioTracks : wrong request."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x0

    .line 182
    :goto_0
    return-object v0

    .line 179
    :cond_0
    const-string v0, "com.samsung.android.app.music.action.ACTION_REQ_RADIO_QUEUE"

    invoke-direct {p0, v0, p2, p1, p3}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;->requestToMilkService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 181
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;->waitResponse()V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;->mResult:Landroid/os/Bundle;

    goto :goto_0
.end method
