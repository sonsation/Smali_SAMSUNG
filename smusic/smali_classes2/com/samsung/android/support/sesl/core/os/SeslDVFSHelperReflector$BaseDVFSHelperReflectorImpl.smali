.class Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector$BaseDVFSHelperReflectorImpl;
.super Ljava/lang/Object;
.source "SeslDVFSHelperReflector.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector$DVFSHelperReflectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseDVFSHelperReflectorImpl"
.end annotation


# static fields
.field protected static mClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "android.os.DVFSHelper"

    sput-object v0, Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector$BaseDVFSHelperReflectorImpl;->mClassName:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public onScrollEvent(Z)V
    .locals 7
    .param p1, "isScroll"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 38
    sget-object v1, Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector$BaseDVFSHelperReflectorImpl;->mClassName:Ljava/lang/String;

    const-string v2, "onScrollEvent"

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 39
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 40
    const/4 v1, 0x0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v0, v2}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_0
    return-void
.end method

.method public onSmoothScrollEvent(Z)Ljava/lang/reflect/Method;
    .locals 7
    .param p1, "isScroll"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 29
    sget-object v1, Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector$BaseDVFSHelperReflectorImpl;->mClassName:Ljava/lang/String;

    const-string v2, "onSmoothScrollEvent"

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 30
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 31
    const/4 v1, 0x0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v0, v2}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_0
    return-object v0
.end method
