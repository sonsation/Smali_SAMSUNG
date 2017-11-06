.class Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$Api24HoverPopupWindowReflectorImpl;
.super Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$BaseHoverPopupWindowReflectorImpl;
.source "SeslHoverPopupWindowReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api24HoverPopupWindowReflectorImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$BaseHoverPopupWindowReflectorImpl;-><init>()V

    .line 118
    const-string v0, "com.samsung.android.widget.SemHoverPopupWindow"

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$Api24HoverPopupWindowReflectorImpl;->mClassName:Ljava/lang/String;

    .line 119
    return-void
.end method


# virtual methods
.method public setGravity(Ljava/lang/Object;I)V
    .locals 5
    .param p1, "hoverPopupWindow"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "gravity"    # I

    .prologue
    const/4 v4, 0x0

    .line 123
    sget-object v1, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$Api24HoverPopupWindowReflectorImpl;->mClassName:Ljava/lang/String;

    const-string/jumbo v2, "setGravity"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 124
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 125
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_0
    return-void
.end method

.method public setOffset(Ljava/lang/Object;II)V
    .locals 8
    .param p1, "hoverPopupWindow"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 131
    sget-object v1, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$Api24HoverPopupWindowReflectorImpl;->mClassName:Ljava/lang/String;

    const-string/jumbo v2, "setOffset"

    new-array v3, v7, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 132
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 133
    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_0
    return-void
.end method

.method public update(Ljava/lang/Object;)V
    .locals 5
    .param p1, "hoverPopupWindow"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 139
    sget-object v1, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector$Api24HoverPopupWindowReflectorImpl;->mClassName:Ljava/lang/String;

    const-string/jumbo v2, "update"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 140
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 141
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_0
    return-void
.end method
