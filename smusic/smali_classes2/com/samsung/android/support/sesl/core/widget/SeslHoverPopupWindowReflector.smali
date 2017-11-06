.class public Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector;
.super Ljava/lang/Object;
.source "SeslHoverPopupWindowReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$Api24HoverPopupWindowReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$BaseHoverPopupWindowReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$HoverPopupWindowReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$HoverPopupWindowReflectorImpl;

.field private static final TAG:Ljava/lang/String; = "SeslHoverPopupWindowRef"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    invoke-static {}, Lcom/samsung/android/support/sesl/core/os/SeslBuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$Api24HoverPopupWindowReflectorImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$Api24HoverPopupWindowReflectorImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$HoverPopupWindowReflectorImpl;

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$BaseHoverPopupWindowReflectorImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$BaseHoverPopupWindowReflectorImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$HoverPopupWindowReflectorImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getField_TYPE_NONE()I
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$HoverPopupWindowReflectorImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$HoverPopupWindowReflectorImpl;->getField_TYPE_NONE()I

    move-result v0

    return v0
.end method

.method public static getField_TYPE_TOOLTIP()I
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$HoverPopupWindowReflectorImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$HoverPopupWindowReflectorImpl;->getField_TYPE_TOOLTIP()I

    move-result v0

    return v0
.end method

.method public static getField_TYPE_USER_CUSTOM()I
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$HoverPopupWindowReflectorImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$HoverPopupWindowReflectorImpl;->getField_TYPE_USER_CUSTOM()I

    move-result v0

    return v0
.end method

.method public static setGravity(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "hoverPopupWindow"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "gravity"    # I

    .prologue
    .line 189
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$HoverPopupWindowReflectorImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$HoverPopupWindowReflectorImpl;->setGravity(Ljava/lang/Object;I)V

    .line 190
    return-void
.end method

.method public static setHoverDetectTime(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "hoverPopupWindow"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "ms"    # I

    .prologue
    .line 210
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$HoverPopupWindowReflectorImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$HoverPopupWindowReflectorImpl;->setHoverDetectTime(Ljava/lang/Object;I)V

    .line 211
    return-void
.end method

.method public static setHoveringPoint(Ljava/lang/Object;II)V
    .locals 1
    .param p0, "hoverPopupWindow"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 221
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$HoverPopupWindowReflectorImpl;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$HoverPopupWindowReflectorImpl;->setHoveringPoint(Ljava/lang/Object;II)V

    .line 222
    return-void
.end method

.method public static setOffset(Ljava/lang/Object;II)V
    .locals 1
    .param p0, "hoverPopupWindow"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 200
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$HoverPopupWindowReflectorImpl;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$HoverPopupWindowReflectorImpl;->setOffset(Ljava/lang/Object;II)V

    .line 201
    return-void
.end method

.method public static update(Ljava/lang/Object;)V
    .locals 1
    .param p0, "hoverPopupWindow"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 230
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$HoverPopupWindowReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$HoverPopupWindowReflectorImpl;->update(Ljava/lang/Object;)V

    .line 231
    return-void
.end method
