.class Lcom/android/server/fingerprint/FingerprintService$11;
.super Lcom/android/server/fingerprint/AuthenticationClient;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService;->startAuthentication(Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIJZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "this$0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # J
    .param p5, "$anonymous2"    # Landroid/os/IBinder;
    .param p6, "$anonymous3"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p7, "$anonymous4"    # I
    .param p8, "$anonymous5"    # I
    .param p9, "$anonymous6"    # J
    .param p11, "$anonymous7"    # Z
    .param p12, "$anonymous8"    # Ljava/lang/String;
    .param p13, "$anonymous9"    # Landroid/os/Bundle;

    .prologue
    .line 1212
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    move-object v0, p0

    move-object v1, p2

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-wide/from16 v8, p9

    move/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    invoke-direct/range {v0 .. v12}, Lcom/android/server/fingerprint/AuthenticationClient;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIJZLjava/lang/String;Landroid/os/Bundle;)V

    .line 1213
    return-void
.end method


# virtual methods
.method public clientDied(Lcom/android/server/fingerprint/ClientMonitor;)V
    .locals 1
    .param p1, "client"    # Lcom/android/server/fingerprint/ClientMonitor;

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/fingerprint/FingerprintService;->-wrap8(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 1256
    return-void
.end method

.method public getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;
    .locals 1

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    return-object v0
.end method

.method public handleFailedAttempt()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1223
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService$11;->hasPrivilegedAttr(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1224
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get2(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->-set2(Lcom/android/server/fingerprint/FingerprintService;I)I

    .line 1225
    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleFailedAttempt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->-get2(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-wrap1(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1228
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-wrap15(Lcom/android/server/fingerprint/FingerprintService;)V

    .line 1229
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService$11;->onError(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1230
    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "Cannot send lockout message to client"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    :goto_0
    return v3

    .line 1232
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/fingerprint/FingerprintService$11;->misDone:Z

    goto :goto_0

    .line 1237
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/fingerprint/FingerprintService;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1216
    return-void
.end method

.method public notifyUserActivity()V
    .locals 1

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-wrap22(Lcom/android/server/fingerprint/FingerprintService;)V

    .line 1246
    return-void
.end method

.method public resetFailedAttempts()V
    .locals 1

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-wrap14(Lcom/android/server/fingerprint/FingerprintService;)V

    .line 1241
    return-void
.end method

.method public sendBroadcast(Ljava/lang/String;II)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "fingerId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/fingerprint/FingerprintService;->-wrap17(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;II)V

    .line 1261
    return-void
.end method
