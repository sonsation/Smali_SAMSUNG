.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/DebugTspUtils;
.super Ljava/lang/Object;
.source "DebugTspUtils.java"


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final TSP_ERROR_LIMIT:I = 0x3e8

.field private static final TSP_WARNING_LIMIT:I = 0xc8


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static printTspLog(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "takenTime"    # J
    .param p3, "methodName"    # Ljava/lang/String;

    .prologue
    .line 19
    const-string v0, ""

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/DebugTspUtils;->printTspLog(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static printTspLog(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "takenTime"    # J
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "extra"    # Ljava/lang/String;

    .prologue
    .line 23
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "TSP %10d ms | %-25s | %-20s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 24
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "log":Ljava/lang/String;
    const-wide/16 v2, 0x3e8

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 27
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :goto_0
    return-void

    .line 28
    :cond_0
    const-wide/16 v2, 0xc8

    cmp-long v1, p1, v2

    if-lez v1, :cond_1

    .line 29
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 31
    :cond_1
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
