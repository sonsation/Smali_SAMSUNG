.class public interface abstract Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioView;
.super Ljava/lang/Object;
.source "RecommendRadioView.java"


# virtual methods
.method public abstract showBanner(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBanner;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showContents(Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBox;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showError(IILjava/lang/String;)V
.end method

.method public abstract showLoading(Z)V
.end method
