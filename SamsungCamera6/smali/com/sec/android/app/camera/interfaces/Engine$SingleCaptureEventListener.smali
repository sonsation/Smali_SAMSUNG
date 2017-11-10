.class public interface abstract Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SingleCaptureEventListener"
.end annotation


# virtual methods
.method public abstract onSingleCaptureCancelCompleted()V
.end method

.method public abstract onSingleCaptureCompleted()V
.end method

.method public abstract onSingleCaptureRequestCancelled()V
.end method

.method public abstract onSingleCaptureRequested()V
.end method

.method public abstract onSingleCaptureStarted()V
.end method
