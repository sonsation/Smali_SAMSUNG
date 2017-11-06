.class public interface abstract Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;
.super Ljava/lang/Object;
.source "IMusicCategoryDetailArtistsView.java"


# virtual methods
.method public abstract setHasMoreItem(Z)V
.end method

.method public abstract showArtists(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showError(IILjava/lang/String;)V
.end method

.method public abstract showLoadMore()V
.end method

.method public abstract showLoading(Z)V
.end method
