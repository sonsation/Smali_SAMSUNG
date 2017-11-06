.class public interface abstract Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onCancelAllCompleted(I)V
.end method

.method public abstract onProgressChanged(II)V
.end method

.method public abstract onTransferCompleted(ILjava/lang/String;I)V
.end method

.method public abstract onTransferRequested(ILjava/lang/String;)V
.end method
