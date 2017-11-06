.class Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;
.super Ljava/lang/Object;
.source "HlsPlaylistParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/hls/HlsPlaylistParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LineIterator"
.end annotation


# instance fields
.field private final extraLines:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private next:Ljava/lang/String;

.field private final reader:Ljava/io/BufferedReader;


# direct methods
.method public constructor <init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V
    .locals 0
    .param p2, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/BufferedReader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 322
    .local p1, "extraLines":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->extraLines:Ljava/util/Queue;

    .line 324
    iput-object p2, p0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->reader:Ljava/io/BufferedReader;

    .line 325
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 328
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->next:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    .line 341
    :goto_0
    return v0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->extraLines:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->extraLines:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->next:Ljava/lang/String;

    move v0, v1

    .line 333
    goto :goto_0

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->next:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 336
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->next:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->next:Ljava/lang/String;

    .line 337
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->next:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 338
    goto :goto_0

    .line 341
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->next:Ljava/lang/String;

    .line 348
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->next:Ljava/lang/String;

    .line 350
    :cond_0
    return-object v0
.end method
