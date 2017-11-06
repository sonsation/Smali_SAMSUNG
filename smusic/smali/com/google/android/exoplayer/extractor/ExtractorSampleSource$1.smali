.class Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$1;
.super Ljava/lang/Object;
.source "ExtractorSampleSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->notifyLoadError(Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 752
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$1;->this$0:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;

    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$1;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 755
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$1;->this$0:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;

    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->access$200(Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;)Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$1;->this$0:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;

    invoke-static {v1}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->access$100(Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$1;->val$e:Ljava/io/IOException;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$EventListener;->onLoadError(ILjava/io/IOException;)V

    .line 756
    return-void
.end method
