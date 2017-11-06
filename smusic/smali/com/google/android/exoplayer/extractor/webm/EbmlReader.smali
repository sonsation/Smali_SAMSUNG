.class interface abstract Lcom/google/android/exoplayer/extractor/webm/EbmlReader;
.super Ljava/lang/Object;
.source "EbmlReader.java"


# virtual methods
.method public abstract init(Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;)V
.end method

.method public abstract read(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method
