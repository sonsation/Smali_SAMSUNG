.class public interface abstract Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;
.super Ljava/lang/Object;
.source "AppsDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDownloadServiceAPIObserver"
.end annotation


# virtual methods
.method public abstract onBindFailed()V
.end method

.method public abstract onDownloadCanceled()V
.end method

.method public abstract onDownloadFailed()V
.end method

.method public abstract onDownloadSuccess()V
.end method

.method public abstract onInstallFailed(Ljava/lang/String;)V
.end method

.method public abstract onProgress(JJ)V
.end method
