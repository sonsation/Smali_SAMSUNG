.class public Lcom/markany/drm/xsync/Downloader;
.super Lcom/markany/drm/xsync/NonCopyable;
.source "Downloader.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 3
    .param p1, "cPtr"    # J
    .param p3, "cMemoryOwn"    # Z

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Downloader_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/markany/drm/xsync/NonCopyable;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/markany/drm/xsync/Downloader;->swigCPtr:J

    .line 17
    return-void
.end method

.method public static CloseDownloader(Lcom/markany/drm/xsync/Downloader;)V
    .locals 2
    .param p0, "downloader"    # Lcom/markany/drm/xsync/Downloader;

    .prologue
    .line 90
    invoke-static {p0}, Lcom/markany/drm/xsync/Downloader;->getCPtr(Lcom/markany/drm/xsync/Downloader;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Downloader_CloseDownloader(JLcom/markany/drm/xsync/Downloader;)V

    .line 91
    return-void
.end method

.method public static CreateDownloader(J)Lcom/markany/drm/xsync/Downloader;
    .locals 4
    .param p0, "bufferSize"    # J

    .prologue
    .line 80
    invoke-static {p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Downloader_CreateDownloader__SWIG_0(J)J

    move-result-wide v0

    .line 81
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/markany/drm/xsync/Downloader;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/markany/drm/xsync/Downloader;-><init>(JZ)V

    goto :goto_0
.end method

.method public static CreateDownloader(JLjava/lang/String;)Lcom/markany/drm/xsync/Downloader;
    .locals 4
    .param p0, "bufferSize"    # J
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-static {p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Downloader_CreateDownloader__SWIG_1(JLjava/lang/String;)J

    move-result-wide v0

    .line 86
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/markany/drm/xsync/Downloader;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/markany/drm/xsync/Downloader;-><init>(JZ)V

    goto :goto_0
.end method

.method protected static getCPtr(Lcom/markany/drm/xsync/Downloader;)J
    .locals 2
    .param p0, "obj"    # Lcom/markany/drm/xsync/Downloader;

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/Downloader;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public AddDownload(Ljava/lang/String;Ljava/lang/String;Lcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;Lcom/markany/drm/xsync/DownloadCallBack;)J
    .locals 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postdata"    # Ljava/lang/String;
    .param p3, "archive"    # Lcom/markany/drm/xsync/DRMArchive;
    .param p4, "savePath"    # Ljava/lang/String;
    .param p5, "callBack"    # Lcom/markany/drm/xsync/DownloadCallBack;

    .prologue
    .line 47
    iget-wide v1, p0, Lcom/markany/drm/xsync/Downloader;->swigCPtr:J

    invoke-static/range {p3 .. p3}, Lcom/markany/drm/xsync/DRMArchive;->getCPtr(Lcom/markany/drm/xsync/DRMArchive;)J

    move-result-wide v6

    invoke-static/range {p5 .. p5}, Lcom/markany/drm/xsync/DownloadCallBack;->getCPtr(Lcom/markany/drm/xsync/DownloadCallBack;)J

    move-result-wide v10

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v12, p5

    invoke-static/range {v1 .. v12}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Downloader_AddDownload__SWIG_1(JLcom/markany/drm/xsync/Downloader;Ljava/lang/String;Ljava/lang/String;JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;JLcom/markany/drm/xsync/DownloadCallBack;)J

    move-result-wide v0

    return-wide v0
.end method

.method public AddDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/markany/drm/xsync/DownloadCallBack;)J
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postdata"    # Ljava/lang/String;
    .param p3, "savePath"    # Ljava/lang/String;
    .param p4, "callBack"    # Lcom/markany/drm/xsync/DownloadCallBack;

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/markany/drm/xsync/Downloader;->swigCPtr:J

    invoke-static {p4}, Lcom/markany/drm/xsync/DownloadCallBack;->getCPtr(Lcom/markany/drm/xsync/DownloadCallBack;)J

    move-result-wide v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Downloader_AddDownload__SWIG_0(JLcom/markany/drm/xsync/Downloader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/markany/drm/xsync/DownloadCallBack;)J

    move-result-wide v0

    return-wide v0
.end method

.method public AddDownloadFirst(Ljava/lang/String;Ljava/lang/String;Lcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;Lcom/markany/drm/xsync/DownloadCallBack;)J
    .locals 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postdata"    # Ljava/lang/String;
    .param p3, "archive"    # Lcom/markany/drm/xsync/DRMArchive;
    .param p4, "savePath"    # Ljava/lang/String;
    .param p5, "callBack"    # Lcom/markany/drm/xsync/DownloadCallBack;

    .prologue
    .line 55
    iget-wide v1, p0, Lcom/markany/drm/xsync/Downloader;->swigCPtr:J

    invoke-static/range {p3 .. p3}, Lcom/markany/drm/xsync/DRMArchive;->getCPtr(Lcom/markany/drm/xsync/DRMArchive;)J

    move-result-wide v6

    invoke-static/range {p5 .. p5}, Lcom/markany/drm/xsync/DownloadCallBack;->getCPtr(Lcom/markany/drm/xsync/DownloadCallBack;)J

    move-result-wide v10

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v12, p5

    invoke-static/range {v1 .. v12}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Downloader_AddDownloadFirst__SWIG_1(JLcom/markany/drm/xsync/Downloader;Ljava/lang/String;Ljava/lang/String;JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;JLcom/markany/drm/xsync/DownloadCallBack;)J

    move-result-wide v0

    return-wide v0
.end method

.method public AddDownloadFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/markany/drm/xsync/DownloadCallBack;)J
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postdata"    # Ljava/lang/String;
    .param p3, "savePath"    # Ljava/lang/String;
    .param p4, "callBack"    # Lcom/markany/drm/xsync/DownloadCallBack;

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/markany/drm/xsync/Downloader;->swigCPtr:J

    invoke-static {p4}, Lcom/markany/drm/xsync/DownloadCallBack;->getCPtr(Lcom/markany/drm/xsync/DownloadCallBack;)J

    move-result-wide v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Downloader_AddDownloadFirst__SWIG_0(JLcom/markany/drm/xsync/Downloader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/markany/drm/xsync/DownloadCallBack;)J

    move-result-wide v0

    return-wide v0
.end method

.method public CancelRequest(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/markany/drm/xsync/Downloader;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Downloader_CancelRequest(JLcom/markany/drm/xsync/Downloader;J)V

    .line 69
    return-void
.end method

.method public Clear()V
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/markany/drm/xsync/Downloader;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Downloader_Clear(JLcom/markany/drm/xsync/Downloader;)V

    .line 73
    return-void
.end method

.method public Close()V
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/markany/drm/xsync/Downloader;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Downloader_Close(JLcom/markany/drm/xsync/Downloader;)V

    .line 77
    return-void
.end method

.method public GetCurrentRequestID()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/markany/drm/xsync/Downloader;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Downloader_GetCurrentRequestID(JLcom/markany/drm/xsync/Downloader;)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetDownloadInfo(J)Lcom/markany/drm/xsync/DownloadInfo;
    .locals 5
    .param p1, "requestID"    # J

    .prologue
    .line 63
    iget-wide v2, p0, Lcom/markany/drm/xsync/Downloader;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Downloader_GetDownloadInfo(JLcom/markany/drm/xsync/Downloader;J)J

    move-result-wide v0

    .line 64
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/markany/drm/xsync/DownloadInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/markany/drm/xsync/DownloadInfo;-><init>(JZ)V

    goto :goto_0
.end method

.method public SetTimeOut(II)V
    .locals 2
    .param p1, "connectionTimeOut"    # I
    .param p2, "ioTimeout"    # I

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/markany/drm/xsync/Downloader;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->Downloader_SetTimeOut(JLcom/markany/drm/xsync/Downloader;II)V

    .line 40
    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 28
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/Downloader;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 29
    iget-boolean v0, p0, Lcom/markany/drm/xsync/Downloader;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/markany/drm/xsync/Downloader;->swigCMemOwn:Z

    .line 31
    iget-wide v0, p0, Lcom/markany/drm/xsync/Downloader;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->delete_Downloader(J)V

    .line 33
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/markany/drm/xsync/Downloader;->swigCPtr:J

    .line 35
    :cond_1
    invoke-super {p0}, Lcom/markany/drm/xsync/NonCopyable;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/markany/drm/xsync/Downloader;->delete()V

    .line 25
    return-void
.end method
