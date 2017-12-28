.class public abstract Lcom/android/launcher3/common/compat/PackageInstallerCompat;
.super Ljava/lang/Object;
.source "PackageInstallerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/compat/PackageInstallerCompat$PackageInstallInfo;
    }
.end annotation


# static fields
.field public static final STATUS_FAILED:I = 0x2

.field public static final STATUS_INSTALLED:I = 0x0

.field public static final STATUS_INSTALLING:I = 0x1

.field private static sInstance:Lcom/android/launcher3/common/compat/PackageInstallerCompat;

.field private static final sInstanceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/compat/PackageInstallerCompat;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/PackageInstallerCompat;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    sget-object v1, Lcom/android/launcher3/common/compat/PackageInstallerCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/android/launcher3/common/compat/PackageInstallerCompat;->sInstance:Lcom/android/launcher3/common/compat/PackageInstallerCompat;

    if-nez v0, :cond_0

    .line 37
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v0, :cond_1

    .line 38
    new-instance v0, Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/compat/PackageInstallerCompatVL;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/common/compat/PackageInstallerCompat;->sInstance:Lcom/android/launcher3/common/compat/PackageInstallerCompat;

    .line 43
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/launcher3/common/compat/PackageInstallerCompat;->sInstance:Lcom/android/launcher3/common/compat/PackageInstallerCompat;

    monitor-exit v1

    return-object v0

    .line 40
    :cond_1
    new-instance v0, Lcom/android/launcher3/common/compat/PackageInstallerCompatV16;

    invoke-direct {v0}, Lcom/android/launcher3/common/compat/PackageInstallerCompatV16;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/compat/PackageInstallerCompat;->sInstance:Lcom/android/launcher3/common/compat/PackageInstallerCompat;

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public abstract addAllSessionInfoToCache()V
.end method

.method public abstract isSessionInfoItem(Ljava/lang/String;)Z
.end method

.method public abstract onStop()V
.end method

.method public abstract updateAndGetActiveSessionCache()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
