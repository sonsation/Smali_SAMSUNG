.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
.super Ljava/lang/Object;
.source "IFile.java"


# virtual methods
.method public abstract active(Z)V
.end method

.method public abstract getAvailableBytes()J
.end method

.method public abstract getFilePath()Ljava/lang/String;
.end method

.method public abstract getFileRequest()Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
.end method

.method public abstract getPlayingUri()Landroid/net/Uri;
.end method

.method public abstract getTotalBytes()J
.end method

.method public abstract isDead()Z
.end method

.method public abstract isLoadFinished()Z
.end method

.method public abstract obtainInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract registerListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;)V
.end method

.method public abstract unregisterListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;)V
.end method
