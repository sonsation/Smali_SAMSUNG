.class public final Lcom/samsung/android/support/sesl/core/app/SeslAppOpsManagerCompat;
.super Ljava/lang/Object;
.source "SeslAppOpsManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/app/SeslAppOpsManagerCompat$AppOpsManager23;,
        Lcom/samsung/android/support/sesl/core/app/SeslAppOpsManagerCompat$AppOpsManagerImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Lcom/samsung/android/support/sesl/core/app/SeslAppOpsManagerCompat$AppOpsManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 70
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslAppOpsManagerCompat$AppOpsManager23;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/app/SeslAppOpsManagerCompat$AppOpsManager23;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/app/SeslAppOpsManagerCompat;->IMPL:Lcom/samsung/android/support/sesl/core/app/SeslAppOpsManagerCompat$AppOpsManagerImpl;

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslAppOpsManagerCompat$AppOpsManagerImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/app/SeslAppOpsManagerCompat$AppOpsManagerImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/app/SeslAppOpsManagerCompat;->IMPL:Lcom/samsung/android/support/sesl/core/app/SeslAppOpsManagerCompat$AppOpsManagerImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static noteOp(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "op"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 105
    sget-object v0, Lcom/samsung/android/support/sesl/core/app/SeslAppOpsManagerCompat;->IMPL:Lcom/samsung/android/support/sesl/core/app/SeslAppOpsManagerCompat$AppOpsManagerImpl;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslAppOpsManagerCompat$AppOpsManagerImpl;->noteOp(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static noteProxyOp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "op"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "proxiedPackageName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 126
    sget-object v0, Lcom/samsung/android/support/sesl/core/app/SeslAppOpsManagerCompat;->IMPL:Lcom/samsung/android/support/sesl/core/app/SeslAppOpsManagerCompat$AppOpsManagerImpl;

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslAppOpsManagerCompat$AppOpsManagerImpl;->noteProxyOp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static permissionToOp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "permission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 85
    sget-object v0, Lcom/samsung/android/support/sesl/core/app/SeslAppOpsManagerCompat;->IMPL:Lcom/samsung/android/support/sesl/core/app/SeslAppOpsManagerCompat$AppOpsManagerImpl;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/core/app/SeslAppOpsManagerCompat$AppOpsManagerImpl;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
