.class public interface abstract Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil$BackgroundCallback;
.super Ljava/lang/Object;
.source "SeslThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/util/SeslThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BackgroundCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract loadTile(II)V
.end method

.method public abstract recycleTile(Lcom/samsung/android/support/sesl/component/util/SeslTileList$Tile;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/component/util/SeslTileList$Tile",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract refresh(I)V
.end method

.method public abstract updateRange(IIIII)V
.end method
