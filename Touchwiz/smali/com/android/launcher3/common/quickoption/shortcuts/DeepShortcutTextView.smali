.class public Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;
.super Lcom/android/launcher3/common/view/IconView;
.source "DeepShortcutTextView.java"


# instance fields
.field private final mDragHandleBounds:Landroid/graphics/Rect;

.field private final mDragHandleWidth:I

.field private mShouldPerformClick:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/view/IconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->mDragHandleBounds:Landroid/graphics/Rect;

    .line 36
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->mShouldPerformClick:Z

    .line 49
    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0a0127

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0a0124

    .line 51
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    const v2, 0x7f0a0125

    .line 52
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->mDragHandleWidth:I

    .line 53
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/view/IconView;->onMeasure(II)V

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->mDragHandleBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->mDragHandleWidth:I

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 60
    sget-boolean v0, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->mDragHandleBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->mDragHandleBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 63
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->mDragHandleBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->mShouldPerformClick:Z

    .line 76
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/view/IconView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 74
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->mShouldPerformClick:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/launcher3/common/view/IconView;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
