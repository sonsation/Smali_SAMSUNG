.class public interface abstract Lcom/samsung/android/app/music/service/milk/prefetch/IPrefetchManager;
.super Ljava/lang/Object;
.source "IPrefetchManager.java"


# virtual methods
.method public abstract doPrefetchChunkData(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadPrefetchUrls()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prefetchDataList(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/PrefetchData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startPrefetch()V
.end method
