.class public interface abstract Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;
.super Ljava/lang/Object;
.source "IMilkStoreSearchPresentPresenter.java"


# virtual methods
.method public abstract finishLoad()V
.end method

.method public abstract showContents(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showContentsListChanged(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract showError(IILjava/lang/String;)V
.end method

.method public abstract showLoading(Z)V
.end method

.method public abstract showPreWritten(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;",
            ">;)V"
        }
    .end annotation
.end method
