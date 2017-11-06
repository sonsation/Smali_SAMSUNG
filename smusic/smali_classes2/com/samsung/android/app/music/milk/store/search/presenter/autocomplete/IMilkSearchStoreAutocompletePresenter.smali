.class public interface abstract Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/IMilkSearchStoreAutocompletePresenter;
.super Ljava/lang/Object;
.source "IMilkSearchStoreAutocompletePresenter.java"


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract showContents(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showError(IILjava/lang/String;)V
.end method

.method public abstract showLoading(Z)V
.end method
