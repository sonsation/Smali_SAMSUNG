.class public Lcom/samsung/android/rlc/util/RLCUtil;
.super Ljava/lang/Object;
.source "RLCUtil.java"


# static fields
.field public static final BLINK_INTERVAL:Ljava/lang/String; = "blinkInt"

.field public static final BLINK_MSG:Ljava/lang/String; = "blinkMsg"

.field public static final BLINK_PASS:Ljava/lang/String; = "blinkPass"

.field public static final BLINK_REQ:Ljava/lang/String; = "blinkReq"

.field public static final BLINK_TEL:Ljava/lang/String; = "blinkTel"

.field public static NODATA:I = 0x0

.field public static NOT_SUPPORTED:I = 0x0

.field public static PKG_VER:Ljava/lang/String; = null

.field public static RESET_ASKED:I = 0x0

.field public static final SIMCHANGE_REQ:Ljava/lang/String; = "simReq"

.field public static SUPPORTED:I

.field private static final TAG:Ljava/lang/String;

.field private static volatile rlcUtil:Lcom/samsung/android/rlc/util/RLCUtil;


# instance fields
.field private mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

.field private m_Sync:Ljava/lang/Object;

.field private mcontext:Landroid/content/Context;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/rlc/util/RLCUtil;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mcontext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/samsung/android/rlc/util/RLCUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/rlc/util/RLCUtil;->RESET_ASKED:I

    .line 22
    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/rlc/util/RLCUtil;->NODATA:I

    .line 23
    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/rlc/util/RLCUtil;->SUPPORTED:I

    .line 24
    const/4 v0, 0x4

    sput v0, Lcom/samsung/android/rlc/util/RLCUtil;->NOT_SUPPORTED:I

    .line 25
    const-string v0, "rmm_pkg_ver"

    sput-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->PKG_VER:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    .line 40
    iput-object p1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mcontext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->rlcUtil:Lcom/samsung/android/rlc/util/RLCUtil;

    if-nez v0, :cond_0

    .line 45
    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v1, "[getInstance]Create new instance"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/samsung/android/rlc/util/RLCUtil;

    invoke-direct {v0, p0}, Lcom/samsung/android/rlc/util/RLCUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->rlcUtil:Lcom/samsung/android/rlc/util/RLCUtil;

    .line 48
    :cond_0
    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->rlcUtil:Lcom/samsung/android/rlc/util/RLCUtil;

    return-object v0
.end method

