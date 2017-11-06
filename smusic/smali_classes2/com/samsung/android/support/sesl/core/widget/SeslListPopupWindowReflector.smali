.class public Lcom/samsung/android/support/sesl/core/widget/SeslListPopupWindowReflector;
.super Ljava/lang/Object;
.source "SeslListPopupWindowReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/widget/SeslListPopupWindowReflector$BaseListPopupWindowReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/widget/SeslListPopupWindowReflector$ListPopupWindowReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslListPopupWindowReflector$ListPopupWindowReflectorImpl;

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
    .line 13
    const-class v0, Landroid/widget/ListPopupWindow;

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslListPopupWindowReflector;->mClass:Ljava/lang/Class;

    .line 39
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslListPopupWindowReflector$BaseListPopupWindowReflectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslListPopupWindowReflector$BaseListPopupWindowReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslListPopupWindowReflector$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslListPopupWindowReflector;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslListPopupWindowReflector$ListPopupWindowReflectorImpl;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslListPopupWindowReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getField_mPopup(Landroid/widget/ListPopupWindow;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "popup"    # Landroid/widget/ListPopupWindow;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 49
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslListPopupWindowReflector;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslListPopupWindowReflector$ListPopupWindowReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslListPopupWindowReflector$ListPopupWindowReflectorImpl;->getField_mPopup(Landroid/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    return-object v0
.end method
