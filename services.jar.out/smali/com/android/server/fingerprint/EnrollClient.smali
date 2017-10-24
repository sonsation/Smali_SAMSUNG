.class public abstract Lcom/android/server/fingerprint/EnrollClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "EnrollClient.java"


# instance fields
.field private mCryptoToken:[B

.field protected mDuplicatedImgCnt:I

.field mPrevRemaining:I


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II[BZLjava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "halDeviceId"    # J
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "userId"    # I
    .param p7, "groupId"    # I
    .param p8, "cryptoToken"    # [B
    .param p9, "restricted"    # Z
    .param p10, "owner"    # Ljava/lang/String;

    .prologue
    .line 48
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/server/fingerprint/EnrollClient;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II[BZLjava/lang/String;Landroid/os/Bundle;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II[BZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "halDeviceId"    # J
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "userId"    # I
    .param p7, "groupId"    # I
    .param p8, "cryptoToken"    # [B
    .param p9, "restricted"    # Z
    .param p10, "owner"    # Ljava/lang/String;
    .param p11, "attr"    # Landroid/os/Bundle;

    .prologue
    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    .line 54
    invoke-direct/range {v2 .. v12}, Lcom/android/server/fingerprint/ClientMonitor;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;Landroid/os/Bundle;)V

    .line 40
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/fingerprint/EnrollClient;->mPrevRemaining:I

    .line 41
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/fingerprint/EnrollClient;->mDuplicatedImgCnt:I

    .line 55
    if-nez p8, :cond_0

    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lcom/android/server/fingerprint/EnrollClient;->mCryptoToken:[B

    .line 53
    return-void

    .line 55
    :cond_0
    move-object/from16 v0, p8

    array-length v2, v0

    move-object/from16 v0, p8

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    goto :goto_0
.end method

.method private sendEnrollResult(III)Z
    .locals 10
    .param p1, "fpId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .prologue
    const/16 v9, 0x64

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 83
    sget-boolean v2, Lcom/android/server/fingerprint/EnrollClient;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ClientMonitor : sendEnrollResult : fpId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", groupId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", remaining="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v1

    .line 85
    .local v1, "receiver":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    if-nez v1, :cond_1

    .line 86
    return v7

    .line 87
    :cond_1
    iget v2, p0, Lcom/android/server/fingerprint/EnrollClient;->mPrevRemaining:I

    if-le p3, v2, :cond_2

    .line 88
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintUtils;->vibrateFingerprintSuccess(Landroid/content/Context;)V

    .line 90
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xfb

    invoke-static {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 92
    :try_start_0
    iput p3, p0, Lcom/android/server/fingerprint/EnrollClient;->mPrevRemaining:I

    .line 93
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getHalDeviceId()J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onEnrollResult(JIII)V

    .line 95
    if-ne p3, v9, :cond_3

    .line 96
    const-string/jumbo v2, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/fingerprint/EnrollClient;->sendBroadcast(Ljava/lang/String;II)V

    .line 97
    const-string/jumbo v2, "FPEN"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/server/fingerprint/EnrollClient;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 98
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/fingerprint/EnrollClient;->mPrevRemaining:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_3
    if-ne p3, v9, :cond_4

    move v2, v7

    :goto_0
    return v2

    :cond_4
    move v2, v8

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "Failed to notify EnrollResult:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    return v7
.end method


# virtual methods
.method public onAcquired(I)Z
    .locals 1
    .param p1, "acquiredInfo"    # I

    .prologue
    .line 110
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_0

    .line 111
    iget v0, p0, Lcom/android/server/fingerprint/EnrollClient;->mDuplicatedImgCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/fingerprint/EnrollClient;->mDuplicatedImgCnt:I

    .line 113
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/fingerprint/ClientMonitor;->onAcquired(I)Z

    move-result v0

    return v0
.end method

.method public onAuthenticated(II)Z
    .locals 2
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    .prologue
    .line 188
    sget-boolean v0, Lcom/android/server/fingerprint/EnrollClient;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "onAuthenticated() called for enroll!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onEnrollResult(III)Z
    .locals 6
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getGroupId()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 61
    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEnrollResult : groupId != getGroupId(), groupId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 62
    const-string/jumbo v2, " getGroupId():"

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 62
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getGroupId()I

    move-result v2

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    const/16 v0, 0x64

    if-ne p3, v0, :cond_2

    .line 67
    sget-boolean v0, Lcom/android/server/fingerprint/EnrollClient;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 68
    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEnrollResult : duplicated image count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/fingerprint/EnrollClient;->mDuplicatedImgCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_1
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 72
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getTargetUserId()I

    move-result v3

    iget v5, p0, Lcom/android/server/fingerprint/EnrollClient;->mDuplicatedImgCnt:I

    const/4 v4, 0x0

    move v2, p1

    .line 71
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/fingerprint/FingerprintUtils;->semAddFingerprintForUser(Landroid/content/Context;IILjava/lang/CharSequence;I)V

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/EnrollClient;->setNavigationBar(Z)V

    .line 76
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/fingerprint/EnrollClient;->sendEnrollResult(III)Z

    move-result v0

    return v0
.end method

.method public onEnumerationResult(II)Z
    .locals 2
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    .prologue
    .line 182
    sget-boolean v0, Lcom/android/server/fingerprint/EnrollClient;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "onEnumerationResult() called for enroll!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onRemoved(II)Z
    .locals 2
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    .prologue
    .line 176
    sget-boolean v0, Lcom/android/server/fingerprint/EnrollClient;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "onRemoved() called for enroll!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public start()I
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v2

    .line 119
    .local v2, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v2, :cond_0

    .line 120
    const-string/jumbo v6, "FingerprintService"

    const-string/jumbo v7, "enroll: no fingeprintd!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0, v8}, Lcom/android/server/fingerprint/EnrollClient;->onError(I)Z

    .line 122
    return v11

    .line 127
    :cond_0
    const/4 v5, 0x0

    .line 128
    .local v5, "timeout":I
    iput v10, p0, Lcom/android/server/fingerprint/EnrollClient;->mPrevRemaining:I

    .line 130
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 131
    .local v0, "begin":J
    iget-object v6, p0, Lcom/android/server/fingerprint/EnrollClient;->mCryptoToken:[B

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getGroupId()I

    move-result v7

    const/4 v8, 0x0

    invoke-interface {v2, v6, v7, v8}, Landroid/hardware/fingerprint/IFingerprintDaemon;->enroll([BII)I

    move-result v4

    .line 132
    .local v4, "result":I
    const-string/jumbo v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startEnrollment FP_FINISH ("

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

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-eqz v4, :cond_1

    .line 134
    const-string/jumbo v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startEnroll failed, result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/server/fingerprint/EnrollClient;->onError(I)Z

    .line 136
    return v4

    .line 138
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/server/fingerprint/EnrollClient;->setNavigationBar(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    return v10

    .line 139
    .end local v0    # "begin":J
    .end local v4    # "result":I
    :catch_0
    move-exception v3

    .line 140
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "FingerprintService"

    const-string/jumbo v7, "startEnroll failed"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    return v11
.end method

.method public stop(Z)I
    .locals 11
    .param p1, "initiatedByClient"    # Z

    .prologue
    const/4 v10, 0x0

    .line 148
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v2

    .line 149
    .local v2, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v2, :cond_0

    .line 150
    const-string/jumbo v5, "FingerprintService"

    const-string/jumbo v6, "stopEnrollment: no fingeprintd!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/server/fingerprint/EnrollClient;->onError(I)Z

    .line 152
    const/4 v5, 0x3

    return v5

    .line 155
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 156
    .local v0, "begin":J
    invoke-interface {v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelEnrollment()I

    move-result v4

    .line 157
    .local v4, "result":I
    const-string/jumbo v5, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stopEnrollment FP_FINISH ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms) RESULT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    if-eqz v4, :cond_1

    .line 159
    const-string/jumbo v5, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startEnrollCancel failed, result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return v4

    .line 162
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/fingerprint/EnrollClient;->setNavigationBar(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v0    # "begin":J
    .end local v4    # "result":I
    :goto_0
    return v10

    .line 163
    :catch_0
    move-exception v3

    .line 164
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "FingerprintService"

    const-string/jumbo v6, "stopEnrollment failed"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
