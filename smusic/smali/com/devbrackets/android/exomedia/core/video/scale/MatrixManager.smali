.class public Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;
.super Ljava/lang/Object;
.source "MatrixManager.java"


# instance fields
.field protected currentRotation:I
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
        to = 0x167L
    .end annotation
.end field

.field protected currentScaleType:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected intrinsicVideoSize:Landroid/graphics/Point;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected requestedModificationView:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/TextureView;",
            ">;"
        }
    .end annotation
.end field

.field protected requestedRotation:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected requestedScaleType:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    .line 18
    iput v1, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->currentRotation:I

    .line 20
    sget-object v0, Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;->FIT_CENTER:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->currentScaleType:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    .line 23
    iput-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedRotation:Ljava/lang/Integer;

    .line 25
    iput-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedScaleType:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedModificationView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected applyCenter(Landroid/view/TextureView;)V
    .locals 4
    .param p1, "view"    # Landroid/view/TextureView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 132
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 133
    .local v0, "xScale":F
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 135
    .local v1, "yScale":F
    invoke-virtual {p0, p1, v0, v1}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->setScale(Landroid/view/TextureView;FF)V

    .line 136
    return-void
.end method

.method protected applyCenterCrop(Landroid/view/TextureView;)V
    .locals 5
    .param p1, "view"    # Landroid/view/TextureView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 146
    .local v1, "xScale":F
    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 148
    .local v2, "yScale":F
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 149
    .local v0, "scale":F
    div-float v1, v0, v1

    .line 150
    div-float v2, v0, v2

    .line 152
    invoke-virtual {p0, p1, v1, v2}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->setScale(Landroid/view/TextureView;FF)V

    .line 153
    return-void
.end method

.method protected applyCenterInside(Landroid/view/TextureView;)V
    .locals 2
    .param p1, "view"    # Landroid/view/TextureView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 163
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 164
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->applyCenter(Landroid/view/TextureView;)V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->applyFitCenter(Landroid/view/TextureView;)V

    goto :goto_0
.end method

.method protected applyFitCenter(Landroid/view/TextureView;)V
    .locals 5
    .param p1, "view"    # Landroid/view/TextureView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 178
    .local v1, "xScale":F
    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 180
    .local v2, "yScale":F
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 181
    .local v0, "scale":F
    div-float v1, v0, v1

    .line 182
    div-float v2, v0, v2

    .line 183
    invoke-virtual {p0, p1, v1, v2}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->setScale(Landroid/view/TextureView;FF)V

    .line 184
    return-void
.end method

.method protected applyRequestedModifications()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 211
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedModificationView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    .line 213
    .local v0, "view":Landroid/view/TextureView;
    if-eqz v0, :cond_1

    .line 214
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedRotation:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedRotation:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->rotate(Landroid/view/TextureView;I)V

    .line 216
    iput-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedRotation:Ljava/lang/Integer;

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedScaleType:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedScaleType:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    invoke-virtual {p0, v0, v1}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->scale(Landroid/view/TextureView;Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;)Z

    .line 221
    iput-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedScaleType:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    .line 225
    :cond_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedModificationView:Ljava/lang/ref/WeakReference;

    .line 226
    return-void
.end method

.method public getCurrentScaleType()Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedScaleType:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedScaleType:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->currentScaleType:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    goto :goto_0
.end method

.method public ready()Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public rotate(Landroid/view/TextureView;I)V
    .locals 6
    .param p1, "view"    # Landroid/view/TextureView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "rotation"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x167L
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 60
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->ready()Z

    move-result v5

    if-nez v5, :cond_0

    .line 61
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedRotation:Ljava/lang/Integer;

    .line 62
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedModificationView:Ljava/lang/ref/WeakReference;

    .line 81
    :goto_0
    return-void

    .line 66
    :cond_0
    div-int/lit8 v5, p2, 0x5a

    rem-int/lit8 v5, v5, 0x2

    if-ne v5, v3, :cond_2

    move v1, v3

    .line 67
    .local v1, "swapWidthHeight":Z
    :goto_1
    iget v5, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->currentRotation:I

    div-int/lit8 v5, v5, 0x5a

    rem-int/lit8 v5, v5, 0x2

    if-ne v5, v3, :cond_3

    move v0, v3

    .line 70
    .local v0, "currentWidthHeightSwapped":Z
    :goto_2
    if-eq v1, v0, :cond_1

    .line 71
    iget-object v3, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v2, v3, Landroid/graphics/Point;->x:I

    .line 72
    .local v2, "tempX":I
    iget-object v3, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 73
    iget-object v3, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iput v2, v3, Landroid/graphics/Point;->y:I

    .line 76
    iget-object v3, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->currentScaleType:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    invoke-virtual {p0, p1, v3}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->scale(Landroid/view/TextureView;Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;)Z

    .line 79
    .end local v2    # "tempX":I
    :cond_1
    iput p2, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->currentRotation:I

    .line 80
    int-to-float v3, p2

    invoke-virtual {p1, v3}, Landroid/view/TextureView;->setRotation(F)V

    goto :goto_0

    .end local v0    # "currentWidthHeightSwapped":Z
    .end local v1    # "swapWidthHeight":Z
    :cond_2
    move v1, v4

    .line 66
    goto :goto_1

    .restart local v1    # "swapWidthHeight":Z
    :cond_3
    move v0, v4

    .line 67
    goto :goto_2
