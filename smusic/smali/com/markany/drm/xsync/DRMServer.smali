.class public Lcom/markany/drm/xsync/DRMServer;
.super Lcom/markany/drm/xsync/NonCopyable;
.source "DRMServer.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 3
    .param p1, "cPtr"    # J
    .param p3, "cMemoryOwn"    # Z

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/markany/drm/xsync/NonCopyable;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "dbDirectoryPath"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->new_DRMServer__SWIG_2(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/markany/drm/xsync/DRMServer;-><init>(JZ)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "contentsDirectoryPath"    # Ljava/lang/String;
    .param p2, "dbDirectoryPath"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->new_DRMServer__SWIG_1(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/markany/drm/xsync/DRMServer;-><init>(JZ)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "contentsDirectoryPath"    # Ljava/lang/String;
    .param p2, "dbDirectoryPat"    # Ljava/lang/String;
    .param p3, "checkRooting"    # Z

    .prologue
    .line 39
    invoke-static {p1, p2, p3}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->new_DRMServer__SWIG_0(Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/markany/drm/xsync/DRMServer;-><init>(JZ)V

    .line 40
    return-void
.end method

.method protected static getCPtr(Lcom/markany/drm/xsync/DRMServer;)J
    .locals 2
    .param p0, "obj"    # Lcom/markany/drm/xsync/DRMServer;

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public ChangeDeviceTime(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "strbeforeTime"    # Ljava/lang/String;
    .param p2, "strafterTime"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_ChangeDeviceTime(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public CheckValidDomain(Ljava/lang/String;)Z
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 296
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_CheckValidDomain(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public CloseFile(Lcom/markany/drm/xsync/DRMFile;)V
    .locals 6
    .param p1, "file"    # Lcom/markany/drm/xsync/DRMFile;

    .prologue
    .line 276
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/DRMFile;->getCPtr(Lcom/markany/drm/xsync/DRMFile;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_CloseFile(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMFile;)V

    .line 277
    return-void
.end method

.method public CloseSession(Lcom/markany/drm/xsync/DRMSession;)V
    .locals 6
    .param p1, "session"    # Lcom/markany/drm/xsync/DRMSession;

    .prologue
    .line 221
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/DRMSession;->getCPtr(Lcom/markany/drm/xsync/DRMSession;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_CloseSession__SWIG_0(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMSession;)V

    .line 222
    return-void
.end method

.method public CloseSession()Z
    .locals 2

    .prologue
    .line 320
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_CloseSession__SWIG_1(JLcom/markany/drm/xsync/DRMServer;)Z

    move-result v0

    return v0
.end method

.method public CloseSessionImpl(Lcom/markany/drm/xsync/DRMSession;)I
    .locals 6
    .param p1, "session"    # Lcom/markany/drm/xsync/DRMSession;

    .prologue
    .line 225
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/DRMSession;->getCPtr(Lcom/markany/drm/xsync/DRMSession;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_CloseSessionImpl(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMSession;)I

    move-result v0

    return v0
.end method

.method public DBRenewal()Z
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_DBRenewal(JLcom/markany/drm/xsync/DRMServer;)Z

    move-result v0

    return v0
.end method

.method public DBUpdateAllExpiryDate(Ljava/lang/String;)I
    .locals 2
    .param p1, "updateDate"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_DBUpdateAllExpiryDate(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public DeleteExpiredLicenseAll(I)I
    .locals 2
    .param p1, "time"    # I

    .prologue
    .line 207
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_DeleteExpiredLicenseAll(JLcom/markany/drm/xsync/DRMServer;I)I

    move-result v0

    return v0
.end method

.method public DeleteLicense(Lcom/markany/drm/xsync/LicenseData;)I
    .locals 6
    .param p1, "licData"    # Lcom/markany/drm/xsync/LicenseData;

    .prologue
    .line 183
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/LicenseData;->getCPtr(Lcom/markany/drm/xsync/LicenseData;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_DeleteLicense__SWIG_0(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/LicenseData;)I

    move-result v0

    return v0
.end method

.method public DeleteLicense(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_DeleteLicense__SWIG_1(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public DeleteLicense(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;
    .param p4, "deviceKey"    # Ljava/lang/String;

    .prologue
    .line 195
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_DeleteLicense__SWIG_2(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public DeleteLicenseByPath(Ljava/lang/String;)I
    .locals 2
    .param p1, "contentFilePath"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_DeleteLicenseByPath__SWIG_2(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public DeleteLicenseByPath(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "contentFilePath"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_DeleteLicenseByPath__SWIG_1(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public DeleteLicenseByPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "contentFilePath"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "deviceKey"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_DeleteLicenseByPath__SWIG_0(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public DeleteLicenseByType(Lcom/markany/drm/xsync/LicenseData;)I
    .locals 6
    .param p1, "licData"    # Lcom/markany/drm/xsync/LicenseData;

    .prologue
    .line 187
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/LicenseData;->getCPtr(Lcom/markany/drm/xsync/LicenseData;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_DeleteLicenseByType__SWIG_0(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/LicenseData;)I

    move-result v0

    return v0
.end method

.method public DeleteLicenseByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "deviceKey"    # Ljava/lang/String;

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_DeleteLicenseByType__SWIG_2(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public DeleteLicenseByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/markany/drm/xsync/LicenseType;)I
    .locals 8
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "deviceKey"    # Ljava/lang/String;
    .param p5, "licType"    # Lcom/markany/drm/xsync/LicenseType;

    .prologue
    .line 199
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-virtual {p5}, Lcom/markany/drm/xsync/LicenseType;->swigValue()I

    move-result v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v7}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_DeleteLicenseByType__SWIG_1(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public GetDBDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 336
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_GetDBDirectory(JLcom/markany/drm/xsync/DRMServer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetDBFullPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 328
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_GetDBFullPath(JLcom/markany/drm/xsync/DRMServer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetDeltaTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 344
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_GetDeltaTime(JLcom/markany/drm/xsync/DRMServer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetDomain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_GetDomain(JLcom/markany/drm/xsync/DRMServer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetEncDeviceKey(Ljava/lang/String;Lcom/markany/drm/xsync/SWIGTYPE_p_p_char;)I
    .locals 6
    .param p1, "srcDeviceKey"    # Ljava/lang/String;
    .param p2, "encDeviceKey"    # Lcom/markany/drm/xsync/SWIGTYPE_p_p_char;

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p2}, Lcom/markany/drm/xsync/SWIGTYPE_p_p_char;->getCPtr(Lcom/markany/drm/xsync/SWIGTYPE_p_p_char;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_GetEncDeviceKey(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public GetEncTimeValue(Ljava/lang/String;Lcom/markany/drm/xsync/SWIGTYPE_p_p_char;)I
    .locals 6
    .param p1, "srcTimeValue"    # Ljava/lang/String;
    .param p2, "encTimeValue"    # Lcom/markany/drm/xsync/SWIGTYPE_p_p_char;

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p2}, Lcom/markany/drm/xsync/SWIGTYPE_p_p_char;->getCPtr(Lcom/markany/drm/xsync/SWIGTYPE_p_p_char;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_GetEncTimeValue(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public GetLastErrorCode()I
    .locals 2

    .prologue
    .line 284
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_GetLastErrorCode(JLcom/markany/drm/xsync/DRMServer;)I

    move-result v0

    return v0
.end method

.method public GetLastErrorString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 280
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_GetLastErrorString(JLcom/markany/drm/xsync/DRMServer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetLicense(Ljava/lang/String;Lcom/markany/drm/xsync/LicenseData;)I
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "pData"    # Lcom/markany/drm/xsync/LicenseData;

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p2}, Lcom/markany/drm/xsync/LicenseData;->getCPtr(Lcom/markany/drm/xsync/LicenseData;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_GetLicense__SWIG_0(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;JLcom/markany/drm/xsync/LicenseData;)I

    move-result v0

    return v0
.end method

.method public GetLicense(Ljava/lang/String;Ljava/lang/String;Lcom/markany/drm/xsync/LicenseData;)I
    .locals 8
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "ContentsID"    # Ljava/lang/String;
    .param p3, "pData"    # Lcom/markany/drm/xsync/LicenseData;

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p3}, Lcom/markany/drm/xsync/LicenseData;->getCPtr(Lcom/markany/drm/xsync/LicenseData;)J

    move-result-wide v5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_GetLicense__SWIG_2(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;JLcom/markany/drm/xsync/LicenseData;)I

    move-result v0

    return v0
.end method

.method public GetLicense(Ljava/lang/String;Ljava/lang/String;Lcom/markany/drm/xsync/LicenseData;Z)I
    .locals 9
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "ContentsID"    # Ljava/lang/String;
    .param p3, "pData"    # Lcom/markany/drm/xsync/LicenseData;
    .param p4, "secureClkSet"    # Z

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p3}, Lcom/markany/drm/xsync/LicenseData;->getCPtr(Lcom/markany/drm/xsync/LicenseData;)J

    move-result-wide v5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    move v8, p4

    invoke-static/range {v0 .. v8}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_GetLicense__SWIG_1(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;JLcom/markany/drm/xsync/LicenseData;Z)I

    move-result v0

    return v0
.end method

.method public GetLicense()Z
    .locals 2

    .prologue
    .line 312
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_GetLicense__SWIG_3(JLcom/markany/drm/xsync/DRMServer;)Z

    move-result v0

    return v0
.end method

.method public GetRealTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 352
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_GetRealTime(JLcom/markany/drm/xsync/DRMServer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetSecureTimeFromHidden(ZI)Z
    .locals 2
    .param p1, "bResetFlag"    # Z
    .param p2, "SecureTime"    # I

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_GetSecureTimeFromHidden(JLcom/markany/drm/xsync/DRMServer;ZI)Z

    move-result v0

    return v0
.end method

.method public GetState()Lcom/markany/drm/xsync/State;
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_GetState(JLcom/markany/drm/xsync/DRMServer;)I

    move-result v0

    invoke-static {v0}, Lcom/markany/drm/xsync/State;->swigToEnum(I)Lcom/markany/drm/xsync/State;

    move-result-object v0

    return-object v0
.end method

.method public InstallLicense(Lcom/markany/drm/xsync/DRMArchive;Lcom/markany/drm/xsync/LicenseResult;)I
    .locals 9
    .param p1, "archive"    # Lcom/markany/drm/xsync/DRMArchive;
    .param p2, "result"    # Lcom/markany/drm/xsync/LicenseResult;

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/DRMArchive;->getCPtr(Lcom/markany/drm/xsync/DRMArchive;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/markany/drm/xsync/LicenseResult;->getCPtr(Lcom/markany/drm/xsync/LicenseResult;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_InstallLicense__SWIG_6(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMArchive;JLcom/markany/drm/xsync/LicenseResult;)I

    move-result v0

    return v0
.end method

.method public InstallLicense(Lcom/markany/drm/xsync/DRMArchive;Lcom/markany/drm/xsync/LicenseResult;Ljava/lang/String;)I
    .locals 10
    .param p1, "archive"    # Lcom/markany/drm/xsync/DRMArchive;
    .param p2, "result"    # Lcom/markany/drm/xsync/LicenseResult;
    .param p3, "_postData"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/DRMArchive;->getCPtr(Lcom/markany/drm/xsync/DRMArchive;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/markany/drm/xsync/LicenseResult;->getCPtr(Lcom/markany/drm/xsync/LicenseResult;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move-object v9, p3

    invoke-static/range {v0 .. v9}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_InstallLicense__SWIG_5(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMArchive;JLcom/markany/drm/xsync/LicenseResult;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public InstallLicense(Lcom/markany/drm/xsync/LicenseResult;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "result"    # Lcom/markany/drm/xsync/LicenseResult;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "_postData"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/LicenseResult;->getCPtr(Lcom/markany/drm/xsync/LicenseResult;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_InstallLicense__SWIG_2(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/LicenseResult;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public InstallLicense(Ljava/lang/String;J)I
    .locals 6
    .param p1, "licenseData"    # Ljava/lang/String;
    .param p2, "size"    # J

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_InstallLicense__SWIG_3(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public InstallLicense(Ljava/lang/String;JLcom/markany/drm/xsync/LicenseResult;)I
    .locals 10
    .param p1, "licenseData"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "result"    # Lcom/markany/drm/xsync/LicenseResult;

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p4}, Lcom/markany/drm/xsync/LicenseResult;->getCPtr(Lcom/markany/drm/xsync/LicenseResult;)J

    move-result-wide v6

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_InstallLicense__SWIG_4(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;JJLcom/markany/drm/xsync/LicenseResult;)I

    move-result v0

    return v0
.end method

.method public InstallLicense(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/markany/drm/xsync/LicenseResult;)I
    .locals 9
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "ContentsID"    # Ljava/lang/String;
    .param p3, "LAURL"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/markany/drm/xsync/LicenseResult;

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p4}, Lcom/markany/drm/xsync/LicenseResult;->getCPtr(Lcom/markany/drm/xsync/LicenseResult;)J

    move-result-wide v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_InstallLicense__SWIG_1(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/markany/drm/xsync/LicenseResult;)I

    move-result v0

    return v0
.end method

.method public InstallLicense(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/markany/drm/xsync/LicenseResult;Ljava/lang/String;)I
    .locals 10
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "ContentsID"    # Ljava/lang/String;
    .param p3, "LAURL"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/markany/drm/xsync/LicenseResult;
    .param p5, "_postData"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p4}, Lcom/markany/drm/xsync/LicenseResult;->getCPtr(Lcom/markany/drm/xsync/LicenseResult;)J

    move-result-wide v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v0 .. v9}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_InstallLicense__SWIG_0(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/markany/drm/xsync/LicenseResult;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public InstallLicense()Z
    .locals 2

    .prologue
    .line 316
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_InstallLicense__SWIG_7(JLcom/markany/drm/xsync/DRMServer;)Z

    move-result v0

    return v0
.end method

.method public IsDBOpened()Z
    .locals 2

    .prologue
    .line 288
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_IsDBOpened(JLcom/markany/drm/xsync/DRMServer;)Z

    move-result v0

    return v0
.end method

.method public OpenFile(Lcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;)Lcom/markany/drm/xsync/DRMFile;
    .locals 10
    .param p1, "name"    # Lcom/markany/drm/xsync/DRMArchive;
    .param p2, "filepath"    # Ljava/lang/String;

    .prologue
    .line 253
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/DRMArchive;->getCPtr(Lcom/markany/drm/xsync/DRMArchive;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_OpenFile__SWIG_2(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;)J

    move-result-wide v8

    .line 254
    .local v8, "cPtr":J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/markany/drm/xsync/DRMFile;

    const/4 v1, 0x0

    invoke-direct {v0, v8, v9, v1}, Lcom/markany/drm/xsync/DRMFile;-><init>(JZ)V

    goto :goto_0
.end method

.method public OpenFile(Ljava/lang/String;)Lcom/markany/drm/xsync/DRMFile;
    .locals 4
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 238
    iget-wide v2, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_OpenFile__SWIG_1(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)J

    move-result-wide v0

    .line 239
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/markany/drm/xsync/DRMFile;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/markany/drm/xsync/DRMFile;-><init>(JZ)V

    goto :goto_0
.end method

.method public OpenFile(Ljava/lang/String;Lcom/markany/drm/xsync/enDRMContentType;)Lcom/markany/drm/xsync/DRMFile;
    .locals 5
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "openMode"    # Lcom/markany/drm/xsync/enDRMContentType;

    .prologue
    .line 233
    iget-wide v2, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-virtual {p2}, Lcom/markany/drm/xsync/enDRMContentType;->swigValue()I

    move-result v4

    invoke-static {v2, v3, p0, p1, v4}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_OpenFile__SWIG_0(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;I)J

    move-result-wide v0

    .line 234
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/markany/drm/xsync/DRMFile;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/markany/drm/xsync/DRMFile;-><init>(JZ)V

    goto :goto_0
.end method

.method public OpenFile(Ljava/lang/String;Ljava/lang/String;)Lcom/markany/drm/xsync/DRMFile;
    .locals 4
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "cachepath"    # Ljava/lang/String;

    .prologue
    .line 258
    iget-wide v2, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_OpenFile__SWIG_3(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 259
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/markany/drm/xsync/DRMFile;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/markany/drm/xsync/DRMFile;-><init>(JZ)V

    goto :goto_0
.end method

.method public OpenFileReadOnly(Ljava/lang/String;)Lcom/markany/drm/xsync/DRMFile;
    .locals 4
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 248
    iget-wide v2, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_OpenFileReadOnly__SWIG_1(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)J

    move-result-wide v0

    .line 249
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/markany/drm/xsync/DRMFile;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/markany/drm/xsync/DRMFile;-><init>(JZ)V

    goto :goto_0
.end method

.method public OpenFileReadOnly(Ljava/lang/String;Lcom/markany/drm/xsync/enDRMContentType;)Lcom/markany/drm/xsync/DRMFile;
    .locals 5
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "openMode"    # Lcom/markany/drm/xsync/enDRMContentType;

    .prologue
    .line 243
    iget-wide v2, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-virtual {p2}, Lcom/markany/drm/xsync/enDRMContentType;->swigValue()I

    move-result v4

    invoke-static {v2, v3, p0, p1, v4}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_OpenFileReadOnly__SWIG_0(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;I)J

    move-result-wide v0

    .line 244
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/markany/drm/xsync/DRMFile;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/markany/drm/xsync/DRMFile;-><init>(JZ)V

    goto :goto_0
.end method

.method public OpenSession(Lcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;Ljava/lang/String;)Lcom/markany/drm/xsync/DRMSession;
    .locals 10
    .param p1, "archive"    # Lcom/markany/drm/xsync/DRMArchive;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/DRMArchive;->getCPtr(Lcom/markany/drm/xsync/DRMArchive;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_OpenSession__SWIG_1(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/DRMArchive;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 217
    .local v8, "cPtr":J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/markany/drm/xsync/DRMSession;

    const/4 v1, 0x0

    invoke-direct {v0, v8, v9, v1}, Lcom/markany/drm/xsync/DRMSession;-><init>(JZ)V

    goto :goto_0
.end method

.method public OpenSession(Ljava/lang/String;Ljava/lang/String;)Lcom/markany/drm/xsync/DRMSession;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-wide v2, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_OpenSession__SWIG_0(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 212
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/markany/drm/xsync/DRMSession;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/markany/drm/xsync/DRMSession;-><init>(JZ)V

    goto :goto_0
.end method

.method public OpenSession()Z
    .locals 2

    .prologue
    .line 324
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_OpenSession__SWIG_2(JLcom/markany/drm/xsync/DRMServer;)Z

    move-result v0

    return v0
.end method

.method public SendErrorMsg(Ljava/lang/String;Ljava/lang/String;Lcom/markany/drm/xsync/LicenseResult;)I
    .locals 8
    .param p1, "LAURL"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/markany/drm/xsync/LicenseResult;

    .prologue
    .line 167
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p3}, Lcom/markany/drm/xsync/LicenseResult;->getCPtr(Lcom/markany/drm/xsync/LicenseResult;)J

    move-result-wide v5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_SendErrorMsg(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;JLcom/markany/drm/xsync/LicenseResult;)I

    move-result v0

    return v0
.end method

.method public SetDBDirectory(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "directory"    # Ljava/lang/String;

    .prologue
    .line 340
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_SetDBDirectory(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public SetDBFullPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "dbpath"    # Ljava/lang/String;

    .prologue
    .line 332
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_SetDBFullPath(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public SetDeltaTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "deltaTime"    # Ljava/lang/String;

    .prologue
    .line 348
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_SetDeltaTime(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public SetDeviceKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceKey"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_SetDeviceKey__SWIG_0(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public SetDeviceKey(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "deviceKey"    # Ljava/lang/String;
    .param p2, "encrypt"    # Z

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_SetDeviceKey__SWIG_1(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Z)V

    .line 104
    return-void
.end method

.method public SetDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 308
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_SetDomain__SWIG_1(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public SetDomain(Ljava/lang/String;Lcom/markany/drm/xsync/enDomainOpt;)Ljava/lang/String;
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "opt"    # Lcom/markany/drm/xsync/enDomainOpt;

    .prologue
    .line 304
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-virtual {p2}, Lcom/markany/drm/xsync/enDomainOpt;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, p1, v2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_SetDomain__SWIG_0(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public SetMimeType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "extension"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_SetMimeType(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public SetRealTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "realTime"    # Ljava/lang/String;

    .prologue
    .line 356
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_SetRealTime(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public SetSecureTimeToHidden(Lcom/markany/drm/xsync/SWIGTYPE_p_long;)Z
    .locals 4
    .param p1, "SecureTime"    # Lcom/markany/drm/xsync/SWIGTYPE_p_long;

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/SWIGTYPE_p_long;->getCPtr(Lcom/markany/drm/xsync/SWIGTYPE_p_long;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_SetSecureTimeToHidden(JLcom/markany/drm/xsync/DRMServer;J)Z

    move-result v0

    return v0
.end method

.method public SetTimeOut(II)V
    .locals 2
    .param p1, "connectionTimeOut"    # I
    .param p2, "ioTimeout"    # I

    .prologue
    .line 272
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_SetTimeOut(JLcom/markany/drm/xsync/DRMServer;II)V

    .line 273
    return-void
.end method

.method public SetTimeServer(Ljava/lang/String;)Z
    .locals 2
    .param p1, "timeServerURL"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_SetTimeServer(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public SetUserID(Ljava/lang/String;)V
    .locals 2
    .param p1, "userID"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_SetUserID(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public Start()Z
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_Start__SWIG_1(JLcom/markany/drm/xsync/DRMServer;)Z

    move-result v0

    return v0
.end method

.method public Start(I)Z
    .locals 2
    .param p1, "port"    # I

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_Start__SWIG_0(JLcom/markany/drm/xsync/DRMServer;I)Z

    move-result v0

    return v0
.end method

.method public Start(II)Z
    .locals 2
    .param p1, "portBegin"    # I
    .param p2, "portEnd"    # I

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_Start__SWIG_2(JLcom/markany/drm/xsync/DRMServer;II)Z

    move-result v0

    return v0
.end method

.method public Stop()Z
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_Stop(JLcom/markany/drm/xsync/DRMServer;)Z

    move-result v0

    return v0
.end method

.method public UpdateSecureTime()Z
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_UpdateSecureTime(JLcom/markany/drm/xsync/DRMServer;)Z

    move-result v0

    return v0
.end method

.method public UpdateTime()Z
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_UpdateTime__SWIG_0(JLcom/markany/drm/xsync/DRMServer;)Z

    move-result v0

    return v0
.end method

.method public UpdateTime(Ljava/lang/String;)Z
    .locals 2
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_UpdateTime__SWIG_1(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 28
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 29
    iget-boolean v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCMemOwn:Z

    .line 31
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->delete_DRMServer(J)V

    .line 33
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

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
    invoke-virtual {p0}, Lcom/markany/drm/xsync/DRMServer;->delete()V

    .line 25
    return-void
.end method

.method public getUserCypherModule()Lcom/markany/drm/xsync/UserCypherModuleCallBack;
    .locals 4

    .prologue
    .line 267
    iget-wide v2, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_getUserCypherModule(JLcom/markany/drm/xsync/DRMServer;)J

    move-result-wide v0

    .line 268
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/markany/drm/xsync/UserCypherModuleCallBack;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/markany/drm/xsync/UserCypherModuleCallBack;-><init>(JZ)V

    goto :goto_0
.end method

.method public isDBOpened()Z
    .locals 2

    .prologue
    .line 292
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_isDBOpened(JLcom/markany/drm/xsync/DRMServer;)Z

    move-result v0

    return v0
.end method

.method public setUserCypherModule(Lcom/markany/drm/xsync/UserCypherModuleCallBack;)V
    .locals 6
    .param p1, "encModlue"    # Lcom/markany/drm/xsync/UserCypherModuleCallBack;

    .prologue
    .line 263
    iget-wide v0, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p1}, Lcom/markany/drm/xsync/UserCypherModuleCallBack;->getCPtr(Lcom/markany/drm/xsync/UserCypherModuleCallBack;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_setUserCypherModule(JLcom/markany/drm/xsync/DRMServer;JLcom/markany/drm/xsync/UserCypherModuleCallBack;)V

    .line 264
    return-void
.end method

.method public split(Ljava/lang/String;Ljava/lang/String;Lcom/markany/drm/xsync/SWIGTYPE_p_p_char;Lcom/markany/drm/xsync/SWIGTYPE_p_int;)I
    .locals 10
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "div"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/markany/drm/xsync/SWIGTYPE_p_p_char;
    .param p4, "count"    # Lcom/markany/drm/xsync/SWIGTYPE_p_int;

    .prologue
    .line 364
    iget-wide v1, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {p3}, Lcom/markany/drm/xsync/SWIGTYPE_p_p_char;->getCPtr(Lcom/markany/drm/xsync/SWIGTYPE_p_p_char;)J

    move-result-wide v6

    invoke-static {p4}, Lcom/markany/drm/xsync/SWIGTYPE_p_int;->getCPtr(Lcom/markany/drm/xsync/SWIGTYPE_p_int;)J

    move-result-wide v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v9}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_split(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;JJ)I

    move-result v0

    return v0
.end method

.method public stringToTime(Ljava/lang/String;Ljava/lang/String;)Lcom/markany/drm/xsync/SWIGTYPE_p_time_t;
    .locals 4
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;

    .prologue
    .line 360
    new-instance v0, Lcom/markany/drm/xsync/SWIGTYPE_p_time_t;

    iget-wide v2, p0, Lcom/markany/drm/xsync/DRMServer;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->DRMServer_stringToTime(JLcom/markany/drm/xsync/DRMServer;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/markany/drm/xsync/SWIGTYPE_p_time_t;-><init>(JZ)V

    return-object v0
.end method
