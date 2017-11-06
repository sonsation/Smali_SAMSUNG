.class public Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;
.super Ljava/lang/Object;
.source "SeslViewGroupReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$Api24ViewGroupReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$BaseViewGroupReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$ViewGroupReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$ViewGroupReflectorImpl;

.field private static final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    const-class v0, Landroid/view/ViewGroup;

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->mClass:Ljava/lang/Class;

    .line 193
    invoke-static {}, Lcom/samsung/android/support/sesl/core/os/SeslBuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$Api24ViewGroupReflectorImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$Api24ViewGroupReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$ViewGroupReflectorImpl;

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$BaseViewGroupReflectorImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$BaseViewGroupReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$ViewGroupReflectorImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getField_FLAG_DISALLOW_INTERCEPT()I
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$ViewGroupReflectorImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$ViewGroupReflectorImpl;->getField_FLAG_DISALLOW_INTERCEPT()I

    move-result v0

    return v0
.end method

.method public static getField_mChildren(Landroid/view/ViewGroup;)[Landroid/view/View;
    .locals 1
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 285
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$ViewGroupReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$ViewGroupReflectorImpl;->getField_mChildren(Landroid/view/ViewGroup;)[Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static getField_mChildrenCount(Landroid/view/ViewGroup;)I
    .locals 1
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 277
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$ViewGroupReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$ViewGroupReflectorImpl;->getField_mChildrenCount(Landroid/view/ViewGroup;)I

    move-result v0

    return v0
.end method

.method public static getField_mGroupFlags(Landroid/view/ViewGroup;)I
    .locals 1
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 216
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$ViewGroupReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$ViewGroupReflectorImpl;->getField_mGroupFlags(Landroid/view/ViewGroup;)I

    move-result v0

    return v0
.end method

.method public static resolvePadding(Landroid/view/ViewGroup;)V
    .locals 1
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 235
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$ViewGroupReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$ViewGroupReflectorImpl;->resolvePadding(Landroid/view/ViewGroup;)V

    .line 236
    return-void
.end method

.method public static semOffsetChildrenLeftAndRight(Landroid/view/ViewGroup;I)V
    .locals 1
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "offset"    # I

    .prologue
    .line 255
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$ViewGroupReflectorImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$ViewGroupReflectorImpl;->semOffsetChildrenLeftAndRight(Landroid/view/ViewGroup;I)V

    .line 256
    return-void
.end method

.method public static semOffsetChildrenTopAndBottom(Landroid/view/ViewGroup;I)V
    .locals 1
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "offset"    # I

    .prologue
    .line 245
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$ViewGroupReflectorImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$ViewGroupReflectorImpl;->semOffsetChildrenTopAndBottom(Landroid/view/ViewGroup;I)V

    .line 246
    return-void
.end method

.method public static setField_mGroupFlags(Landroid/view/ViewGroup;I)V
    .locals 1
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "flags"    # I

    .prologue
    .line 226
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$ViewGroupReflectorImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$ViewGroupReflectorImpl;->setField_mGroupFlags(Landroid/view/ViewGroup;I)V

    .line 227
    return-void
.end method

.method public static transformPointToViewLocal(Landroid/view/ViewGroup;[FLandroid/view/View;)V
    .locals 1
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "point"    # [F
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 266
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$ViewGroupReflectorImpl;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$ViewGroupReflectorImpl;->transformPointToViewLocal(Landroid/view/ViewGroup;[FLandroid/view/View;)V

    .line 267
    return-void
.end method
