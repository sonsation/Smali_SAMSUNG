.class public Lcom/markany/drm/xsync/UserCypherModuleCallBack;
.super Ljava/lang/Object;
.source "UserCypherModuleCallBack.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 70
    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->new_UserCypherModuleCallBack()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v3}, Lcom/markany/drm/xsync/UserCypherModuleCallBack;-><init>(JZ)V

    .line 71
    iget-wide v0, p0, Lcom/markany/drm/xsync/UserCypherModuleCallBack;->swigCPtr:J

    iget-boolean v2, p0, Lcom/markany/drm/xsync/UserCypherModuleCallBack;->swigCMemOwn:Z

    invoke-static {p0, v0, v1, v2, v3}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->UserCypherModuleCallBack_director_connect(Lcom/markany/drm/xsync/UserCypherModuleCallBack;JZZ)V

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
    iput-boolean p3, p0, Lcom/markany/drm/xsync/UserCypherModuleCallBack;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/markany/drm/xsync/UserCypherModuleCallBack;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/markany/drm/xsync/UserCypherModuleCallBack;)J
    .locals 2
    .param p0, "obj"    # Lcom/markany/drm/xsync/UserCypherModuleCallBack;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/UserCypherModuleCallBack;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public DecString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "srcStr"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/markany/drm/xsync/UserCypherModuleCallBack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->UserCypherModuleCallBack_DecString(JLcom/markany/drm/xsync/UserCypherModuleCallBack;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public EncString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "srcStr"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/markany/drm/xsync/UserCypherModuleCallBack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->UserCypherModuleCallBack_EncString(JLcom/markany/drm/xsync/UserCypherModuleCallBack;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetEncDeviceKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "srcDevKey"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/markany/drm/xsync/UserCypherModuleCallBack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->UserCypherModuleCallBack_GetEncDeviceKey(JLcom/markany/drm/xsync/UserCypherModuleCallBack;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetEncTimeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "srcTimeValue"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/markany/drm/xsync/UserCypherModuleCallBack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->UserCypherModuleCallBack_GetEncTimeValue(JLcom/markany/drm/xsync/UserCypherModuleCallBack;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/UserCypherModuleCallBack;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/markany/drm/xsync/UserCypherModuleCallBack;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/markany/drm/xsync/UserCypherModuleCallBack;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/markany/drm/xsync/UserCypherModuleCallBack;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->delete_UserCypherModuleCallBack(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/markany/drm/xsync/UserCypherModuleCallBack;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/markany/drm/xsync/UserCypherModuleCallBack;->delete()V

    .line 26
    return-void
.end method

.method protected swigDirectorDisconnect()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/markany/drm/xsync/UserCypherModuleCallBack;->swigCMemOwn:Z

    .line 40
    invoke-virtual {p0}, Lcom/markany/drm/xsync/UserCypherModuleCallBack;->delete()V

    .line 41
    return-void
.end method

.method public swigReleaseOwnership()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    iput-boolean v2, p0, Lcom/markany/drm/xsync/UserCypherModuleCallBack;->swigCMemOwn:Z

    .line 45
    iget-wide v0, p0, Lcom/markany/drm/xsync/UserCypherModuleCallBack;->swigCPtr:J

    invoke-static {p0, v0, v1, v2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->UserCypherModuleCallBack_change_ownership(Lcom/markany/drm/xsync/UserCypherModuleCallBack;JZ)V

    .line 46
    return-void
.end method

.method public swigTakeOwnership()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 49
    iput-boolean v2, p0, Lcom/markany/drm/xsync/UserCypherModuleCallBack;->swigCMemOwn:Z

    .line 50
    iget-wide v0, p0, Lcom/markany/drm/xsync/UserCypherModuleCallBack;->swigCPtr:J

    invoke-static {p0, v0, v1, v2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->UserCypherModuleCallBack_change_ownership(Lcom/markany/drm/xsync/UserCypherModuleCallBack;JZ)V

    .line 51
    return-void
.end method
