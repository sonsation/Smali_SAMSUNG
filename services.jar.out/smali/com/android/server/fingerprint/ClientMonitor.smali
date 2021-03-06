.class public abstract Lcom/android/server/fingerprint/ClientMonitor;
.super Ljava/lang/Object;
.source "ClientMonitor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field protected static final DEBUG:Z

.field protected static final ERROR_ESRCH:I = 0x3

.field protected static final TAG:Ljava/lang/String; = "FingerprintService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGroupId:I

.field private mHalDeviceId:J

.field private mIsRestricted:Z

.field protected mNeedRetry:Z

.field private mOwner:Ljava/lang/String;

.field protected mOwnerOfFpms:Ljava/lang/String;

.field protected mPrivilegedAttr:I

.field private mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field private mTargetUserId:I

.field private mToken:Landroid/os/IBinder;

.field protected misDone:Z

.field protected misFromFPMS:Z

.field protected misKeyguard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/fingerprint/ClientMonitor;->DEBUG:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "halDeviceId"    # J
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "userId"    # I
    .param p7, "groupId"    # I
    .param p8, "restricted"    # Z
    .param p9, "owner"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->misFromFPMS:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->misKeyguard:Z

    .line 54
    iput-boolean v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->misDone:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mNeedRetry:Z

    .line 56
    iput v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mPrivilegedAttr:I

    .line 73
    iput-object p1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mContext:Landroid/content/Context;

    .line 74
    iput-wide p2, p0, Lcom/android/server/fingerprint/ClientMonitor;->mHalDeviceId:J

    .line 75
    iput-object p4, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    .line 76
    iput-object p5, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 77
    iput p6, p0, Lcom/android/server/fingerprint/ClientMonitor;->mTargetUserId:I

    .line 78
    iput p7, p0, Lcom/android/server/fingerprint/ClientMonitor;->mGroupId:I

    .line 79
    iput-boolean p8, p0, Lcom/android/server/fingerprint/ClientMonitor;->mIsRestricted:Z

    .line 80
    iput-object p9, p0, Lcom/android/server/fingerprint/ClientMonitor;->mOwner:Ljava/lang/String;

    .line 82
    if-eqz p4, :cond_0

    .line 83
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p4, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "caught remote exception in linkToDeath: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "halDeviceId"    # J
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "userId"    # I
    .param p7, "groupId"    # I
    .param p8, "restricted"    # Z
    .param p9, "owner"    # Ljava/lang/String;
    .param p10, "attr"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 92
    invoke-direct/range {p0 .. p9}, Lcom/android/server/fingerprint/ClientMonitor;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    .line 93
    if-nez p8, :cond_1

    .line 94
    if-eqz p10, :cond_0

    .line 95
    const-string/jumbo v0, "privileged_attr"

    const/4 v1, 0x0

    invoke-virtual {p10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mPrivilegedAttr:I

    .line 96
    const-string/jumbo v0, "packageName"

    iget-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mOwner:Ljava/lang/String;

    invoke-virtual {p10, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mOwnerOfFpms:Ljava/lang/String;

    .line 97
    sget-boolean v0, Lcom/android/server/fingerprint/ClientMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 98
    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ClientMonitor: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/ClientMonitor;->mOwnerOfFpms:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mOwner:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    iput-boolean v3, p0, Lcom/android/server/fingerprint/ClientMonitor;->misKeyguard:Z

    .line 103
    iget v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mPrivilegedAttr:I

    const v1, -0x7fffffe9

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mPrivilegedAttr:I

    .line 114
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/server/fingerprint/ClientMonitor;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 115
    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ClientMonitor: Owner = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/ClientMonitor;->mOwner:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", TargetUserId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/fingerprint/ClientMonitor;->mTargetUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", GroupId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/fingerprint/ClientMonitor;->mGroupId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ClientMonitor: privilegedAttr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/fingerprint/ClientMonitor;->mPrivilegedAttr:I

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_1
    return-void

    .line 107
    :cond_2
    const-string/jumbo v0, "com.samsung.android.fingerprint.service"

    iget-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mOwner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    iput-boolean v3, p0, Lcom/android/server/fingerprint/ClientMonitor;->misFromFPMS:Z

    .line 109
    iget v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mPrivilegedAttr:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mPrivilegedAttr:I

    goto :goto_0

    .line 110
    :cond_3
    const-string/jumbo v0, "com.android.settings"

    iget-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mOwner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mPrivilegedAttr:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mPrivilegedAttr:I

    goto/16 :goto_0

    .line 118
    :cond_4
    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ClientMonitor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/fingerprint/ClientMonitor;->mPrivilegedAttr:I

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isQualityFailedInfo(I)Z
    .locals 1
    .param p1, "acquiredInfo"    # I

    .prologue
    .line 177
    sparse-switch p1, :sswitch_data_0

    .line 187
    const/4 v0, 0x0

    return v0

    .line 185
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 177
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_0
    .end sparse-switch
.end method

.method private loggingQualityErrorInfo(I)V
    .locals 4
    .param p1, "q"    # I

    .prologue
    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "featureName":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 364
    .end local v0    # "featureName":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->getPackageNameForSurvey()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/fingerprint/ClientMonitor;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 342
    :cond_0
    return-void

    .line 346
    .restart local v0    # "featureName":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v0, "FPQP"

    .local v0, "featureName":Ljava/lang/String;
    goto :goto_0

    .line 349
    .local v0, "featureName":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v0, "FPQI"

    .local v0, "featureName":Ljava/lang/String;
    goto :goto_0

    .line 352
    .local v0, "featureName":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v0, "FPQD"

    .local v0, "featureName":Ljava/lang/String;
    goto :goto_0

    .line 355
    .local v0, "featureName":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v0, "FPQS"

    .local v0, "featureName":Ljava/lang/String;
    goto :goto_0

    .line 358
    .local v0, "featureName":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v0, "FPQF"

    .local v0, "featureName":Ljava/lang/String;
    goto :goto_0

    .line 361
    .local v0, "featureName":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v0, "FPQW"

    .local v0, "featureName":Ljava/lang/String;
    goto :goto_0

    .line 344
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x3e9 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 301
    sget-boolean v0, Lcom/android/server/fingerprint/ClientMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ClientMonitor["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/ClientMonitor;->mOwner:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] : binderDied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/server/fingerprint/ClientMonitor;->clientDied(Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 300
    return-void
.end method

.method public abstract clientDied(Lcom/android/server/fingerprint/ClientMonitor;)V
.end method

.method public destroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 286
    sget-boolean v1, Lcom/android/server/fingerprint/ClientMonitor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ClientMonitor : destroy, token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    if-eqz v1, :cond_1

    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    iput-object v5, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    .line 296
    :cond_1
    iput-object v5, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 285
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string/jumbo v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "destroy(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "here"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 316
    sget-boolean v0, Lcom/android/server/fingerprint/ClientMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removing leaked reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/ClientMonitor;->onError(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 313
    return-void

    .line 319
    :catchall_0
    move-exception v0

    .line 320
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 319
    throw v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;
.end method

.method public final getGroupId()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mGroupId:I

    return v0
.end method

.method public final getHalDeviceId()J
    .locals 2

    .prologue
    .line 378
    iget-wide v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mHalDeviceId:J

    return-wide v0
.end method

.method public final getIsRestricted()Z
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mIsRestricted:Z

    return v0
.end method

.method public final getOwnerString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mOwner:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageNameForSurvey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->misFromFPMS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mOwnerOfFpms:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mOwner:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    return-object v0
.end method

.method public final getTargetUserId()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mTargetUserId:I

    return v0
.end method

.method public final getToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method protected hasPrivilegedAttr(I)Z
    .locals 2
    .param p1, "attr"    # I

    .prologue
    const/4 v1, 0x0

    .line 123
    iget v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mPrivilegedAttr:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x1

    return v0

    .line 126
    :cond_0
    return v1
.end method

.method public abstract insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract notifyUserActivity()V
.end method

.method public onAcquired(I)Z
    .locals 12
    .param p1, "acquiredInfo"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 197
    sget-boolean v6, Lcom/android/server/fingerprint/ClientMonitor;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 198
    const-string/jumbo v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ClientMonitor["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] : onAcquired : acquiredInfo = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    iget-object v6, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-nez v6, :cond_1

    .line 202
    const-string/jumbo v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ClientMonitor["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] : onAcquired : receiver is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return v11

    .line 208
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/ClientMonitor;->isQualityFailedInfo(I)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/server/fingerprint/ClientMonitor;->hasPrivilegedAttr(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 212
    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->getHalDeviceId()J

    move-result-wide v8

    invoke-interface {v6, v8, v9, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(JI)V

    .line 214
    instance-of v6, p0, Lcom/android/server/fingerprint/AuthenticationClient;

    if-eqz v6, :cond_9

    .line 215
    iget-boolean v6, p0, Lcom/android/server/fingerprint/ClientMonitor;->misKeyguard:Z

    if-nez v6, :cond_3

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/ClientMonitor;->loggingQualityErrorInfo(I)V

    .line 218
    :cond_3
    const/16 v6, 0x2714

    if-eq p1, v6, :cond_4

    .line 219
    const/16 v6, 0x2717

    if-ne p1, v6, :cond_9

    .line 220
    :cond_4
    iget-boolean v6, p0, Lcom/android/server/fingerprint/ClientMonitor;->misFromFPMS:Z

    .line 218
    if-eqz v6, :cond_9

    .line 221
    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v2

    .line 222
    .local v2, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-eqz v2, :cond_9

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 224
    .local v0, "begin":J
    invoke-interface {v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelAuthentication()I

    move-result v5

    .line 225
    .local v5, "result":I
    const-string/jumbo v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ClientMonitor["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] : sendAcquired : cancelAuthentication FP_FINISH ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms) RESULT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    if-eqz v5, :cond_5

    .line 227
    const-string/jumbo v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ClientMonitor["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] : sendAcquired : cancelAuthentication failed, result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :cond_5
    if-nez p1, :cond_6

    .line 247
    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->notifyUserActivity()V

    .line 229
    :cond_6
    return v11

    .line 209
    .end local v0    # "begin":J
    .end local v2    # "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    .end local v5    # "result":I
    :cond_7
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/fingerprint/FingerprintUtils;->vibrateFingerprintError(Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 238
    :catch_0
    move-exception v3

    .line 239
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v6, "FingerprintService"

    const-string/jumbo v7, "Failed to invoke sendAcquired:"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    if-nez p1, :cond_8

    .line 247
    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->notifyUserActivity()V

    .line 240
    :cond_8
    return v11

    .line 233
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_9
    const/16 v6, 0x2719

    if-ne p1, v6, :cond_b

    .line 246
    if-nez p1, :cond_a

    .line 247
    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->notifyUserActivity()V

    .line 234
    :cond_a
    return v11

    .line 246
    :cond_b
    if-nez p1, :cond_c

    .line 247
    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->notifyUserActivity()V

    .line 237
    :cond_c
    return v10

    .line 241
    :catch_1
    move-exception v4

    .line 242
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v6, "FingerprintService"

    const-string/jumbo v7, "Failed to notify onAcquired:"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 246
    if-nez p1, :cond_d

    .line 247
    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->notifyUserActivity()V

    .line 243
    :cond_d
    return v11

    .line 244
    .end local v4    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 246
    if-nez p1, :cond_e

    .line 247
    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->notifyUserActivity()V

    .line 244
    :cond_e
    throw v6
.end method

.method public abstract onAuthenticated(II)Z
.end method

.method public abstract onEnrollResult(III)Z
.end method

.method public abstract onEnumerationResult(II)Z
.end method

.method public onError(I)Z
    .locals 7
    .param p1, "error"    # I

    .prologue
    const/4 v6, 0x1

    .line 260
    iget-boolean v2, p0, Lcom/android/server/fingerprint/ClientMonitor;->misDone:Z

    if-eqz v2, :cond_0

    .line 261
    const-string/jumbo v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ClientMonitor["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] : skip onError : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return v6

    .line 265
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/fingerprint/ClientMonitor;->mNeedRetry:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    .line 266
    const/16 p1, 0x1388

    .line 268
    :cond_1
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/android/server/fingerprint/ClientMonitor;->hasPrivilegedAttr(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x3e8

    if-le p1, v2, :cond_2

    .line 269
    const/4 p1, 0x5

    .line 272
    :cond_2
    iget-object v2, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v2, :cond_3

    .line 274
    :try_start_0
    const-string/jumbo v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ClientMonitor["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] : onError : error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v2, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->getHalDeviceId()J

    move-result-wide v4

    invoke-interface {v2, v4, v5, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :cond_3
    :goto_0
    return v6

    .line 278
    :catch_0
    move-exception v1

    .line 279
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "Failed to invoke onError:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 276
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 277
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "Failed to invoke sendError:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public abstract onRemoved(II)Z
.end method

.method public abstract sendBroadcast(Ljava/lang/String;II)V
.end method

.method public setNavigationBar(Z)V
    .locals 4
    .param p1, "bExpand"    # Z

    .prologue
    .line 325
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->getSensorPosition()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 326
    return-void

    .line 328
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 329
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_1

    .line 330
    const-string/jumbo v2, "android.intent.action.CHANGE_FINGERPRINT_NAVIGATION_BAR"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const-string/jumbo v2, "HEIGHT"

    const/16 v3, 0x168

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/fingerprint/ClientMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_1
    return-void

    .line 333
    :cond_1
    const-string/jumbo v2, "android.intent.action.CHANGE_FINGERPRINT_NAVIGATION_BAR_DONE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "setNavigationBar : failed to send broadcast for navigation bar"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public abstract start()I
.end method

.method public abstract stop(Z)I
.end method
