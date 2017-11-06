.class public interface abstract Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpPresenter;
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
    name = "MvpPresenter"
.end annotation


# virtual methods
.method public abstract loadStoreMainGroups()V
.end method

.method public abstract onAttachView(Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;)V
.end method

.method public abstract onDetachView()V
.end method

.method public abstract retryLoad()V
.end method
