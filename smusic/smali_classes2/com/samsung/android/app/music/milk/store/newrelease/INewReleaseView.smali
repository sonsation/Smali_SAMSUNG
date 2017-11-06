.class public interface abstract Lcom/samsung/android/app/music/milk/store/newrelease/INewReleaseView;
.super Ljava/lang/Object;
.source "INewReleaseView.java"


# virtual methods
.method public abstract showAlbums(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/Album;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showError(IILjava/lang/String;)V
.end method

.method public abstract showLoading(Z)V
.end method
