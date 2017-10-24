.class public Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatteryStatus"
.end annotation


# instance fields
.field private final BATTERY_HEALTH_OVERHEATLIMIT:I

.field private final BATTERY_ONLINE_FAST_WIRELESS_CHARGER:I

.field public final health:I

.field public final highVoltage:Z

.field public final level:I

.field public final maxChargingWattage:I

.field public final online:I

.field public final plugged:I

.field public final status:I


# direct methods
.method public constructor <init>(IIIIIIZ)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "level"    # I
    .param p3, "plugged"    # I
    .param p4, "health"    # I
    .param p5, "maxChargingWattage"    # I
    .param p6, "online"    # I
    .param p7, "highVoltage"    # Z

    .prologue
    .line 1531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1519
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->BATTERY_ONLINE_FAST_WIRELESS_CHARGER:I

    .line 1520
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->BATTERY_HEALTH_OVERHEATLIMIT:I

    .line 1534
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    .line 1535
    iput p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    .line 1536
    iput p3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    .line 1537
    iput p4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->health:I

    .line 1538
    iput p5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    .line 1540
    iput p6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->online:I

    .line 1541
    iput-boolean p7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->highVoltage:Z

    .line 1533
    return-void
.end method


# virtual methods
.method public final getChargeEnabled()Z
    .locals 2

    .prologue
    .line 1610
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1611
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->health:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1612
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->health:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 1615
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1613
    :cond_1
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->health:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1614
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->health:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 1617
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final getChargingSpeed(II)I
    .locals 2
    .param p1, "slowThreshold"    # I
    .param p2, "fastThreshold"    # I

    .prologue
    const/4 v0, 0x0

    .line 1579
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    if-gtz v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    .line 1580
    :cond_1
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    if-lt v1, p1, :cond_0

    .line 1581
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    if-le v0, p2, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 1582
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getChargingType()I
    .locals 2

    .prologue
    .line 1594
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->highVoltage:Z

    if-eqz v0, :cond_0

    .line 1595
    const/16 v0, 0xb

    return v0

    .line 1596
    :cond_0
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1597
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->online:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 1598
    const/16 v0, 0xd

    return v0

    .line 1600
    :cond_1
    const/16 v0, 0xc

    return v0

    .line 1602
    :cond_2
    const/16 v0, 0xa

    return v0
.end method

.method public isBatteryLow()Z
    .locals 2

    .prologue
    .line 1575
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCharged()Z
    .locals 2

    .prologue
    .line 1564
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPluggedIn()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1550
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    if-eq v1, v0, :cond_0

    .line 1551
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1550
    :cond_0
    :goto_0
    return v0

    .line 1552
    :cond_1
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
