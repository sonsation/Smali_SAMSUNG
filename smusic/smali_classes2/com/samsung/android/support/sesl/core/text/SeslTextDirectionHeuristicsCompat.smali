.class public final Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat;
.super Ljava/lang/Object;
.source "SeslTextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;,
        Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$AnyStrong;,
        Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$FirstStrong;,
        Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionAlgorithm;,
        Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;,
        Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;
    }
.end annotation


# static fields
.field public static final ANYRTL_LTR:Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicCompat;

.field public static final FIRSTSTRONG_LTR:Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicCompat;

.field public static final FIRSTSTRONG_RTL:Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicCompat;

.field public static final LOCALE:Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicCompat;

.field public static final LTR:Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicCompat;

.field public static final RTL:Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicCompat;

.field private static final STATE_FALSE:I = 0x1

.field private static final STATE_TRUE:I = 0x0

.field private static final STATE_UNKNOWN:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat;->LTR:Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicCompat;

    .line 38
    new-instance v0, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat;->RTL:Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicCompat;

    .line 46
    new-instance v0, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    sget-object v1, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$FirstStrong;->INSTANCE:Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$FirstStrong;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicCompat;

    .line 54
    new-instance v0, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    sget-object v1, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$FirstStrong;->INSTANCE:Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$FirstStrong;

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicCompat;

    .line 61
    new-instance v0, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    sget-object v1, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$AnyStrong;->INSTANCE_RTL:Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$AnyStrong;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat;->ANYRTL_LTR:Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicCompat;

    .line 67
    sget-object v0, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;->INSTANCE:Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;

    sput-object v0, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat;->LOCALE:Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicCompat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isRtlText(I)I
    .locals 1
    .param p0, "directionality"    # I

    .prologue
    .line 78
    packed-switch p0, :pswitch_data_0

    .line 85
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 80
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 83
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static isRtlTextOrFormat(I)I
    .locals 1
    .param p0, "directionality"    # I

    .prologue
    .line 90
    sparse-switch p0, :sswitch_data_0

    .line 101
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 94
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 99
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_1
        0x11 -> :sswitch_1
    .end sparse-switch
.end method