.end method

.method public scale(Landroid/view/TextureView;Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/TextureView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "scaleType"    # Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 91
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->ready()Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    iput-object p2, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedScaleType:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    .line 93
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedModificationView:Ljava/lang/ref/WeakReference;

    .line 121
    :goto_0
    return v0

    .line 97
    :cond_0
    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    if-nez v1, :cond_2

    .line 98
    :cond_1
    const-string v1, "MatrixManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to apply scale with a view size of ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :cond_2
    iput-object p2, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->currentScaleType:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    .line 103
    sget-object v0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager$1;->$SwitchMap$com$devbrackets$android$exomedia$core$video$scale$ScaleType:[I

    invoke-virtual {p2}, Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 121
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 105
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->applyCenter(Landroid/view/TextureView;)V

    goto :goto_1

    .line 108
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->applyCenterCrop(Landroid/view/TextureView;)V

    goto :goto_1

    .line 111
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->applyCenterInside(Landroid/view/TextureView;)V

    goto :goto_1

    .line 114
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->applyFitCenter(Landroid/view/TextureView;)V

    goto :goto_1

    .line 117
    :pswitch_4
    invoke-virtual {p0, p1, v2, v2}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->setScale(Landroid/view/TextureView;FF)V

    goto :goto_1

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setIntrinsicVideoSize(II)V
    .locals 3
    .param p1, "width"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2, "height"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 40
    iget v1, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->currentRotation:I

    div-int/lit8 v1, v1, 0x5a

    rem-int/lit8 v1, v1, 0x2

    if-ne v1, v0, :cond_1

    .line 41
    .local v0, "currentWidthHeightSwapped":Z
    :goto_0
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    if-eqz v0, :cond_2

    move v1, p2

    :goto_1
    iput v1, v2, Landroid/graphics/Point;->x:I

    .line 42
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    if-eqz v0, :cond_3

    .end local p1    # "width":I
    :goto_2
    iput p1, v1, Landroid/graphics/Point;->y:I

    .line 44
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->ready()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->applyRequestedModifications()V

    .line 47
    :cond_0
    return-void

    .line 40
    .end local v0    # "currentWidthHeightSwapped":Z
    .restart local p1    # "width":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "currentWidthHeightSwapped":Z
    :cond_2
    move v1, p1

    .line 41
    goto :goto_1

    :cond_3
    move p1, p2

    .line 42
    goto :goto_2
.end method

.method protected setScale(Landroid/view/TextureView;FF)V
    .locals 4
    .param p1, "view"    # Landroid/view/TextureView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "xScale"    # F
    .param p3, "yScale"    # F

    .prologue
    const/4 v0, 0x1

    .line 195
    iget v2, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->currentRotation:I

    div-int/lit8 v2, v2, 0x5a

    rem-int/lit8 v2, v2, 0x2

    if-ne v2, v0, :cond_1

    .line 196
    .local v0, "currentWidthHeightSwapped":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 197
    move v1, p2

    .line 198
    .local v1, "scaleTemp":F
    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float p2, v2, v3

    .line 199
    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float p3, v2, v3

    .line 202
    .end local v1    # "scaleTemp":F
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setScaleX(F)V

    .line 203
    invoke-virtual {p1, p3}, Landroid/view/TextureView;->setScaleY(F)V

    .line 204
    return-void

    .line 195
    .end local v0    # "currentWidthHeightSwapped":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
