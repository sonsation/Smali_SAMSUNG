.class final Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue$1;
.super Ljava/lang/Object;
.source "ExternalMethodQueue.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue;->flushExternalMethodQueue(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;
    .param p2, "rhs"    # Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;->getRequestTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;->getRequestTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 67
    check-cast p1, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;

    check-cast p2, Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/remoteconfiguration/ExternalMethodQueue$1;->compare(Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;Lcom/android/launcher3/remoteconfiguration/ExternalMethodInfo;)I

    move-result v0

    return v0
.end method
