.class public Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;
.super Ljava/lang/Object;
.source "SeslPointerIconReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$Api24PointerIconReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$BasePointerIconReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$PointerIconReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$PointerIconReflectorImpl;

.field private static final TAG:Ljava/lang/String; = "SeslPointerIconReflector"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 215
    invoke-static {}, Lcom/samsung/android/support/sesl/core/os/SeslBuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$Api24PointerIconReflectorImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$Api24PointerIconReflectorImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$PointerIconReflectorImpl;

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$BasePointerIconReflectorImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$BasePointerIconReflectorImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$PointerIconReflectorImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getField_HOVERING_PENSELECT_POINTER_01()I
    .locals 1

    .prologue
    .line 268
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$PointerIconReflectorImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$PointerIconReflectorImpl;->getField_HOVERING_PENSELECT_POINTER_01()I

    move-result v0

    return v0
.end method

.method public static getField_HOVERING_SCROLLICON_POINTER_01()I
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$PointerIconReflectorImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$PointerIconReflectorImpl;->getField_HOVERING_SCROLLICON_POINTER_01()I

    move-result v0

    return v0
.end method

.method public static getField_HOVERING_SCROLLICON_POINTER_03()I
    .locals 1

    .prologue
    .line 243
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$PointerIconReflectorImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$PointerIconReflectorImpl;->getField_HOVERING_SCROLLICON_POINTER_03()I

    move-result v0

    return v0
.end method

.method public static getField_HOVERING_SCROLLICON_POINTER_05()I
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$PointerIconReflectorImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$PointerIconReflectorImpl;->getField_HOVERING_SCROLLICON_POINTER_05()I

    move-result v0

    return v0
.end method

.method public static getField_HOVERING_SCROLLICON_POINTER_07()I
    .locals 1

    .prologue
    .line 259
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$PointerIconReflectorImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$PointerIconReflectorImpl;->getField_HOVERING_SCROLLICON_POINTER_07()I

    move-result v0

    return v0
.end method

.method public static getField_HOVERING_SPENICON_DEFAULT()I
    .locals 1

    .prologue
    .line 227
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$PointerIconReflectorImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$PointerIconReflectorImpl;->getField_HOVERING_SPENICON_DEFAULT()I

    move-result v0

    return v0
.end method

.method public static setHoveringSpenIcon(Landroid/view/MotionEvent;II)V
    .locals 1
    .param p0, "ev"    # Landroid/view/MotionEvent;
    .param p1, "iconType"    # I
    .param p2, "customIconId"    # I

    .prologue
    .line 277
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$PointerIconReflectorImpl;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$PointerIconReflectorImpl;->setHoveringSpenIcon(Landroid/view/MotionEvent;II)V

    .line 278
    return-void
.end method
