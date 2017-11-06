.class public Lcom/markany/drm/xsync/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 1
    .param p1, "cPtr"    # J
    .param p3, "cMemoryOwn"    # Z

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/markany/drm/xsync/DownloadInfo;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/markany/drm/xsync/DownloadInfo;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/markany/drm/xsync/DownloadInfo;)J
    .locals 2
    .param p0, "obj"    # Lcom/markany/drm/xsync/DownloadInfo;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/DownloadInfo;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public GetArchive()Lcom/markany/drm/xsync/DRMArchive;
    .locals 4

    .prologue
    .line 63
    iget-wide v2, p0, Lcom/markany/drm/xsync/DownloadInfo;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DownloadInfo_GetArchive(JLcom/markany/drm/xsync/DownloadInfo;)J

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
    new-instance v2, Lcom/markany/drm/xsync/DRMArchive;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/markany/drm/xsync/DRMArchive;-><init>(JZ)V

    goto :goto_0
.end method

.method public GetConnectionType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/markany/drm/xsync/DownloadInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DownloadInfo_GetConnectionType(JLcom/markany/drm/xsync/DownloadInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetContentSize()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/markany/drm/xsync/DownloadInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DownloadInfo_GetContentSize(JLcom/markany/drm/xsync/DownloadInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetDownloadedSize()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/markany/drm/xsync/DownloadInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DownloadInfo_GetDownloadedSize(JLcom/markany/drm/xsync/DownloadInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetID()J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/markany/drm/xsync/DownloadInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DownloadInfo_GetID(JLcom/markany/drm/xsync/DownloadInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetPostData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/markany/drm/xsync/DownloadInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DownloadInfo_GetPostData(JLcom/markany/drm/xsync/DownloadInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetSavePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/markany/drm/xsync/DownloadInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DownloadInfo_GetSavePath(JLcom/markany/drm/xsync/DownloadInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/markany/drm/xsync/DownloadInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DownloadInfo_GetUrl(JLcom/markany/drm/xsync/DownloadInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IsCanceled()Z
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/markany/drm/xsync/DownloadInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DownloadInfo_IsCanceled(JLcom/markany/drm/xsync/DownloadInfo;)Z

    move-result v0

    return v0
.end method

.method public IsEnded()Z
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/markany/drm/xsync/DownloadInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DownloadInfo_IsEnded(JLcom/markany/drm/xsync/DownloadInfo;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/DownloadInfo;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/markany/drm/xsync/DownloadInfo;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/markany/drm/xsync/DownloadInfo;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/markany/drm/xsync/DownloadInfo;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->delete_DownloadInfo(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/markany/drm/xsync/DownloadInfo;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/markany/drm/xsync/DownloadInfo;->delete()V

    .line 26
    return-void
.end method
