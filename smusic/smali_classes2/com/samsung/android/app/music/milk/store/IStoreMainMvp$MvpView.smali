.class public interface abstract Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;
.super Ljava/lang/Object;
.source "IStoreMainMvp.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/IStoreMainMvp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MvpView"
.end annotation


# virtual methods
.method public abstract hideError()V
.end method

.method public abstract hideMainGroups()V
.end method

.method public abstract hideProgress()V
.end method

.method public abstract isViewCached()Z
.end method

.method public abstract showError(IILjava/lang/String;)V
.end method

.method public abstract showMainGroups()V
.end method

.method public abstract showProgress()V
.end method

.method public abstract updateMainGroups(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
            ">;)V"
        }
    .end annotation
.end method
