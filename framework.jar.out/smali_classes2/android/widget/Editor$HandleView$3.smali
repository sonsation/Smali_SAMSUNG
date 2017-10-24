.class Landroid/widget/Editor$HandleView$3;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$HandleView;->resetHandleView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$HandleView;


# direct methods
.method constructor <init>(Landroid/widget/Editor$HandleView;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Editor$HandleView;

    .prologue
    .line 5160
    iput-object p1, p0, Landroid/widget/Editor$HandleView$3;->this$1:Landroid/widget/Editor$HandleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 11
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 5164
    iget-object v5, p0, Landroid/widget/Editor$HandleView$3;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v5}, Landroid/widget/Editor$HandleView;->-get3(Landroid/widget/Editor$HandleView;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5165
    return-void

    .line 5167
    :cond_0
    const-string/jumbo v5, "width"

    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 5168
    .local v2, "width":I
    const-string/jumbo v5, "height"

    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5170
    .local v0, "height":I
    const-string/jumbo v5, "positionX"

    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 5171
    .local v3, "x":I
    const-string/jumbo v5, "positionY"

    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 5173
    .local v4, "y":I
    iget-object v5, p0, Landroid/widget/Editor$HandleView$3;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v5, v5, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Landroid/widget/Editor$HandleView$3;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v6, v2, v0}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 5176
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 5177
    iget-object v5, p0, Landroid/widget/Editor$HandleView$3;->this$1:Landroid/widget/Editor$HandleView;

    iget v5, v5, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v5, v3

    iget-object v6, p0, Landroid/widget/Editor$HandleView$3;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v6}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v6

    add-int/2addr v5, v6

    aput v5, v1, v8

    aput v4, v1, v10

    .line 5179
    .local v1, "pts":[I
    iget-object v5, p0, Landroid/widget/Editor$HandleView$3;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v5, v5, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->transformFromViewToWindowSpace([I)V

    .line 5180
    aget v5, v1, v8

    iget-object v6, p0, Landroid/widget/Editor$HandleView$3;->this$1:Landroid/widget/Editor$HandleView;

    iget v6, v6, Landroid/widget/Editor$HandleView;->mHotspotX:I

    iget-object v7, p0, Landroid/widget/Editor$HandleView$3;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v7}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    aput v5, v1, v8

    .line 5182
    iget-object v5, p0, Landroid/widget/Editor$HandleView$3;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v5}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5183
    iget-object v5, p0, Landroid/widget/Editor$HandleView$3;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v5}, Landroid/widget/Editor$HandleView;->invalidate()V

    .line 5184
    iget-object v5, p0, Landroid/widget/Editor$HandleView$3;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v5}, Landroid/widget/Editor$HandleView;->-get0(Landroid/widget/Editor$HandleView;)Landroid/widget/PopupWindow;

    move-result-object v5

    aget v6, v1, v8

    aget v7, v1, v10

    invoke-virtual {v5, v6, v7, v9, v9}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 5162
    :cond_1
    return-void
.end method
