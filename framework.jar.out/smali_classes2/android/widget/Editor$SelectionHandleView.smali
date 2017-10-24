.class Landroid/widget/Editor$SelectionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionHandleView"
.end annotation


# instance fields
.field private mInWord:Z

.field private mLanguageDirectionChanged:Z

.field private mPrevX:F

.field private final mTextViewEdgeSlop:F

.field private final mTextViewLocation:[I

.field private mTouchWordDelta:F

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 8
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;
    .param p4, "id"    # I
    .param p5, "handleType"    # I

    .prologue
    const/4 v7, 0x0

    .line 5712
    iput-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 5714
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$HandleView;)V

    .line 5699
    iput-boolean v7, p0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    .line 5705
    iput-boolean v7, p0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 5710
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    .line 5715
    iput p5, p0, Landroid/widget/Editor$HandleView;->mHandleType:I

    .line 5716
    invoke-static {p1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 5717
    .local v6, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    .line 5713
    return-void
.end method

.method private getHorizontal(Landroid/text/Layout;IZ)F
    .locals 6
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I
    .param p3, "startHandle"    # Z

    .prologue
    const/4 v1, 0x0

    .line 5962
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 5963
    .local v2, "line":I
    if-eqz p3, :cond_1

    move v3, p2

    .line 5964
    .local v3, "offsetToCheck":I
    :goto_0
    invoke-virtual {p1, v3}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 5965
    .local v0, "isRtlChar":Z
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    const/4 v1, 0x1

    .line 5966
    .local v1, "isRtlParagraph":Z
    :cond_0
    if-ne v0, v1, :cond_2

    .line 5967
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    .line 5966
    :goto_1
    return v4

    .line 5963
    .end local v0    # "isRtlChar":Z
    .end local v1    # "isRtlParagraph":Z
    .end local v3    # "offsetToCheck":I
    :cond_1
    add-int/lit8 v4, p2, -0x1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    .line 5967
    .restart local v0    # "isRtlChar":Z
    .restart local v1    # "isRtlParagraph":Z
    .restart local v3    # "offsetToCheck":I
    :cond_2
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v4

    goto :goto_1
.end method

.method private positionAndAdjustForCrossingHandles(I)V
    .locals 5
    .param p1, "offset"    # I

    .prologue
    const/4 v3, 0x0

    .line 5881
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 5882
    .local v0, "anotherHandleOffset":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-eqz v2, :cond_2

    if-lt p1, v0, :cond_2

    .line 5884
    :goto_1
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 5885
    iget-object v2, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 5887
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_0

    if-ne p1, v0, :cond_0

    .line 5888
    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    invoke-static {v4, v0, v2}, Landroid/widget/Editor;->-wrap17(Landroid/widget/Editor;IZ)I

    move-result p1

    .line 5919
    .end local v1    # "layout":Landroid/text/Layout;
    :cond_0
    invoke-virtual {p0, p1, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAtCursorOffset(IZ)V

    .line 5879
    return-void

    .line 5881
    .end local v0    # "anotherHandleOffset":I
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .restart local v0    # "anotherHandleOffset":I
    goto :goto_0

    .line 5883
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-nez v2, :cond_0

    if-gt p1, v0, :cond_0

    goto :goto_1

    .line 5888
    .restart local v1    # "layout":Landroid/text/Layout;
    :cond_3
    const/4 v2, 0x1

    goto :goto_2
.end method

.method private positionNearEdgeOfScrollingView(FZ)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "atRtl"    # Z

    .prologue
    const/4 v5, 0x0

    .line 5923
    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5925
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v3

    if-ne p2, v3, :cond_1

    .line 5926
    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    aget v3, v3, v5

    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 5927
    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 5926
    sub-int v2, v3, v4

    .line 5928
    .local v2, "rightEdge":I
    int-to-float v3, v2

    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    sub-float/2addr v3, v4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    .line 5933
    .end local v2    # "rightEdge":I
    .local v1, "nearEdge":Z
    :goto_0
    return v1

    .line 5928
    .end local v1    # "nearEdge":Z
    .restart local v2    # "rightEdge":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "nearEdge":Z
    goto :goto_0

    .line 5930
    .end local v1    # "nearEdge":Z
    .end local v2    # "rightEdge":I
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    aget v3, v3, v5

    iget-object v4, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int v0, v3, v4

    .line 5931
    .local v0, "leftEdge":I
    int-to-float v3, v0

    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    add-float/2addr v3, v4

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    const/4 v1, 0x1

    .restart local v1    # "nearEdge":Z
    goto :goto_0

    .end local v1    # "nearEdge":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "nearEdge":Z
    goto :goto_0
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 5740
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    goto :goto_0
.end method

.method public getHorizontal(Landroid/text/Layout;I)F
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .prologue
    .line 5958
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;IZ)F

    move-result v0

    return v0
.end method

.method protected getHorizontalGravity(Z)I
    .locals 1
    .param p1, "isRtlRun"    # Z

    .prologue
    .line 5735
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 5726
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-ne p2, v0, :cond_0

    .line 5727
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0

    .line 5729
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected getOffsetAtCoordinate(Landroid/text/Layout;IF)I
    .locals 12
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "line"    # I
    .param p3, "x"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 5972
    iget-object v10, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, p3}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v3

    .line 5973
    .local v3, "localX":F
    invoke-virtual {p1, p2, v3, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v6

    .line 5974
    .local v6, "primaryOffset":I
    invoke-virtual {p1, v6}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 5975
    return v6

    .line 5977
    :cond_0
    invoke-virtual {p1, p2, v3, v9}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v8

    .line 5978
    .local v8, "secondaryOffset":I
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v0

    .line 5979
    .local v0, "currentOffset":I
    sub-int v10, v6, v0

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 5980
    .local v5, "primaryDiff":I
    sub-int v10, v8, v0

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 5981
    .local v7, "secondaryDiff":I
    if-ge v5, v7, :cond_1

    .line 5982
    return v6

    .line 5983
    :cond_1
    if-le v5, v7, :cond_2

    .line 5984
    return v8

    .line 5986
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-eqz v10, :cond_3

    move v4, v0

    .line 5988
    .local v4, "offsetToCheck":I
    :goto_0
    invoke-virtual {p1, v4}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v1

    .line 5989
    .local v1, "isRtlChar":Z
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_4

    .line 5990
    .local v2, "isRtlParagraph":Z
    :goto_1
    if-ne v1, v2, :cond_5

    .end local v6    # "primaryOffset":I
    :goto_2
    return v6

    .line 5987
    .end local v1    # "isRtlChar":Z
    .end local v2    # "isRtlParagraph":Z
    .end local v4    # "offsetToCheck":I
    .restart local v6    # "primaryOffset":I
    :cond_3
    add-int/lit8 v10, v0, -0x1

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_0

    .restart local v1    # "isRtlChar":Z
    .restart local v4    # "offsetToCheck":I
    :cond_4
    move v2, v9

    .line 5989
    goto :goto_1

    .restart local v2    # "isRtlParagraph":Z
    :cond_5
    move v6, v8

    .line 5990
    goto :goto_2
.end method

.method protected isAtRtlRun(Landroid/text/Layout;I)Z
    .locals 3
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .prologue
    .line 5952
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, p2

    .line 5953
    .local v0, "offsetToCheck":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v1

    return v1

    .line 5952
    .end local v0    # "offsetToCheck":I
    :cond_0
    add-int/lit8 v1, p2, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method protected isHandleViewScreenOut()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 5938
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 5939
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v7, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-wrap3(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v4

    .line 5940
    .local v4, "positionListener":Landroid/widget/Editor$PositionListener;
    iget-object v7, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    div-int/lit8 v1, v7, 0x2

    .line 5941
    .local v1, "iconSize":I
    iget v7, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    invoke-virtual {v4}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v8

    add-int v3, v7, v8

    .line 5942
    .local v3, "mSeletionEdgePosition":I
    iget-object v7, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    if-ne v7, v8, :cond_0

    const/4 v2, 0x1

    .line 5943
    .local v2, "isRtlDrawable":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5944
    if-nez v2, :cond_2

    sub-int v7, v3, v1

    if-gez v7, :cond_1

    :goto_1
    return v5

    .line 5942
    .end local v2    # "isRtlDrawable":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "isRtlDrawable":Z
    goto :goto_0

    :cond_1
    move v5, v6

    .line 5944
    goto :goto_1

    :cond_2
    add-int v7, v3, v1

    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v7, v8, :cond_1

    goto :goto_1

    .line 5946
    :cond_3
    if-nez v2, :cond_5

    add-int v7, v3, v1

    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v7, v8, :cond_4

    :goto_2
    return v5

    :cond_4
    move v5, v6

    goto :goto_2

    :cond_5
    sub-int v7, v3, v1

    if-gez v7, :cond_4

    goto :goto_2
.end method

.method public isStartHandle()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5721
    iget v1, p0, Landroid/widget/Editor$HandleView;->mHandleType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5865
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_0

    .line 5866
    const/4 v1, 0x1

    return v1

    .line 5868
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 5869
    .local v0, "superResult":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_1

    .line 5872
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 5873
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 5876
    :cond_1
    return v0
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "forceUpdatePosition"    # Z

    .prologue
    const/4 v0, 0x0

    .line 5859
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 5860
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-wrap1(Landroid/widget/Editor;)Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->isBoundary(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    .line 5858
    return-void

    .line 5860
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updatePosition(FF)V
    .locals 24
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 5760
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v13

    .line 5761
    .local v13, "layout":Landroid/text/Layout;
    if-nez v13, :cond_0

    .line 5764
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 5765
    return-void

    .line 5768
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 5769
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 5772
    :cond_1
    const/16 v16, 0x0

    .line 5774
    .local v16, "positionCursor":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v22

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 5775
    .local v3, "anotherHandleOffset":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, p2

    invoke-static {v0, v13, v1, v2}, Landroid/widget/Editor;->-wrap16(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    move-result v5

    .line 5776
    .local v5, "currLine":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v13, v5, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v11

    .line 5778
    .local v11, "initialOffset":I
    move v15, v11

    .line 5779
    .local v15, "offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v11}, Landroid/widget/Editor;->-wrap18(Landroid/widget/Editor;I)I

    move-result v20

    .line 5780
    .local v20, "wordEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v11}, Landroid/widget/Editor;->-wrap19(Landroid/widget/Editor;I)I

    move-result v21

    .line 5782
    .local v21, "wordStart":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    move/from16 v22, v0

    const/high16 v23, -0x40800000    # -1.0f

    cmpl-float v22, v22, v23

    if-nez v22, :cond_2

    .line 5783
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 5786
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v7

    .line 5787
    .local v7, "currentOffset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v7}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v18

    .line 5788
    .local v18, "rtlAtCurrentOffset":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v11}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v4

    .line 5789
    .local v4, "atRtl":Z
    invoke-virtual {v13, v11}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v12

    .line 5794
    .local v12, "isLvlBoundary":Z
    if-nez v12, :cond_4

    if-eqz v18, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    if-nez v18, :cond_6

    if-eqz v4, :cond_6

    .line 5797
    :cond_4
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 5798
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 5799
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 5800
    return-void

    .line 5774
    .end local v3    # "anotherHandleOffset":I
    .end local v4    # "atRtl":Z
    .end local v5    # "currLine":I
    .end local v7    # "currentOffset":I
    .end local v11    # "initialOffset":I
    .end local v12    # "isLvlBoundary":Z
    .end local v15    # "offset":I
    .end local v18    # "rtlAtCurrentOffset":Z
    .end local v20    # "wordEnd":I
    .end local v21    # "wordStart":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .restart local v3    # "anotherHandleOffset":I
    goto/16 :goto_0

    .line 5801
    .restart local v4    # "atRtl":Z
    .restart local v5    # "currLine":I
    .restart local v7    # "currentOffset":I
    .restart local v11    # "initialOffset":I
    .restart local v12    # "isLvlBoundary":Z
    .restart local v15    # "offset":I
    .restart local v18    # "rtlAtCurrentOffset":Z
    .restart local v20    # "wordEnd":I
    .restart local v21    # "wordStart":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    if-eqz v12, :cond_9

    .line 5810
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v22

    if-eqz v22, :cond_b

    .line 5811
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/widget/Editor$SelectionHandleView;->positionNearEdgeOfScrollingView(FZ)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 5812
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v22

    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getScrollX()I

    move-result v22

    if-eqz v22, :cond_a

    .line 5815
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v22

    if-eqz v22, :cond_d

    if-ge v11, v7, :cond_d

    .line 5820
    :goto_1
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 5821
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v22

    move/from16 v0, v22

    if-ne v4, v0, :cond_e

    .line 5822
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v14

    .line 5824
    .local v14, "nextOffset":I
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 5825
    return-void

    .line 5804
    .end local v14    # "nextOffset":I
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 5805
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 5806
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 5807
    return-void

    .line 5813
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v22

    if-nez v22, :cond_b

    .line 5814
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    if-eqz v4, :cond_c

    const/16 v22, -0x1

    :goto_3
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v22

    .line 5811
    if-nez v22, :cond_8

    .line 5829
    :cond_b
    invoke-virtual {v13, v5}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    .line 5830
    .local v6, "currentLineBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v17

    .line 5831
    .local v17, "previousLineBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v23

    add-int v19, v22, v23

    .line 5832
    .local v19, "verticalOffset":I
    sub-int v22, v6, v17

    sub-int v8, v22, v19

    .line 5840
    .local v8, "diff":I
    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 5841
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 5842
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 5844
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    move/from16 v22, v0

    add-float v22, v22, p1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mHorizontalOffset:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v9, v0

    .line 5845
    .local v9, "handlePositionX":I
    const/4 v10, 0x0

    .line 5847
    .local v10, "handlePositionY":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$HandleView;->mIsVerticalScrolled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_f

    .line 5848
    sub-int v10, v6, v8

    .line 5854
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Landroid/widget/Editor$HandleView;->updatePositionImmediately(II)V

    .line 5759
    return-void

    .line 5814
    .end local v6    # "currentLineBottom":I
    .end local v8    # "diff":I
    .end local v9    # "handlePositionX":I
    .end local v10    # "handlePositionY":I
    .end local v17    # "previousLineBottom":I
    .end local v19    # "verticalOffset":I
    :cond_c
    const/16 v22, 0x1

    goto/16 :goto_3

    .line 5816
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v22

    if-nez v22, :cond_b

    if-le v11, v7, :cond_b

    goto/16 :goto_1

    .line 5823
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v14

    goto/16 :goto_2

    .line 5850
    .restart local v6    # "currentLineBottom":I
    .restart local v8    # "diff":I
    .restart local v9    # "handlePositionX":I
    .restart local v10    # "handlePositionY":I
    .restart local v17    # "previousLineBottom":I
    .restart local v19    # "verticalOffset":I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    move/from16 v22, v0

    add-float v22, v22, p2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mVerticalScroll:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mVerticalOffset:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v10, v0

    goto :goto_4
.end method

.method protected updateSelection(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 5745
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5746
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 5747
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 5746
    invoke-static {v0, p1, v1}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 5752
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 5753
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 5754
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 5744
    :cond_0
    return-void

    .line 5749
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 5750
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 5749
    invoke-static {v0, v1, p1}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    goto :goto_0
.end method
