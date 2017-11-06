.class public interface abstract Lcom/samsung/android/app/music/milk/store/topchart/TopChartView;
.super Ljava/lang/Object;
.source "TopChartView.java"


# virtual methods
.method public abstract hideTrackOption()V
.end method

.method public abstract showBanner(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/samsung/android/app/music/milk/store/BannerItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showError(IILjava/lang/String;)V
.end method

.method public abstract showLoadMore(Z)V
.end method

.method public abstract showLoading(Z)V
.end method

.method public abstract showTrackInfo(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showTrackOption(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;)V"
        }
    .end annotation
.end method
