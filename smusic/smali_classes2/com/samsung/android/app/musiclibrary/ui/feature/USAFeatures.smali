.class public interface abstract Lcom/samsung/android/app/musiclibrary/ui/feature/USAFeatures;
.super Ljava/lang/Object;
.source "USAFeatures.java"


# static fields
.field public static final REGIONAL_USA_GATE_ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;->isGateEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/USAFeatures;->REGIONAL_USA_GATE_ENABLED:Z

    return-void
.end method
