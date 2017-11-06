.class public interface abstract Lcom/samsung/android/app/music/milk/executorinterface/IStoreExecutor;
.super Ljava/lang/Object;
.source "IStoreExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/executorinterface/ILoadFinishedExecutor;


# virtual methods
.method public abstract getMusicCategoryGenreList()Ljava/util/ArrayList;
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

.method public abstract getStoreMaingGroup(Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;)Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
.end method
