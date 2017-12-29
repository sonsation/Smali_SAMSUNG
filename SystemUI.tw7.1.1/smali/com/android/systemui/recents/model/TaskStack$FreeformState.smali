.class public Lcom/android/systemui/recents/model/TaskStack$FreeformState;
.super Ljava/lang/Object;
.source "TaskStack.java"

# interfaces
.implements Lcom/android/systemui/recents/views/DropTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/TaskStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FreeformState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;
    }
.end annotation


# static fields
.field public static final FREEFORM:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

.field public static final NONE:Lcom/android/systemui/recents/model/TaskStack$FreeformState;


# instance fields
.field private expandedTouchFreeformArea:Landroid/graphics/RectF;

.field private freeformArea:Landroid/graphics/RectF;

.field private freeform_area_overlay_height:F

.field private freeform_area_overlay_width:F

.field private freeform_expanded_area_overlay_height:F

.field private freeform_expanded_area_overlay_width:F

.field private touchArea:Landroid/graphics/RectF;

.field public final viewState:Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x50

    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    const/16 v1, 0xff

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/recents/model/TaskStack$FreeformState;-><init>(II)V

    sput-object v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->NONE:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/recents/model/TaskStack$FreeformState;-><init>(II)V

    sput-object v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->FREEFORM:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    return-void
.end method

.method constructor <init>(II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->touchArea:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeformArea:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->expandedTouchFreeformArea:Landroid/graphics/RectF;

    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;

    const v1, 0x7f0f054d

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;-><init>(IIILcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->viewState:Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;

    return-void
.end method


# virtual methods
.method public acceptsDrop(IIIILandroid/graphics/Rect;Z)Z
    .locals 6

    if-eqz p6, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->expandedTouchFreeformArea:Landroid/graphics/RectF;

    int-to-float v4, p1

    int-to-float v5, p2

    move-object v0, p0

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->areaContainsPoint(Landroid/graphics/RectF;IIFF)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->touchArea:Landroid/graphics/RectF;

    int-to-float v4, p1

    int-to-float v5, p2

    move-object v0, p0

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->areaContainsPoint(Landroid/graphics/RectF;IIFF)Z

    move-result v0

    goto :goto_0
.end method

.method public areaContainsPoint(Landroid/graphics/RectF;IIFF)Z
    .locals 7

    const/4 v4, 0x0

    iget v5, p1, Landroid/graphics/RectF;->left:F

    int-to-float v6, p2

    mul-float/2addr v5, v6

    float-to-int v1, v5

    iget v5, p1, Landroid/graphics/RectF;->top:F

    int-to-float v6, p3

    mul-float/2addr v5, v6

    float-to-int v3, v5

    iget v5, p1, Landroid/graphics/RectF;->right:F

    int-to-float v6, p2

    mul-float/2addr v5, v6

    float-to-int v2, v5

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, p3

    mul-float/2addr v5, v6

    float-to-int v0, v5

    int-to-float v5, v1

    cmpl-float v5, p4, v5

    if-ltz v5, :cond_0

    int-to-float v5, v3

    cmpl-float v5, p5, v5

    if-ltz v5, :cond_0

    int-to-float v5, v2

    cmpg-float v5, p4, v5

    if-gtz v5, :cond_0

    int-to-float v5, v0

    cmpg-float v5, p5, v5

    if-gtz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public getFreeformedBounds(II)Landroid/graphics/Rect;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    int-to-float v1, p1

    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->expandedTouchFreeformArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, p2

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->expandedTouchFreeformArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, p1

    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->expandedTouchFreeformArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v4, p2

    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->expandedTouchFreeformArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getPreFreeformedBounds(II)Landroid/graphics/Rect;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeformArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeformArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeformArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeformArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v5, p2

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public update(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->viewState:Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->update(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d039f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeform_area_overlay_width:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d03a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeform_area_overlay_height:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d03a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeform_expanded_area_overlay_width:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d03a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeform_expanded_area_overlay_height:F

    return-void
.end method

.method public updateFreeformArea(II)V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->isInMultiWindowMode:Z

    if-nez v5, :cond_0

    const v2, 0x3faa3d71    # 1.33f

    :cond_0
    int-to-float v5, p1

    iget v6, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeform_area_overlay_width:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    int-to-float v6, p1

    div-float v1, v5, v6

    int-to-float v5, p2

    iget v6, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeform_area_overlay_height:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v2

    int-to-float v6, p2

    div-float v4, v5, v6

    iget v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeform_area_overlay_width:F

    int-to-float v6, p1

    div-float/2addr v5, v6

    add-float v3, v1, v5

    iget v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeform_area_overlay_height:F

    int-to-float v6, p2

    div-float/2addr v5, v6

    add-float v0, v4, v5

    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->touchArea:Landroid/graphics/RectF;

    iput v1, v5, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->touchArea:Landroid/graphics/RectF;

    iput v4, v5, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->touchArea:Landroid/graphics/RectF;

    iput v3, v5, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->touchArea:Landroid/graphics/RectF;

    iput v0, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeformArea:Landroid/graphics/RectF;

    iput v1, v5, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeformArea:Landroid/graphics/RectF;

    iput v4, v5, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeformArea:Landroid/graphics/RectF;

    iput v3, v5, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeformArea:Landroid/graphics/RectF;

    iput v0, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->expandedTouchFreeformArea:Landroid/graphics/RectF;

    int-to-float v6, p1

    iget v7, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeform_expanded_area_overlay_width:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v8

    int-to-float v7, p1

    div-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->expandedTouchFreeformArea:Landroid/graphics/RectF;

    int-to-float v6, p2

    iget v7, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeform_expanded_area_overlay_height:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v2

    int-to-float v7, p2

    div-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->expandedTouchFreeformArea:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->expandedTouchFreeformArea:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget v7, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeform_expanded_area_overlay_width:F

    int-to-float v8, p1

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->expandedTouchFreeformArea:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->expandedTouchFreeformArea:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget v7, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->freeform_expanded_area_overlay_height:F

    int-to-float v8, p2

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    return-void
.end method
