.class public Lcom/markany/drm/xsync/DRMSessionCallBack;
.super Ljava/lang/Object;
.source "DRMSessionCallBack.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 70
    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->new_DRMSessionCallBack()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/markany/drm/xsync/DRMSessionCallBack;-><init>(JZ)V

    .line 71
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCPtr:J

    iget-boolean v2, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCMemOwn:Z

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSessionCallBack_director_connect(Lcom/markany/drm/xsync/DRMSessionCallBack;JZZ)V

    .line 72
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1
    .param p1, "cPtr"    # J
    .param p3, "cMemoryOwn"    # Z

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/markany/drm/xsync/DRMSessionCallBack;)J
    .locals 2
    .param p0, "obj"    # Lcom/markany/drm/xsync/DRMSessionCallBack;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public OnError(ILjava/lang/String;)Z
    .locals 2
    .param p1, "errCode"    # I
    .param p2, "errStr"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSessionCallBack_OnError(JLcom/markany/drm/xsync/DRMSessionCallBack;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public OnLicenseRequired(Lcom/markany/drm/xsync/DRMServer;Lcom/markany/drm/xsync/DRMSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "server"    # Lcom/markany/drm/xsync/DRMServer;
    .param p2, "session"    # Lcom/markany/drm/xsync/DRMSession;
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "ContentsID"    # Ljava/lang/String;
    .param p5, "LAURL"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/markany/drm/xsync/DRMSessionCallBack;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/DRMServer;->getCPtr(Lcom/markany/drm/xsync/DRMServer;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/markany/drm/xsync/DRMSession;->getCPtr(Lcom/markany/drm/xsync/DRMSession;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-static/range {v0 .. v11}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSessionCallBack_OnLicenseRequired(JLcom/markany/drm/xsync/DRMSessionCallBack;JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/DRMServer;->getCPtr(Lcom/markany/drm/xsync/DRMServer;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/markany/drm/xsync/DRMSession;->getCPtr(Lcom/markany/drm/xsync/DRMSession;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-static/range {v0 .. v11}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSessionCallBack_OnLicenseRequiredSwigExplicitDRMSessionCallBack(JLcom/markany/drm/xsync/DRMSessionCallBack;JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public OnNewConnection(Lcom/markany/drm/xsync/DRMSession;)Z
    .locals 6
    .param p1, "session"    # Lcom/markany/drm/xsync/DRMSession;

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/DRMSession;->getCPtr(Lcom/markany/drm/xsync/DRMSession;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSessionCallBack_OnNewConnection(JLcom/markany/drm/xsync/DRMSessionCallBack;JLcom/markany/drm/xsync/DRMSession;)Z

    move-result v0

    return v0
.end method

.method public OnTimeUpdateRequired(Lcom/markany/drm/xsync/DRMServer;Lcom/markany/drm/xsync/DRMSession;)Z
    .locals 9
    .param p1, "server"    # Lcom/markany/drm/xsync/DRMServer;
    .param p2, "session"    # Lcom/markany/drm/xsync/DRMSession;

    .prologue
    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/markany/drm/xsync/DRMSessionCallBack;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/DRMServer;->getCPtr(Lcom/markany/drm/xsync/DRMServer;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/markany/drm/xsync/DRMSession;->getCPtr(Lcom/markany/drm/xsync/DRMSession;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSessionCallBack_OnTimeUpdateRequired(JLcom/markany/drm/xsync/DRMSessionCallBack;JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMSession;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/DRMServer;->getCPtr(Lcom/markany/drm/xsync/DRMServer;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/markany/drm/xsync/DRMSession;->getCPtr(Lcom/markany/drm/xsync/DRMSession;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSessionCallBack_OnTimeUpdateRequiredSwigExplicitDRMSessionCallBack(JLcom/markany/drm/xsync/DRMSessionCallBack;JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMSession;)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->delete_DRMSessionCallBack(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/markany/drm/xsync/DRMSessionCallBack;->delete()V

    .line 26
    return-void
.end method

.method protected swigDirectorDisconnect()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCMemOwn:Z

    .line 40
    invoke-virtual {p0}, Lcom/markany/drm/xsync/DRMSessionCallBack;->delete()V

    .line 41
    return-void
.end method

.method public swigReleaseOwnership()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    iput-boolean v2, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCMemOwn:Z

    .line 45
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCPtr:J

    invoke-static {p0, v0, v1, v2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSessionCallBack_change_ownership(Lcom/markany/drm/xsync/DRMSessionCallBack;JZ)V

    .line 46
    return-void
.end method

.method public swigTakeOwnership()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 49
    iput-boolean v2, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCMemOwn:Z

    .line 50
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMSessionCallBack;->swigCPtr:J

    invoke-static {p0, v0, v1, v2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMSessionCallBack_change_ownership(Lcom/markany/drm/xsync/DRMSessionCallBack;JZ)V

    .line 51
    return-void
.end method