.method private getSecureData()Lorg/json/JSONObject;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 294
    const/4 v2, 0x0

    .line 296
    .local v2, "result":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v6

    .line 297
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    .line 298
    const-string v4, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    .local v4, "savedData":Ljava/lang/String;
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getClientData()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 306
    :try_start_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 307
    sget-object v5, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v7, "[getSecureData]RLC Manager returns null"

    invoke-static {v5, v7}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    .line 308
    return-object v9

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v5, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RLC Manager throws exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v6

    .line 303
    return-object v9

    .line 312
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .local v3, "result":Lorg/json/JSONObject;
    monitor-exit v6

    .line 313
    .end local v2    # "result":Lorg/json/JSONObject;
    return-object v3

    .line 314
    .end local v3    # "result":Lorg/json/JSONObject;
    .restart local v2    # "result":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 315
    .local v1, "e":Lorg/json/JSONException;
    :try_start_5
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v6

    .line 319
    return-object v2

    .line 296
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v4    # "savedData":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private initRlcInstance()V
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    if-nez v0, :cond_0

    .line 53
    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v1, "[InitRlcInstance] Create new Instance"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mcontext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/rlc/util/RLCUtil$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/rlc/util/RLCUtil$1;-><init>(Lcom/samsung/android/rlc/util/RLCUtil;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;-><init>(Landroid/content/Context;Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;)V

    iput-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    .line 51
    :goto_0
    return-void

    .line 62
    :cond_0
    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v1, "[InitRlcInstance] Already Exist"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public backUpSecureData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 498
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[backUpSecureData]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    .line 501
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getClientData()Ljava/lang/String;
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->printStackTrace()V

    .line 505
    const/4 v1, 0x0

    return-object v1
.end method

.method public bindToLockListner()V
    .locals 3

    .prologue
    .line 453
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[bindToLockListner]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    .line 456
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->bindToLockScreen()V
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkRMMFunctions()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    .line 521
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->query()Ljava/lang/String;

    .line 522
    const-string v1, "bootTime"

    invoke-virtual {p0, v1}, Lcom/samsung/android/rlc/util/RLCUtil;->getStringInSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "bootTime":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[checkRMMFunctions] Boot time empty"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const/4 v1, 0x0

    return v1

    .line 527
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public clearSecureDataForRecheck()V
    .locals 6

    .prologue
    .line 130
    sget-object v3, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v4, "[resetSecureData]"

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v4, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v4

    .line 132
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getSecureData()Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 133
    .local v2, "result":Lorg/json/JSONObject;
    if-nez v2, :cond_0

    monitor-exit v4

    .line 134
    return-void

    .line 137
    :cond_0
    :try_start_1
    const-string v3, "RID"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string v3, "RLC_STATUS"

    const-string v5, "-1"

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    iget-object v3, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setClientData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v4

    .line 129
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :try_start_2
    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 131
    .end local v0    # "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    .end local v2    # "result":Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 140
    .restart local v2    # "result":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 141
    .local v1, "e":Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public completeBlink(Z[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .param p1, "resultSvr"    # Z
    .param p2, "passcode"    # [B
    .param p3, "token"    # [B
    .param p4, "notiMsg"    # Ljava/lang/String;
    .param p5, "phoneNum"    # Ljava/lang/String;
    .param p6, "requetor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 421
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[completeRlc operation]Token Size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    .line 423
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[completeBlinking]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->completeBlinking(Z[B[B)[B

    move-result-object v0

    .line 426
    .local v0, "result":[B
    sget-object v2, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[completeBlinking] Result : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_0

    array-length v1, v0

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-object v0

    .line 426
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public completeDestroy(Z[B)[B
    .locals 4
    .param p1, "resultSvr"    # Z
    .param p2, "sign"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 367
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[completeRlc operation]Sign Size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    .line 369
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[completeDestroy]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->completeDestroying(Z[B)[B

    move-result-object v0

    .line 372
    .local v0, "result":[B
    sget-object v2, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[completeDestroy] Result : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_0

    array-length v1, v0

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    return-object v0

    .line 372
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public completeLock(Z[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 8
    .param p1, "resultSvr"    # Z
    .param p2, "passcode"    # [B
    .param p3, "token"    # [B
    .param p4, "notiMsg"    # Ljava/lang/String;
    .param p5, "phoneNum"    # Ljava/lang/String;
    .param p6, "requetor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 411
    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[completeRlc operation]Token Size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    .line 413
    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v1, "[completeLocking]"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->completeLocking(Z[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    .line 416
    .local v7, "result":[B
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[completeRlc] Result : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v7, :cond_0

    array-length v0, v7

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    return-object v7

    .line 416
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public completeRlc(Z[BI[B)[B
    .locals 4
    .param p1, "resultSvr"    # Z
    .param p2, "token"    # [B
    .param p3, "command"    # I
    .param p4, "sign"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 389
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[completeRlc operation]Token Size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, "result":[B
    packed-switch p3, :pswitch_data_0

    .line 406
    .end local v0    # "result":[B
    :goto_0
    :pswitch_0
    sget-object v2, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[completeRlc] Result : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_0

    array-length v1, v0

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return-object v0

    .line 394
    .restart local v0    # "result":[B
    :pswitch_1
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[completeRegistering]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1, p2, p4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->completeRegistering(Z[B[B)[B

    move-result-object v0

    .local v0, "result":[B
    goto :goto_0

    .line 398
    .local v0, "result":[B
    :pswitch_2
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[completeUnlocking]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->completeUnlocking(Z[B)[B

    move-result-object v0

    .local v0, "result":[B
    goto :goto_0

    .line 402
    .local v0, "result":[B
    :pswitch_3
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[completeComplete]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->completeCompleting(Z[B)[B

    move-result-object v0

    .local v0, "result":[B
    goto :goto_0

    .line 406
    .end local v0    # "result":[B
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 392
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public completeUnlocking(Ljava/lang/String;)I
    .locals 5
    .param p1, "passcode"    # Ljava/lang/String;

    .prologue
    .line 377
    sget-object v2, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[completeUnlocking] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    .line 379
    const/4 v1, 0x0

    .line 381
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v2, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->completeUnlocking(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 385
    :goto_0
    return v1

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->printStackTrace()V

    goto :goto_0
.end method

.method public encryptData([B[B)[B
    .locals 2
    .param p1, "data"    # [B
    .param p2, "serverCert"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    .line 448
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->encryptData([B[B)[B

    move-result-object v0

    .line 449
    .local v0, "result":[B
    return-object v0
.end method

.method public getIMEI(I)[Ljava/lang/String;
    .locals 8
    .param p1, "slotCnt"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 169
    iget-object v4, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v4

    .line 170
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getSecureData()Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 174
    .local v2, "result":Lorg/json/JSONObject;
    if-nez v2, :cond_0

    monitor-exit v4

    .line 175
    return-object v7

    .line 178
    :cond_0
    :try_start_1
    const-string v3, "IMEI_1"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 179
    if-le p1, v6, :cond_1

    .line 180
    const-string v3, "IMEI_2"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    monitor-exit v4

    .line 181
    return-object v7

    :cond_1
    monitor-exit v4

    .line 184
    return-object v7

    .line 188
    :cond_2
    :try_start_2
    new-array v1, p1, [Ljava/lang/String;

    .line 189
    .local v1, "imeis":[Ljava/lang/String;
    const-string v3, "IMEI_1"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v1, v5

    .line 190
    if-le p1, v6, :cond_3

    .line 191
    const-string v3, "IMEI_2"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v1, v5

    .line 192
    sget-object v3, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dualsim device. get imei 2 from rmm area , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit v4

    .line 194
    return-object v1

    .line 195
    .end local v1    # "imeis":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    .line 199
    return-object v7

    .line 169
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "result":Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getRLCID()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 150
    iget-object v3, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v3

    .line 151
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getSecureData()Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 154
    .local v1, "result":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    :try_start_1
    const-string v2, "RID"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    monitor-exit v3

    .line 155
    return-object v6

    .line 158
    :cond_1
    :try_start_2
    sget-object v2, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getRLCID]RLC ID length : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "RID"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v2, "RID"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    .line 164
    return-object v6

    .line 150
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "result":Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getRLCStatus()Ljava/lang/String;
    .locals 5

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    .line 73
    const/4 v1, 0x0

    .line 75
    .local v1, "rlcStatus":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->query()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 80
    .end local v1    # "rlcStatus":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    .line 81
    sget-object v2, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v3, "[getRLCStatus]RLC Manager returns null"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    sget-object v2, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getRLCStatus] RLC Status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-object v1

    .line 76
    .restart local v1    # "rlcStatus":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getRegiStatus()I
    .locals 8

    .prologue
    .line 251
    const/4 v2, -0x1

    .line 252
    .local v2, "regiStatus":I
    iget-object v5, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v5

    .line 253
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getSecureData()Lorg/json/JSONObject;

    move-result-object v3

    .line 254
    .local v3, "result":Lorg/json/JSONObject;
    const-string v1, "-1"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    .local v1, "isRegistered":Ljava/lang/String;
    if-eqz v3, :cond_0

    :try_start_1
    const-string v4, "RLC_STATUS"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 257
    :cond_0
    const/4 v4, -0x1

    monitor-exit v5

    return v4

    .line 260
    :cond_1
    :try_start_2
    const-string v4, "RLC_STATUS"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 265
    :goto_0
    :try_start_3
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 266
    sget-object v4, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[isRegistration] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    .line 268
    return v2

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Lorg/json/JSONException;
    :try_start_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 252
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "isRegistered":Ljava/lang/String;
    .end local v3    # "result":Lorg/json/JSONObject;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public getStringInSecure(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "Key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 464
    iget-object v3, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v3

    .line 465
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getSecureData()Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 468
    .local v1, "result":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    monitor-exit v3

    .line 469
    return-object v4

    .line 471
    :cond_1
    :try_start_2
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    .line 476
    return-object v4

    .line 464
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "result":Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public isRMMEnable()Z
    .locals 4

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    .line 90
    const/4 v1, 0x0

    .line 92
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->query()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Locked"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 103
    :cond_1
    :goto_1
    return v1

    .line 92
    :cond_2
    const-string v3, "Blink"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Normal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->printStackTrace()V

    goto :goto_1
.end method

.method public isTargetDevice(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-static {p1}, Lcom/samsung/android/rlc/util/DeviceUtil;->getCISSalesCode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public prepareRlc([B[B[BI)[B
    .locals 4
    .param p1, "serverCert"    # [B
    .param p2, "nonceSvr"    # [B
    .param p3, "rlcId"    # [B
    .param p4, "command"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 333
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[prepareRlc operation]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, "result":[B
    packed-switch p4, :pswitch_data_0

    .line 362
    .end local v0    # "result":[B
    :goto_0
    sget-object v2, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[prepareRlc] Result : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_0

    array-length v1, v0

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-object v0

    .line 338
    .restart local v0    # "result":[B
    :pswitch_0
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[prepareRegistering]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->prepareRegistering([B[B[B)[B

    move-result-object v0

    .local v0, "result":[B
    goto :goto_0

    .line 342
    .local v0, "result":[B
    :pswitch_1
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[prepareLocking]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->prepareLocking([B[B[B)[B

    move-result-object v0

    .local v0, "result":[B
    goto :goto_0

    .line 346
    .local v0, "result":[B
    :pswitch_2
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[prepareUnlocking]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->prepareUnlocking([B[B[B)[B

    move-result-object v0

    .local v0, "result":[B
    goto :goto_0

    .line 350
    .local v0, "result":[B
    :pswitch_3
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[prepareComplete]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->prepareCompleting([B[B[B)[B

    move-result-object v0

    .local v0, "result":[B
    goto :goto_0

    .line 354
    .local v0, "result":[B
    :pswitch_4
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[prepareBlink]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->prepareBlinking([B[B[B)[B

    move-result-object v0

    .local v0, "result":[B
    goto :goto_0

    .line 358
    .local v0, "result":[B
    :pswitch_5
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[prepareDestroy]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->prepareDestroying([B[B[B)[B

    move-result-object v0

    .local v0, "result":[B
    goto :goto_0

    .line 362
    .end local v0    # "result":[B
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 336
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public query([B[B[B)[B
    .locals 4
    .param p1, "serverCert"    # [B
    .param p2, "nonceSvr"    # [B
    .param p3, "rlcId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    .line 433
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->query([B[B[B)[B

    move-result-object v0

    .line 434
    .local v0, "result":[B
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[query] :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    return-object v0
.end method

.method public resetSecureData()V
    .locals 6

    .prologue
    .line 107
    sget-object v3, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v4, "[resetSecureData]"

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v4, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v4

    .line 109
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getSecureData()Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 110
    .local v2, "result":Lorg/json/JSONObject;
    if-nez v2, :cond_0

    monitor-exit v4

    .line 111
    return-void

    .line 114
    :cond_0
    :try_start_1
    const-string v3, "RID"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v3, "RLC_STATUS"

    const-string v5, "-1"

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v3, "2rd"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string v3, "bootTime"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string v3, "3rd"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v3, "bootDate"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    iget-object v3, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setClientData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v4

    .line 106
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :try_start_2
    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 108
    .end local v0    # "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    .end local v2    # "result":Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 121
    .restart local v2    # "result":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 122
    .local v1, "e":Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public restoreSecureData(Ljava/lang/String;)Z
    .locals 4
    .param p1, "backUpData"    # Ljava/lang/String;

    .prologue
    .line 508
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[restoreSecureData] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setClientData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    const/4 v1, 0x1

    return v1

    .line 513
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->printStackTrace()V

    .line 516
    const/4 v1, 0x0

    return v1
.end method

.method public setIMEIs([Ljava/lang/String;)V
    .locals 7
    .param p1, "imeis"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 204
    iget-object v4, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v4

    .line 205
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getSecureData()Lorg/json/JSONObject;

    move-result-object v2

    .line 207
    .local v2, "result":Lorg/json/JSONObject;
    if-nez v2, :cond_0

    .line 208
    sget-object v3, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v5, "[setIMEIs]There is no data in secure area"

    invoke-static {v3, v5}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v2, Lorg/json/JSONObject;

    .end local v2    # "result":Lorg/json/JSONObject;
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .restart local v2    # "result":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    const-string v3, "IMEI_1"

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    array-length v3, p1

    if-le v3, v6, :cond_1

    .line 215
    const-string v3, "IMEI_2"

    const/4 v5, 0x1

    aget-object v5, p1, v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setClientData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v4

    .line 202
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 204
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "result":Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 218
    .restart local v2    # "result":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 219
    .local v1, "e":Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setRLCID(Ljava/lang/String;)V
    .locals 7
    .param p1, "rlcId"    # Ljava/lang/String;

    .prologue
    .line 228
    iget-object v4, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v4

    .line 229
    :try_start_0
    sget-object v3, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setRLCID] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getSecureData()Lorg/json/JSONObject;

    move-result-object v2

    .line 232
    .local v2, "result":Lorg/json/JSONObject;
    if-nez v2, :cond_0

    .line 233
    sget-object v3, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v5, "[setRLCID]There is no data in secure area"

    invoke-static {v3, v5}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    new-instance v2, Lorg/json/JSONObject;

    .end local v2    # "result":Lorg/json/JSONObject;
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    .restart local v2    # "result":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    const-string v3, "RID"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    sget-object v3, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setRLCID]RLC ID length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v3, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setClientData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v4

    .line 226
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 228
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "result":Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 241
    .restart local v2    # "result":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 242
    .local v1, "e":Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setRegiStatus(I)V
    .locals 7
    .param p1, "status"    # I

    .prologue
    .line 273
    iget-object v4, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v4

    .line 274
    :try_start_0
    sget-object v3, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setRegiStatus] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getSecureData()Lorg/json/JSONObject;

    move-result-object v2

    .line 277
    .local v2, "result":Lorg/json/JSONObject;
    if-nez v2, :cond_0

    .line 278
    sget-object v3, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v5, "[setRegiStatus]There is no data in secure area"

    invoke-static {v3, v5}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance v2, Lorg/json/JSONObject;

    .end local v2    # "result":Lorg/json/JSONObject;
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    .restart local v2    # "result":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    const-string v3, "RLC_STATUS"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 283
    iget-object v3, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setClientData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v4

    .line 271
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 273
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "result":Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 284
    .restart local v2    # "result":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 285
    .local v1, "e":Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setStringInSecure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 480
    iget-object v4, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v4

    .line 481
    :try_start_0
    sget-object v3, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setStringInSecure] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getSecureData()Lorg/json/JSONObject;

    move-result-object v2

    .line 484
    .local v2, "result":Lorg/json/JSONObject;
    if-nez v2, :cond_0

    .line 485
    new-instance v2, Lorg/json/JSONObject;

    .end local v2    # "result":Lorg/json/JSONObject;
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    .restart local v2    # "result":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 489
    iget-object v3, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setClientData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v4

    .line 479
    return-void

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 480
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "result":Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 490
    .restart local v2    # "result":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 491
    .local v1, "e":Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setTheftProtection()V
    .locals 3

    .prologue
    .line 323
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[setTheftProtection operation]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setRmmTargetDevice()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public unlockBlink(Ljava/lang/String;)I
    .locals 4
    .param p1, "passcode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    .line 440
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->completeUnlocking(Ljava/lang/String;)I

    move-result v0

    .line 441
    .local v0, "result":I
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[unlockBlink] Result :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    return v0
.end method
