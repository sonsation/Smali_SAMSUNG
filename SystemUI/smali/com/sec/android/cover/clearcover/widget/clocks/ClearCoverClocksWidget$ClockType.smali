.class final enum Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;
.super Ljava/lang/Enum;
.source "ClearCoverClocksWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ClockType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;

.field public static final enum Dual:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;

.field public static final enum Single:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;

.field public static final enum SingleVertical:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;

    const-string/jumbo v1, "Single"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;->Single:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;

    new-instance v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;

    const-string/jumbo v1, "Dual"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;->Dual:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;

    new-instance v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;

    const-string/jumbo v1, "SingleVertical"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;->SingleVertical:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;

    sget-object v1, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;->Single:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;->Dual:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;->SingleVertical:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;->$VALUES:[Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;->$VALUES:[Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverClocksWidget$ClockType;

    return-object v0
.end method