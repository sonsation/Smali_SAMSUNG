.class final Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;
.super Ljava/lang/Object;
.source "SeslAbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

.field x:F

.field y:F


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V
    .locals 0

    .prologue
    .line 4018
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
    .param p2, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$1;

    .prologue
    .line 4018
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 4024
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    if-nez v4, :cond_3

    .line 4025
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iput v7, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 4026
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionPosition:I

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget v6, v6, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4035
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionPosition:I

    if-ltz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionPosition:I

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4036
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    const/4 v5, 0x0

    iput v5, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLayoutMode:I

    .line 4038
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-boolean v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataChanged:Z

    if-nez v4, :cond_6

    .line 4039
    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 4040
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v4, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setPressed(Z)V

    .line 4041
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->layoutChildren()V

    .line 4042
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionPosition:I

    invoke-virtual {v4, v5, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 4043
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->refreshDrawableState()V

    .line 4045
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    .line 4046
    .local v3, "longPressTimeout":I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isLongClickable()Z

    move-result v2

    .line 4048
    .local v2, "longClickable":Z
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 4049
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4050
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v4, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_0

    .line 4051
    if-eqz v2, :cond_4

    .line 4052
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 4057
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;->x:F

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 4060
    :cond_1
    if-eqz v2, :cond_5

    .line 4061
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$1200(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;

    move-result-object v4

    if-nez v4, :cond_2

    .line 4062
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    new-instance v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$1;)V

    invoke-static {v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$1202(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;)Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;

    .line 4064
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$1200(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 4065
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$1200(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;

    move-result-object v5

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4074
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "longClickable":Z
    .end local v3    # "longPressTimeout":I
    :cond_3
    :goto_1
    return-void

    .line 4054
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "longClickable":Z
    .restart local v3    # "longPressTimeout":I
    :cond_4
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0

    .line 4067
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iput v8, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    goto :goto_1

    .line 4070
    .end local v2    # "longClickable":Z
    .end local v3    # "longPressTimeout":I
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iput v8, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    goto :goto_1
.end method
