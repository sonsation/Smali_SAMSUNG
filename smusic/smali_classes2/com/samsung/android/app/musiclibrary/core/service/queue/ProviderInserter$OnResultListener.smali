.class interface abstract Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter$OnResultListener;
.super Ljava/lang/Object;
.source "ProviderInserter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "OnResultListener"
.end annotation


# virtual methods
.method public abstract onResult([JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation
.end method
