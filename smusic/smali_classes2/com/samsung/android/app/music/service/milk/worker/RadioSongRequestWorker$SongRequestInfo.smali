.class Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;
.super Ljava/lang/Object;
.source "RadioSongRequestWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SongRequestInfo"
.end annotation


# instance fields
.field aiType:Ljava/lang/String;

.field audioType:Ljava/lang/String;

.field bitrate:Ljava/lang/String;

.field codec:Ljava/lang/String;

.field fineTuneBoost:Ljava/lang/String;

.field finetune:Ljava/lang/String;

.field isFirstPlay:Ljava/lang/String;

.field sequence:Ljava/lang/String;

.field stationId:Ljava/lang/String;

.field stationType:Ljava/lang/String;

.field trackId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    const-string v0, "0"

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;->sequence:Ljava/lang/String;

    .line 406
    const-string v0, "0"

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;->audioType:Ljava/lang/String;

    .line 408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;->aiType:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$1;

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 411
    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;->stationId:Ljava/lang/String;

    .line 412
    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker$SongRequestInfo;->trackId:Ljava/lang/String;

    .line 413
    const-string v0, "RadioSongRequestWorker"

    const-string v1, "init >> init request info."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    return-void
.end method
