.class public Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;
.super Ljava/lang/Object;
.source "GateConfigCompat.java"


# static fields
.field public static final ACTION_SCREEN_TEXT:Ljava/lang/String;

.field public static final EXTRA_SCREEN_TEXT:Ljava/lang/String;

.field public static final GATE_INTENT_ACTION:Ljava/lang/String;

.field public static final GATE_INTENT_EXTRA_ENABLED:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const-string v0, "com.sec.android.gate.LCDTEXT"

    :goto_0
    sput-object v0, Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;->ACTION_SCREEN_TEXT:Ljava/lang/String;

    .line 13
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    const-string v0, "ENABLED"

    :goto_1
    sput-object v0, Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;->EXTRA_SCREEN_TEXT:Ljava/lang/String;

    .line 17
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_2

    const-string v0, "com.sec.android.gate.GATE"

    :goto_2
    sput-object v0, Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;->GATE_INTENT_ACTION:Ljava/lang/String;

    .line 21
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_3

    const-string v0, "ENABLED"

    :goto_3
    sput-object v0, Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;->GATE_INTENT_EXTRA_ENABLED:Ljava/lang/String;

    return-void

    .line 9
    :cond_0
    const-string v0, "com.sec.android.gate.LCDTEXT"

    goto :goto_0

    .line 13
    :cond_1
    const-string v0, "ENABLED"

    goto :goto_1

    .line 17
    :cond_2
    const-string v0, "com.sec.android.gate.GATE"

    goto :goto_2

    .line 21
    :cond_3
    const-string v0, "ENABLED"

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGateEnabled()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v0

    .line 45
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/samsung/feature/GateConfigSdlCompat;->isGateEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public static isGateLcdtextEnabled()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateLcdtextEnabled()Z

    move-result v0

    .line 52
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/samsung/feature/GateConfigSdlCompat;->isGateLcdtextEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public static setGateEnabled(Z)V
    .locals 1
    .param p0, "gateEnabled"    # Z

    .prologue
    .line 26
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 27
    invoke-static {p0}, Lcom/samsung/android/feature/SemGateConfig;->setGateEnabled(Z)V

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/feature/GateConfigSdlCompat;->setGateEnabled(Z)V

    goto :goto_0
.end method

.method public static setGateLcdtextEnabled(Z)V
    .locals 1
    .param p0, "lcdTextEnabled"    # Z

    .prologue
    .line 34
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-static {p0}, Lcom/samsung/android/feature/SemGateConfig;->setGateLcdtextEnabled(Z)V

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/feature/GateConfigSdlCompat;->setGateLcdtextEnabled(Z)V

    goto :goto_0
.end method
