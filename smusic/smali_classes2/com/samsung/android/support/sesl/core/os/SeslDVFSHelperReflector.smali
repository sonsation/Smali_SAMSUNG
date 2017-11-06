.class public Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector;
.super Ljava/lang/Object;
.source "SeslDVFSHelperReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector$Api24DVFSHelperReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector$BaseDVFSHelperReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector$DVFSHelperReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector$BaseDVFSHelperReflectorImpl;

.field private static final TAG:Ljava/lang/String; = "SeslDVFSHelperReflector"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/samsung/android/support/sesl/core/os/SeslBuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector$Api24DVFSHelperReflectorImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector$Api24DVFSHelperReflectorImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector;->IMPL:Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector$BaseDVFSHelperReflectorImpl;

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector$BaseDVFSHelperReflectorImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector$BaseDVFSHelperReflectorImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector;->IMPL:Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector$BaseDVFSHelperReflectorImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onScrollEvent(Z)V
    .locals 1
    .param p0, "isScroll"    # Z

    .prologue
    .line 96
    sget-object v0, Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector;->IMPL:Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector$BaseDVFSHelperReflectorImpl;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector$BaseDVFSHelperReflectorImpl;->onScrollEvent(Z)V

    .line 97
    return-void
.end method

.method public static onSmoothScrollEvent(Z)Ljava/lang/reflect/Method;
    .locals 2
    .param p0, "isScroll"    # Z

    .prologue
    .line 86
    sget-object v1, Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector;->IMPL:Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector$BaseDVFSHelperReflectorImpl;

    invoke-virtual {v1, p0}, Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector$BaseDVFSHelperReflectorImpl;->onSmoothScrollEvent(Z)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 87
    .local v0, "method":Ljava/lang/reflect/Method;
    return-object v0
.end method
