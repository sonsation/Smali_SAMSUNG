.class public interface abstract Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;
.super Ljava/lang/Object;
.source "IBigPondModel.java"


# virtual methods
.method public abstract getData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerView(Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;)V
.end method

.method public abstract restart()V
.end method

.method public abstract start()V
.end method
