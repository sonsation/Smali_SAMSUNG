.class public Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/NormalMode;
.super Ljava/lang/Object;
.source "NormalMode.java"

# interfaces
.implements Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/FanMode;


# static fields
.field private static final TAG:Ljava/lang/String; = "NormalMode"


# instance fields
.field private mDexFanModeControl:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;

.field private mFanLevelTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;",
            "Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/NormalMode;->mFanLevelTable:Ljava/util/Map;

    iput-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/NormalMode;->mDexFanModeControl:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;

    iput-object p1, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/NormalMode;->mDexFanModeControl:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;

    return-void
.end method

.method private getFanLevelTable()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;",
            "Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/NormalMode;->mFanLevelTable:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/NormalMode;->mFanLevelTable:Ljava/util/Map;

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/NormalMode;->mFanLevelTable:Ljava/util/Map;

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->MINUS_3:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    sget-object v2, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;->STOP:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/NormalMode;->mFanLevelTable:Ljava/util/Map;

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->MINUS_2:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    sget-object v2, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;->STOP:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/NormalMode;->mFanLevelTable:Ljava/util/Map;

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->MINUS_1:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    sget-object v2, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;->WEAK:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/NormalMode;->mFanLevelTable:Ljava/util/Map;

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->ZERO:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    sget-object v2, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;->WEAK:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/NormalMode;->mFanLevelTable:Ljava/util/Map;

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->PLUS_1:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    sget-object v2, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;->STRONG:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/NormalMode;->mFanLevelTable:Ljava/util/Map;

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->PLUS_2:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    sget-object v2, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;->STRONG:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/NormalMode;->mFanLevelTable:Ljava/util/Map;

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->PLUS_3:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    sget-object v2, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;->STRONG:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/NormalMode;->mFanLevelTable:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public getCurrentFanLevel()Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;
    .locals 3

    const-string v0, "NormalMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/NormalMode;->mDexFanModeControl:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;

    invoke-interface {v2}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;->getSiopLevel()Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/NormalMode;->getFanLevelTable()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/NormalMode;->mDexFanModeControl:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;

    invoke-interface {v1}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;->getSiopLevel()Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    return-object v0
.end method

.method public onChangedDexMode(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/NormalMode;->mDexFanModeControl:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FanModeEnum;->NonDexMode:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FanModeEnum;

    invoke-interface {v0, v1}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;->setFanMode(Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FanModeEnum;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized onChangedFanHoldingRequestCount(I)V
    .locals 2

    monitor-enter p0

    if-lez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/NormalMode;->mDexFanModeControl:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FanModeEnum;->FanHoldingMode:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FanModeEnum;

    invoke-interface {v0, v1}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;->setFanMode(Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FanModeEnum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onChangedSystemRequestStatus(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/NormalMode;->mDexFanModeControl:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FanModeEnum;->SystemRequestMode:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FanModeEnum;

    invoke-interface {v0, v1}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;->setFanMode(Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FanModeEnum;)V

    :cond_0
    return-void
.end method

.method public onReceivedFanHoldingEvent(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/NormalMode;->mDexFanModeControl:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;

    invoke-interface {v0, p1}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;->addFanHoldingTimerTask(I)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/NormalMode;->mDexFanModeControl:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FanModeEnum;->FanHoldingMode:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FanModeEnum;

    invoke-interface {v0, v1}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;->setFanMode(Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FanModeEnum;)V

    return-void
.end method
