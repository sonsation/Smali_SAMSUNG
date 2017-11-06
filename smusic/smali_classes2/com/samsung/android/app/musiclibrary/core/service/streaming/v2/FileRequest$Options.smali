.class public Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;
.super Ljava/lang/Object;
.source "FileRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public final findFullCacheOnly:Z

.field public final maxCacheSize:J

.field public final partialDownload:Z

.field public final saveFullCacheOnly:Z


# direct methods
.method private constructor <init>(ZJ)V
    .locals 2
    .param p1, "findFullCacheOnly"    # Z
    .param p2, "maxCacheSize"    # J

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;->findFullCacheOnly:Z

    .line 169
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;->saveFullCacheOnly:Z

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;->partialDownload:Z

    .line 171
    iput-wide p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;->maxCacheSize:J

    .line 172
    return-void
.end method

.method public static obtain(Z)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;
    .locals 4
    .param p0, "findFullCacheOnly"    # Z

    .prologue
    .line 160
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;

    const-wide/16 v2, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;-><init>(ZJ)V

    return-object v0
.end method

.method public static obtain(ZJ)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;
    .locals 1
    .param p0, "findFullCacheOnly"    # Z
    .param p1, "maxCacheSize"    # J

    .prologue
    .line 164
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;-><init>(ZJ)V

    return-object v0
.end method
