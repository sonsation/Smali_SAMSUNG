.class public interface abstract Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpModel;
.super Ljava/lang/Object;
.source "IStoreMainMvp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/IStoreMainMvp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MvpModel"
.end annotation


# virtual methods
.method public abstract onAttachPresenter(Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;)V
.end method

.method public abstract onDetachPresenter(Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;)V
.end method

.method public abstract requestStoreMainGroups()Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
            ">;>;"
        }
    .end annotation
.end method
