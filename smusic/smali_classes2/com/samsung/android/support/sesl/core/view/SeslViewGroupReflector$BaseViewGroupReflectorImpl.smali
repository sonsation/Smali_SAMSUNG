.class Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$BaseViewGroupReflectorImpl;
.super Ljava/lang/Object;
.source "SeslViewGroupReflector.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$ViewGroupReflectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseViewGroupReflectorImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$1;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$BaseViewGroupReflectorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getField_FLAG_DISALLOW_INTERCEPT()I
    .locals 4

    .prologue
    .line 35
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->access$000()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "FLAG_DISALLOW_INTERCEPT"

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 36
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 37
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 38
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 39
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 40
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 43
    :goto_0
    return v2

    :cond_0
    const/high16 v2, 0x80000

    goto :goto_0
.end method

.method public getField_mChildren(Landroid/view/ViewGroup;)[Landroid/view/View;
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 135
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->access$000()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mChildren"

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 136
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 137
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 138
    invoke-static {p1, v0}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 139
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, [Landroid/view/View;

    if-eqz v2, :cond_0

    .line 140
    check-cast v1, [Landroid/view/View;

    .end local v1    # "object":Ljava/lang/Object;
    check-cast v1, [Landroid/view/View;

    .line 143
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getField_mChildrenCount(Landroid/view/ViewGroup;)I
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 122
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->access$000()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mChildrenCount"

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 123
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 124
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 125
    invoke-static {p1, v0}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 126
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 127
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 130
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getField_mGroupFlags(Landroid/view/ViewGroup;)I
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->access$000()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mGroupFlags"

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 49
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 50
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 51
    invoke-static {p1, v0}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 52
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 53
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 56
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public resolvePadding(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 70
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->access$000()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "resolvePadding"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 71
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 72
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    return-void
.end method

.method public semOffsetChildrenLeftAndRight(Landroid/view/ViewGroup;I)V
    .locals 13
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "offset"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 86
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->access$000()Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "twOffsetChildrenLeftAndRight"

    new-array v9, v12, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v11

    invoke-static {v7, v8, v9}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 87
    .local v4, "method":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_0

    .line 88
    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {p1, v4, v7}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$BaseViewGroupReflectorImpl;->getField_mChildrenCount(Landroid/view/ViewGroup;)I

    move-result v1

    .line 91
    .local v1, "count":I
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$BaseViewGroupReflectorImpl;->getField_mChildren(Landroid/view/ViewGroup;)[Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .line 94
    .local v3, "invalidate":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 95
    aget-object v6, v0, v2

    .line 96
    .local v6, "v":Landroid/view/View;
    invoke-static {v6, p2}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->setField_mLeft(Landroid/view/View;I)V

    .line 97
    invoke-static {v6, p2}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->setField_mRight(Landroid/view/View;I)V

    .line 98
    invoke-static {v6}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->getField_mRenderNode(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v5

    .line 99
    .local v5, "object":Ljava/lang/Object;
    if-eqz v5, :cond_1

    .line 100
    const/4 v3, 0x1

    .line 101
    invoke-static {v5, p2}, Lcom/samsung/android/support/sesl/core/view/SeslRenderNodeReflector;->offsetLeftAndRight(Ljava/lang/Object;I)Z

    .line 94
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 105
    .end local v5    # "object":Ljava/lang/Object;
    .end local v6    # "v":Landroid/view/View;
    :cond_2
    if-eqz v3, :cond_3

    .line 106
    invoke-static {p1, v11, v11}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->invalidateViewProperty(Landroid/view/View;ZZ)V

    .line 108
    :cond_3
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->notifySubtreeAccessibilityStateChangedIfNeeded(Landroid/view/View;)V

    goto :goto_0
.end method

.method public semOffsetChildrenTopAndBottom(Landroid/view/ViewGroup;I)V
    .locals 7
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "offset"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 78
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->access$000()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "offsetChildrenTopAndBottom"

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 79
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 80
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_0
    return-void
.end method

.method public setField_mGroupFlags(Landroid/view/ViewGroup;I)V
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "flags"    # I

    .prologue
    .line 61
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->access$000()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mGroupFlags"

    invoke-static {v1, v2}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 62
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 64
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->set(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 66
    :cond_0
    return-void
.end method

.method public transformPointToViewLocal(Landroid/view/ViewGroup;[FLandroid/view/View;)V
    .locals 8
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "point"    # [F
    .param p3, "child"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 114
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->access$000()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "transformPointToViewLocal"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, [F

    aput-object v4, v3, v5

    const-class v4, Landroid/view/View;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 115
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 116
    new-array v1, v7, [Ljava/lang/Object;

    aput-object p2, v1, v5

    aput-object p3, v1, v6

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_0
    return-void
.end method
