.class public Lcom/samsung/android/support/sesl/core/widget/SeslAdapterViewReflector;
.super Ljava/lang/Object;
.source "SeslAdapterViewReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/widget/SeslAdapterViewReflector$BaseAdapterViewReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/widget/SeslAdapterViewReflector$AdapterViewReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslAdapterViewReflector$AdapterViewReflectorImpl;

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
    .line 12
    const-class v0, Landroid/widget/AdapterView;

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslAdapterViewReflector;->mClass:Ljava/lang/Class;

    .line 57
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslAdapterViewReflector$BaseAdapterViewReflectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslAdapterViewReflector$BaseAdapterViewReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslAdapterViewReflector$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslAdapterViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslAdapterViewReflector$AdapterViewReflectorImpl;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslAdapterViewReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getField_mSelectedPosition(Landroid/widget/AdapterView;)I
    .locals 1
    .param p0, "adapterView"    # Landroid/widget/AdapterView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 69
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslAdapterViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslAdapterViewReflector$AdapterViewReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslAdapterViewReflector$AdapterViewReflectorImpl;->getField_mSelectedPosition(Landroid/widget/AdapterView;)I

    move-result v0

    return v0
.end method

.method public static setNextSelectedPositionInt(Landroid/widget/AdapterView;I)V
    .locals 1
    .param p0, "adapterView"    # Landroid/widget/AdapterView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "position"    # I

    .prologue
    .line 94
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslAdapterViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslAdapterViewReflector$AdapterViewReflectorImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslAdapterViewReflector$AdapterViewReflectorImpl;->setNextSelectedPositionInt(Landroid/widget/AdapterView;I)V

    .line 95
    return-void
.end method

.method public static setSelectedPositionInt(Landroid/widget/AdapterView;I)V
    .locals 1
    .param p0, "adapterView"    # Landroid/widget/AdapterView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "position"    # I

    .prologue
    .line 81
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslAdapterViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslAdapterViewReflector$AdapterViewReflectorImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslAdapterViewReflector$AdapterViewReflectorImpl;->setSelectedPositionInt(Landroid/widget/AdapterView;I)V

    .line 82
    return-void
.end method
