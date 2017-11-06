.class Lcom/samsung/android/support/sesl/core/widget/SeslAbsListViewReflector$BaseAbsListViewReflectorImpl;
.super Ljava/lang/Object;
.source "SeslAbsListViewReflector.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/widget/SeslAbsListViewReflector$AbsListViewReflectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslAbsListViewReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseAbsListViewReflectorImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/core/widget/SeslAbsListViewReflector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/core/widget/SeslAbsListViewReflector$1;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslAbsListViewReflector$BaseAbsListViewReflectorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public positionSelector(Landroid/widget/AbsListView;ILandroid/view/View;)V
    .locals 8
    .param p1, "listView"    # Landroid/widget/AbsListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I
    .param p3, "sel"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 23
    invoke-static {}, Lcom/samsung/android/support/sesl/core/widget/SeslAbsListViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "positionSelector"

    new-array v3, v7, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    const-class v4, Landroid/view/View;

    aput-object v4, v3, v5

    .line 22
    invoke-static {v1, v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 24
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 26
    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object p3, v1, v5

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_0
    return-void
.end method
