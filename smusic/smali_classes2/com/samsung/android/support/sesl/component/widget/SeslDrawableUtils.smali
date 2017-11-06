.class public Lcom/samsung/android/support/sesl/component/widget/SeslDrawableUtils;
.super Ljava/lang/Object;
.source "SeslDrawableUtils.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final INSETS_NONE:Landroid/graphics/Rect;

.field private static final TAG:Ljava/lang/String; = "SeslDrawableUtils"

.field private static sInsetsClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslDrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    .line 49
    :try_start_0
    const-string v0, "android.graphics.Insets"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslDrawableUtils;->sInsetsClazz:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 8
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 121
    instance-of v4, p0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v4, :cond_1

    .line 123
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    .line 124
    .local v2, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    instance-of v4, v2, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v4, :cond_4

    move-object v1, v2

    .line 125
    check-cast v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 127
    .local v1, "containerState":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    invoke-virtual {v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v0, v5, v4

    .line 128
    .local v0, "child":Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 145
    .end local v0    # "child":Landroid/graphics/drawable/Drawable;
    .end local v1    # "containerState":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    .end local v2    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    return v3

    .line 127
    .restart local v0    # "child":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "containerState":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    .restart local v2    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "child":Landroid/graphics/drawable/Drawable;
    .end local v1    # "containerState":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    .end local v2    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    instance-of v3, p0, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapper;

    if-eqz v3, :cond_2

    .line 134
    check-cast p0, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapper;

    .line 136
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {p0}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 134
    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    goto :goto_1

    .line 137
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    instance-of v3, p0, Lcom/samsung/android/support/sesl/component/graphics/drawable/SeslDrawableWrapper;

    if-eqz v3, :cond_3

    .line 138
    check-cast p0, Lcom/samsung/android/support/sesl/component/graphics/drawable/SeslDrawableWrapper;

    .line 140
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/graphics/drawable/SeslDrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 138
    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    goto :goto_1

    .line 141
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    instance-of v3, p0, Landroid/graphics/drawable/ScaleDrawable;

    if-eqz v3, :cond_4

    .line 142
    check-cast p0, Landroid/graphics/drawable/ScaleDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    goto :goto_1

    .line 145
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    const/4 v3, 0x1

    goto :goto_1
.end method

.method static fixDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    instance-of v0, p0, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_0

    .line 112
    invoke-static {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDrawableUtils;->fixVectorDrawableTinting(Landroid/graphics/drawable/Drawable;)V

    .line 114
    :cond_0
    return-void
.end method

.method private static fixVectorDrawableTinting(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    .line 154
    .local v0, "originalState":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 156
    :cond_0
    sget-object v1, Lcom/samsung/android/support/sesl/component/widget/SeslThemeUtils;->CHECKED_STATE_SET:[I

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 162
    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 163
    return-void

    .line 159
    :cond_1
    sget-object v1, Lcom/samsung/android/support/sesl/component/widget/SeslThemeUtils;->EMPTY_STATE_SET:[I

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public static getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .locals 12
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    .line 62
    sget-object v5, Lcom/samsung/android/support/sesl/component/widget/SeslDrawableUtils;->sInsetsClazz:Ljava/lang/Class;

    if-eqz v5, :cond_1

    .line 66
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v7, "getOpticalInsets"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    .line 69
    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 70
    .local v2, "getOpticalInsetsMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 72
    .local v3, "insets":Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 74
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 76
    .local v4, "result":Landroid/graphics/Rect;
    sget-object v5, Lcom/samsung/android/support/sesl/component/widget/SeslDrawableUtils;->sInsetsClazz:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    array-length v9, v8

    move v7, v6

    :goto_0
    if-ge v7, v9, :cond_2

    aget-object v1, v8, v7

    .line 77
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v5, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 76
    :goto_2
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_0

    .line 77
    :sswitch_0
    const-string v11, "left"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v5, v6

    goto :goto_1

    :sswitch_1
    const-string/jumbo v11, "top"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v11, "right"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_3
    const-string v11, "bottom"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v5, 0x3

    goto :goto_1

    .line 79
    :pswitch_0
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 94
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "getOpticalInsetsMethod":Ljava/lang/reflect/Method;
    .end local v3    # "insets":Ljava/lang/Object;
    .end local v4    # "result":Landroid/graphics/Rect;
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "SeslDrawableUtils"

    const-string v6, "Couldn\'t obtain the optical insets. Ignoring."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v4, Lcom/samsung/android/support/sesl/component/widget/SeslDrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    :cond_2
    return-object v4

    .line 82
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    .restart local v2    # "getOpticalInsetsMethod":Ljava/lang/reflect/Method;
    .restart local v3    # "insets":Ljava/lang/Object;
    .restart local v4    # "result":Landroid/graphics/Rect;
    :pswitch_1
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 85
    :pswitch_2
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 88
    :pswitch_3
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 77
    :sswitch_data_0
    .sparse-switch
        -0x527265d5 -> :sswitch_3
        0x1c155 -> :sswitch_1
        0x32a007 -> :sswitch_0
        0x677c21c -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p0, "value"    # I
    .param p1, "defaultMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 166
    packed-switch p0, :pswitch_data_0

    .line 173
    .end local p1    # "defaultMode":Landroid/graphics/PorterDuff$Mode;
    :goto_0
    :pswitch_0
    return-object p1

    .line 167
    .restart local p1    # "defaultMode":Landroid/graphics/PorterDuff$Mode;
    :pswitch_1
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 168
    :pswitch_2
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 169
    :pswitch_3
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 170
    :pswitch_4
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 171
    :pswitch_5
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 172
    :pswitch_6
    const-string v0, "ADD"

    invoke-static {v0}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method