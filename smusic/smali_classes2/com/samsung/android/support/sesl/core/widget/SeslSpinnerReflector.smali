.class public Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector;
.super Ljava/lang/Object;
.source "SeslSpinnerReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector$Api24SpinnerReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector$BaseSpinnerReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector$SpinnerReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector$BaseSpinnerReflectorImpl;

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
    const-class v0, Landroid/widget/Spinner;

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector;->mClass:Ljava/lang/Class;

    .line 63
    invoke-static {}, Lcom/samsung/android/support/sesl/core/os/SeslBuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector$Api24SpinnerReflectorImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector$Api24SpinnerReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector$BaseSpinnerReflectorImpl;

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector$BaseSpinnerReflectorImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector$BaseSpinnerReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector$BaseSpinnerReflectorImpl;

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
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getField_mPopup(Landroid/widget/Spinner;)Landroid/widget/ListPopupWindow;
    .locals 1
    .param p0, "spinner"    # Landroid/widget/Spinner;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 77
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector$BaseSpinnerReflectorImpl;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector$BaseSpinnerReflectorImpl;->getField_mPopup(Landroid/widget/Spinner;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method public static semSetDropDownHeight(Landroid/widget/Spinner;I)V
    .locals 1
    .param p0, "spinner"    # Landroid/widget/Spinner;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "pixels"    # I

    .prologue
    .line 87
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector$BaseSpinnerReflectorImpl;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector$BaseSpinnerReflectorImpl;->semSetDropDownHeight(Landroid/widget/Spinner;I)V

    .line 88
    return-void
.end method
