.class public Lcom/samsung/android/voip/SemVoipInterfaceManager;
.super Ljava/lang/Object;
.source "SemVoipInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/voip/SemVoipInterfaceManager$1;,
        Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;
    }
.end annotation


# static fields
.field public static final CALL_STATE_ACTIVE:I = 0x6

.field public static final CALL_STATE_ALERTING:I = 0x4

.field public static final CALL_STATE_DIALING:I = 0x3

.field public static final CALL_STATE_DISCONNECTED:I = 0x2

.field public static final CALL_STATE_HOLDING:I = 0x7

.field public static final CALL_STATE_IDLE:I = 0x1

.field public static final CALL_STATE_RINGING:I = 0x5

.field private static mListener:Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;

.field public static voipCallback:Landroid/os/IVoIPCallbackInterface$Stub;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mVoip:Landroid/os/IVoIPInterface;


# direct methods
.method static synthetic -get0()Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;
    .locals 1

    sget-object v0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mListener:Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 177
    new-instance v0, Lcom/samsung/android/voip/SemVoipInterfaceManager$1;

    invoke-direct {v0}, Lcom/samsung/android/voip/SemVoipInterfaceManager$1;-><init>()V

    sput-object v0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->voipCallback:Landroid/os/IVoIPCallbackInterface$Stub;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string/jumbo v0, "SemVoipInterfaceManager"

    iput-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->TAG:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "voip"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    .line 59
    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed to connect Voip Service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public createCallSession(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "voipPhoneNumber"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;

    .prologue
    .line 219
    sput-object p3, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mListener:Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;

    .line 220
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "voip"

    sget-object v4, Lcom/samsung/android/voip/SemVoipInterfaceManager;->voipCallback:Landroid/os/IVoIPCallbackInterface$Stub;

    invoke-interface {v1, v2, v3, p2, v4}, Landroid/os/IVoIPInterface;->createCallSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoIPCallbackInterface;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 223
    :catch_0
    move-exception v0

    .line 227
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public destroyCallSession(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 236
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/IVoIPInterface;->destroyCallSession(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 239
    :catch_0
    move-exception v0

    .line 243
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getCallCount(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 369
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 371
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/IVoIPInterface;->getVoIPCallCount(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 372
    :catch_0
    move-exception v0

    .line 376
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isVoipActivated()Z
    .locals 3

    .prologue
    .line 127
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    if-eqz v1, :cond_0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 130
    :catch_0
    move-exception v0

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to call isVoipActivated"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v1, 0x0

    return v1
.end method

.method public isVoipDialing()Z
    .locals 3

    .prologue
    .line 109
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    if-eqz v1, :cond_0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPDialing()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 112
    :catch_0
    move-exception v0

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to call isVoipDialing"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v1, 0x0

    return v1
.end method

.method public isVoipIdle()Z
    .locals 3

    .prologue
    .line 71
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    if-eqz v1, :cond_0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 74
    :catch_0
    move-exception v0

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to call isVoipIdle"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v1, 0x0

    return v1
.end method

.method public moveVoipToTop()Z
    .locals 3

    .prologue
    .line 90
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    if-eqz v1, :cond_0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->moveVoIPToTop()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 93
    :catch_0
    move-exception v0

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to call moveVoipToTop"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v1, 0x0

    return v1
.end method

.method public setAudioOutputToBluetoothDevice(Z)Z
    .locals 2
    .param p1, "bluetoothDevice"    # Z

    .prologue
    .line 270
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    if-eqz v1, :cond_0

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-interface {v1, p1}, Landroid/os/IVoIPInterface;->setBTUserWantsAudioOn(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 273
    :catch_0
    move-exception v0

    .line 277
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setCallCount(Landroid/content/Context;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "count"    # I

    .prologue
    .line 287
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/os/IVoIPInterface;->setVoIPCallCount(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 290
    :catch_0
    move-exception v0

    .line 294
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setCallState(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "state"    # I
    .param p3, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 322
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    .line 324
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 325
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/IVoIPInterface;->setVoIPIdle(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 326
    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 327
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Landroid/os/IVoIPInterface;->setVoIPDisconnected(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 328
    :cond_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    .line 329
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Landroid/os/IVoIPInterface;->setVoIPDialing(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 330
    :cond_2
    const/4 v1, 0x4

    if-ne p2, v1, :cond_3

    .line 331
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Landroid/os/IVoIPInterface;->setVoIPAlerting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 332
    :cond_3
    const/4 v1, 0x5

    if-ne p2, v1, :cond_4

    .line 333
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Landroid/os/IVoIPInterface;->setVoIPRinging(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 334
    :cond_4
    const/4 v1, 0x6

    if-ne p2, v1, :cond_5

    .line 335
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Landroid/os/IVoIPInterface;->setVoIPActive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 336
    :cond_5
    const/4 v1, 0x7

    if-ne p2, v1, :cond_6

    .line 337
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Landroid/os/IVoIPInterface;->setVoIPHolding(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 339
    :catch_0
    move-exception v0

    .line 343
    :cond_6
    const/4 v1, 0x0

    return v1
.end method

.method public setMissedCallInformation(Ljava/lang/String;J)Z
    .locals 8
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "date"    # J

    .prologue
    .line 253
    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    if-eqz v0, :cond_0

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v2, p1

    move-wide v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/os/IVoIPInterface;->notifyMissedCallforVoIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    const/4 v0, 0x1

    return v0

    .line 257
    :catch_0
    move-exception v6

    .line 261
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setUsingBluetoothDeviceInCall(Landroid/content/Context;Z)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "btEnable"    # Z

    .prologue
    .line 304
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 306
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/os/IVoIPInterface;->setUseBTInVoIP(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 307
    :catch_0
    move-exception v0

    .line 311
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setUsingHoldInCall(Landroid/content/Context;Z)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "holdEnable"    # Z

    .prologue
    .line 353
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 355
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/voip/SemVoipInterfaceManager;->mVoip:Landroid/os/IVoIPInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/os/IVoIPInterface;->setUseHoldInVoIP(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 356
    :catch_0
    move-exception v0

    .line 360
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
