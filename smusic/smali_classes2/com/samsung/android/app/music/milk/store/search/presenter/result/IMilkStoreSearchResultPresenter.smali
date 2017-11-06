.class public interface abstract Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;
.super Ljava/lang/Object;
.source "IMilkStoreSearchResultPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract enableSearchHeader(Z)V
.end method

.method public abstract getAppContext()Landroid/content/Context;
.end method

.method public abstract showContents(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract showError(IILjava/lang/String;)V
.end method

.method public abstract showLoading(Z)V
.end method

.method public abstract showMoreLoading(Z)V
.end method

.method public abstract sortResult()V
.end method
