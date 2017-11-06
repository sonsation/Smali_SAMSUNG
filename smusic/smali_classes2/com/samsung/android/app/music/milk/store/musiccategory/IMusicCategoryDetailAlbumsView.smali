.class public interface abstract Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailAlbumsView;
.super Ljava/lang/Object;
.source "IMusicCategoryDetailAlbumsView.java"


# virtual methods
.method public abstract showAlbums(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showError(IILjava/lang/String;)V
.end method

.method public abstract showLoading(Z)V
.end method
