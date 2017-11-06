.class public Lcom/samsung/android/support/sesl/core/widget/SeslAbsListViewReflector;
.super Ljava/lang/Object;
.source "SeslAbsListViewReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/widget/SeslAbsListViewReflector$BaseAbsListViewReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/widget/SeslAbsListViewReflector$AbsListViewReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslAbsListViewReflector$AbsListViewReflectorImpl;

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
    const-class v0, Landroid/widget/AbsListView;

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslAbsListViewReflector;->mClass:Ljava/lang/Class;

    .line 33
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslAbsListViewReflector$BaseAbsListViewReflectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslAbsListViewReflector$BaseAbsListViewReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslAbsListViewReflector$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslAbsListViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslAbsListViewReflector$AbsListViewReflectorImpl;

    .line 34
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
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslAbsListViewReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static positionSelector(Landroid/widget/AbsListView;ILandroid/view/View;)V
    .locals 1
    .param p0, "listView"    # Landroid/widget/AbsListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    .line 44
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslAbsListViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslAbsListViewReflector$AbsListViewReflectorImpl;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslAbsListViewReflector$AbsListViewReflectorImpl;->positionSelector(Landroid/widget/AbsListView;ILandroid/view/View;)V

    .line 45
    return-void
.end method
