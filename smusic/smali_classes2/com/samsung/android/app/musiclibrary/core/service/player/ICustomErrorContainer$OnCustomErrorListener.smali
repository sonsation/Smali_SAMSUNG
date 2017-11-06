.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer$OnCustomErrorListener;
.super Ljava/lang/Object;
.source "ICustomErrorContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCustomErrorListener"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/String;II)V
    .param p3    # I
        .annotation build Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$ERROR$ExtraDef;
        .end annotation
    .end param
.end method
