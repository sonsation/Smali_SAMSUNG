.class public interface abstract Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BurstCaptureEventListener"
.end annotation


# virtual methods
.method public abstract onBurstCaptureCompleted()V
.end method

.method public abstract onBurstCaptureProgress(I)V
.end method

.method public abstract onBurstCaptureStarted()V
.end method

.method public abstract onBurstCaptureStopped(I)Z
.end method

.method public abstract onBurstCaptureThumbnailTaken(Landroid/graphics/Bitmap;I)V
.end method

.method public abstract onBurstStringProgress([B)Z
.end method
