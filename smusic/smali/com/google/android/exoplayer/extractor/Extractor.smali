.class public interface abstract Lcom/google/android/exoplayer/extractor/Extractor;
.super Ljava/lang/Object;
.source "Extractor.java"


# virtual methods
.method public abstract init(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
.end method

.method public abstract read(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract seek()V
.end method

.method public abstract sniff(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
