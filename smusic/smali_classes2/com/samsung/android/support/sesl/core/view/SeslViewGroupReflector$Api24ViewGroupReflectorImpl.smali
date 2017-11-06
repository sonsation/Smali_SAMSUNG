.class Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$Api24ViewGroupReflectorImpl;
.super Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$BaseViewGroupReflectorImpl;
.source "SeslViewGroupReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api24ViewGroupReflectorImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$BaseViewGroupReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$1;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$Api24ViewGroupReflectorImpl;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 164
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->access$000()Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "semOffsetChildrenLeftAndRight"

    new-array v9, v12, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v11

    invoke-static {v7, v8, v9}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 165
    .local v4, "method":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_0

    .line 166
    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {p1, v4, v7}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$Api24ViewGroupReflectorImpl;->getField_mChildrenCount(Landroid/view/ViewGroup;)I

    move-result v1

    .line 169
    .local v1, "count":I
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$Api24ViewGroupReflectorImpl;->getField_mChildren(Landroid/view/ViewGroup;)[Landroid/view/View;

    move-result-object v0

    .line 170
    .local v0, "children":[Landroid/view/View;
    const/4 v3, 0x0

    .line 172
    .local v3, "invalidate":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 173
    aget-object v6, v0, v2

    .line 174
    .local v6, "v":Landroid/view/View;
    invoke-static {v6, p2}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->setField_mLeft(Landroid/view/View;I)V

    .line 175
    invoke-static {v6, p2}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->setField_mRight(Landroid/view/View;I)V

    .line 176
    invoke-static {v6}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->getField_mRenderNode(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v5

    .line 177
    .local v5, "object":Ljava/lang/Object;
    if-eqz v5, :cond_1

    .line 178
    const/4 v3, 0x1

    .line 179
    invoke-static {v5, p2}, Lcom/samsung/android/support/sesl/core/view/SeslRenderNodeReflector;->offsetLeftAndRight(Ljava/lang/Object;I)Z

    .line 172
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 183
    .end local v5    # "object":Ljava/lang/Object;
    .end local v6    # "v":Landroid/view/View;
    :cond_2
    if-eqz v3, :cond_3

    .line 184
    invoke-static {p1, v11, v11}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->invalidateViewProperty(Landroid/view/View;ZZ)V

    .line 186
    :cond_3
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->notifySubtreeAccessibilityStateChangedIfNeeded(Landroid/view/View;)V

    goto :goto_0
.end method

.method public semOffsetChildrenTopAndBottom(Landroid/view/ViewGroup;I)V
    .locals 8
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "offset"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 153
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->access$000()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "semOffsetChildrenTopAndBottom"

    new-array v4, v7, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 154
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 155
    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p1, v0, v2}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->access$000()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "offsetChildrenTopAndBottom"

    new-array v4, v7, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 158
    .local v1, "method2":Ljava/lang/reflect/Method;
    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p1, v1, v2}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
