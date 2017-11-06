.class Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker$SongRequestInfo;
.super Ljava/lang/Object;
.source "ModSongRequestWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SongRequestInfo"
.end annotation


# instance fields
.field bitrate:Ljava/lang/String;

.field codec:Ljava/lang/String;

.field currentTrackId:Ljava/lang/String;

.field nextTrackId:Ljava/lang/String;

.field prevTrackId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker$1;

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker$SongRequestInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker$SongRequestInfo;->prevTrackId:Ljava/lang/String;

    .line 262
    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker$SongRequestInfo;->currentTrackId:Ljava/lang/String;

    .line 263
    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker$SongRequestInfo;->nextTrackId:Ljava/lang/String;

    .line 264
    const-string v0, "ModSongRequestWorker"

    const-string v1, "init >> init request info."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method
