.class public Lcom/markany/drm/xsync/DRMArchive;
.super Ljava/lang/Object;
.source "DRMArchive.java"


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
    iput-boolean p3, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J

    .line 18
    return-void
.end method

.method public static CloseArchive(Lcom/markany/drm/xsync/DRMArchive;)V
    .locals 2
    .param p0, "archive"    # Lcom/markany/drm/xsync/DRMArchive;

    .prologue
    .line 158
    invoke-static {p0}, Lcom/markany/drm/xsync/DRMArchive;->getCPtr(Lcom/markany/drm/xsync/DRMArchive;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMArchive_CloseArchive(JLcom/markany/drm/xsync/DRMArchive;)V

    .line 159
    return-void
.end method

.method public static CreateArchive()Lcom/markany/drm/xsync/DRMArchive;
    .locals 4

    .prologue
    .line 153
    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMArchive_CreateArchive__SWIG_1()J

    move-result-wide v0

    .line 154
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

.method public static CreateArchive(Ljava/lang/String;)Lcom/markany/drm/xsync/DRMArchive;
    .locals 4
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-static {p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMArchive_CreateArchive__SWIG_0(Ljava/lang/String;)J

    move-result-wide v0

    .line 149
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

.method protected static getCPtr(Lcom/markany/drm/xsync/DRMArchive;)J
    .locals 2
    .param p0, "obj"    # Lcom/markany/drm/xsync/DRMArchive;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public Allocate(Ljava/lang/String;J)I
    .locals 6
    .param p1, "songID"    # Ljava/lang/String;
    .param p2, "size"    # J

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMArchive_Allocate(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public Close()V
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMArchive_Close(JLcom/markany/drm/xsync/DRMArchive;)V

    .line 56
    return-void
.end method

.method public CloseList(Lcom/markany/drm/xsync/DRMArchiveEnum;)V
    .locals 6
    .param p1, "archiveEnum"    # Lcom/markany/drm/xsync/DRMArchiveEnum;

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/DRMArchiveEnum;->getCPtr(Lcom/markany/drm/xsync/DRMArchiveEnum;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMArchive_CloseList(JLcom/markany/drm/xsync/DRMArchive;JLcom/markany/drm/xsync/DRMArchiveEnum;)V

    .line 109
    return-void
.end method

.method public Defrag()I
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMArchive_Defrag(JLcom/markany/drm/xsync/DRMArchive;)I

    move-result v0

    return v0
.end method

.method public DefragMinimum()I
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMArchive_DefragMinimum(JLcom/markany/drm/xsync/DRMArchive;)I

    move-result v0

    return v0
.end method

.method public Delete(Ljava/lang/String;)Z
    .locals 2
    .param p1, "songID"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMArchive_Delete(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public Exists(Ljava/lang/String;)Z
    .locals 2
    .param p1, "songID"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMArchive_Exists(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public GetAllocatedSize(Ljava/lang/String;)J
    .locals 2
    .param p1, "songID"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMArchive_GetAllocatedSize(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetCustomData(Ljava/lang/String;[B)I
    .locals 2
    .param p1, "songID"    # Ljava/lang/String;
    .param p2, "byteArray"    # [B

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMArchive_GetCustomData(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method public GetCustomDataLength(Ljava/lang/String;)J
    .locals 2
    .param p1, "songID"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMArchive_GetCustomDataLength(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetCustomDataString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "songID"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMArchive_GetCustomDataString(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetCustomMaxSize()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMArchive_GetCustomMaxSize(JLcom/markany/drm/xsync/DRMArchive;)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetLastModifiedTimeStamp(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 2
    .param p1, "songID"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMArchive_GetLastModifiedTimeStamp(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public GetList()Lcom/markany/drm/xsync/DRMArchiveEnum;
    .locals 4

    .prologue
    .line 103
    iget-wide v2, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMArchive_GetList(JLcom/markany/drm/xsync/DRMArchive;)J

    move-result-wide v0

    .line 104
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/markany/drm/xsync/DRMArchiveEnum;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/markany/drm/xsync/DRMArchiveEnum;-><init>(JZ)V

    goto :goto_0
.end method

.method public GetMaxSize()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMArchive_GetMaxSize(JLcom/markany/drm/xsync/DRMArchive;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public GetSize(Ljava/lang/String;)J
    .locals 2
    .param p1, "songID"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMArchive_GetSize(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetTotalAllocatedSize()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMArchive_GetTotalAllocatedSize(JLcom/markany/drm/xsync/DRMArchive;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public GetTotalSize()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMArchive_GetTotalSize(JLcom/markany/drm/xsync/DRMArchive;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public IsIncompleted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "songID"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMArchive_IsIncompleted(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public IsOpened()Z
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMArchive_IsOpened(JLcom/markany/drm/xsync/DRMArchive;)Z

    move-result v0

    return v0
.end method

.method public New(Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;Ljava/math/BigInteger;)I
    .locals 7
    .param p1, "archivePath"    # Ljava/lang/String;
    .param p2, "archiveMaxSize"    # Ljava/math/BigInteger;
    .param p3, "userID"    # Ljava/lang/String;
    .param p4, "customDataMaxSize"    # Ljava/math/BigInteger;

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMArchive_New(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;Ljava/math/BigInteger;)I

    move-result v0

    return v0
.end method

.method public Open(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "archivePath"    # Ljava/lang/String;
    .param p2, "userID"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMArchive_Open__SWIG_1(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public Open(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 6
    .param p1, "archivePath"    # Ljava/lang/String;
    .param p2, "userID"    # Ljava/lang/String;
    .param p3, "bWrite"    # Z

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMArchive_Open__SWIG_0(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public SetCustomData(Ljava/lang/String;[B)I
    .locals 2
    .param p1, "songID"    # Ljava/lang/String;
    .param p2, "byteArray"    # [B

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMArchive_SetCustomData(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method public SetCustomDataString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "songID"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMArchive_SetCustomDataString(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public SetMaxSize(Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "maxSize"    # Ljava/math/BigInteger;

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMArchive_SetMaxSize(JLcom/markany/drm/xsync/DRMArchive;Ljava/math/BigInteger;)V

    .line 76
    return-void
.end method

.method public UpdateDate(Ljava/lang/String;)Z
    .locals 2
    .param p1, "songID"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMArchive_UpdateDate(JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;)Z

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
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->delete_DRMArchive(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/markany/drm/xsync/DRMArchive;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/markany/drm/xsync/DRMArchive;->delete()V

    .line 26
    return-void
.end method
