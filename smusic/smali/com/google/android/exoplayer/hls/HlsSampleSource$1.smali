.class Lcom/google/android/exoplayer/hls/HlsSampleSource$1;
.super Ljava/lang/Object;
.source "HlsSampleSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer/hls/HlsSampleSource;->notifyLoadStarted(JIILcom/google/android/exoplayer/chunk/Format;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/hls/HlsSampleSource;

.field final synthetic val$format:Lcom/google/android/exoplayer/chunk/Format;

.field final synthetic val$length:J

.field final synthetic val$mediaEndTimeUs:J

.field final synthetic val$mediaStartTimeUs:J

.field final synthetic val$trigger:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/hls/HlsSampleSource;JIILcom/google/android/exoplayer/chunk/Format;JJ)V
    .locals 1

    .prologue
    .line 782
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->this$0:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    iput-wide p2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->val$length:J

    iput p4, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->val$type:I

    iput p5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->val$trigger:I

    iput-object p6, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->val$format:Lcom/google/android/exoplayer/chunk/Format;

    iput-wide p7, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->val$mediaStartTimeUs:J

    iput-wide p9, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->val$mediaEndTimeUs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 785
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->this$0:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    invoke-static {v0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->access$100(Lcom/google/android/exoplayer/hls/HlsSampleSource;)Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->this$0:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    invoke-static {v0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->access$000(Lcom/google/android/exoplayer/hls/HlsSampleSource;)I

    move-result v2

    iget-wide v3, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->val$length:J

    iget v5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->val$type:I

    iget v6, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->val$trigger:I

    iget-object v7, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->val$format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->this$0:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    iget-wide v8, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->val$mediaStartTimeUs:J

    invoke-virtual {v0, v8, v9}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->usToMs(J)J

    move-result-wide v8

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->this$0:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    iget-wide v10, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->val$mediaEndTimeUs:J

    invoke-virtual {v0, v10, v11}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->usToMs(J)J

    move-result-wide v10

    invoke-interface/range {v1 .. v11}, Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;->onLoadStarted(IJIILcom/google/android/exoplayer/chunk/Format;JJ)V

    .line 787
    return-void
.end method
