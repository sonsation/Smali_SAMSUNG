.class Lcom/google/android/exoplayer/hls/HlsChunkSource$1;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer/hls/HlsChunkSource;->onChunkLoadCompleted(Lcom/google/android/exoplayer/chunk/Chunk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/hls/HlsChunkSource;

.field final synthetic val$rawResponse:[B


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;[B)V
    .locals 0

    .prologue
    .line 602
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$1;->this$0:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    iput-object p2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$1;->val$rawResponse:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$1;->this$0:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    invoke-static {v0}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->access$400(Lcom/google/android/exoplayer/hls/HlsChunkSource;)Lcom/google/android/exoplayer/hls/HlsChunkSource$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$1;->val$rawResponse:[B

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource$EventListener;->onMediaPlaylistLoadCompleted([B)V

    .line 606
    return-void
.end method
