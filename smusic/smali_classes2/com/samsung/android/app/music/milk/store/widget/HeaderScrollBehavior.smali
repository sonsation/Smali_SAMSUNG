.class public Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;
.super Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;
.source "HeaderScrollBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior",
        "<",
        "Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_OFFSET:Ljava/lang/String; = "key_offset"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mExpandableScrollView:Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

.field private mSkipNestedPreScroll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method private getLogTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic canDragView(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 21
    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->canDragView(Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;)Z

    move-result v0

    return v0
.end method

.method protected canDragView(Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method protected canScroll(I)Z
    .locals 3
    .param p1, "dy"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->mExpandableScrollView:Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    if-nez v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "canScrolll. scrollView is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canScroll. dy - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    if-gez p1, :cond_1

    .line 89
    const/4 v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->mExpandableScrollView:Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;->canScrollVertically()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 21
    check-cast p2, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;I)Z

    move-result v0

    return v0
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;I)Z
    .locals 5
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;
    .param p3, "layoutDirection"    # I

    .prologue
    .line 151
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v0

    .line 154
    .local v0, "handled":Z
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;->bringToFront()V

    .line 155
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;->setClickable(Z)V

    .line 158
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;->getPendingAction()I

    move-result v1

    .line 160
    .local v1, "pendingAction":I
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLayoutChild. pendingAction - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    if-eqz v1, :cond_0

    .line 166
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->getTopAndBottomOffset()I

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    .line 176
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;->resetPendingAction()V

    .line 178
    return v0

    .line 170
    :cond_1
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->getTopAndBottomOffset()I

    move-result v2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;->getScrollRange()I

    move-result v3

    neg-int v3, v3

    if-eq v2, v3, :cond_0

    .line 172
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;->getScrollRange()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, p1, p2, v2}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_0
.end method

.method public bridge synthetic onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
    .locals 7

    .prologue
    .line 21
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;Landroid/view/View;FFZ)Z
    .locals 3
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .param p6, "consumed"    # Z

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNestedFling. velocityY - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", consumed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-super/range {p0 .. p6}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 6

    .prologue
    .line 21
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;Landroid/view/View;FF)Z
    .locals 3
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNestedPreFling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 7

    .prologue
    .line 21
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;Landroid/view/View;II[I)V

    return-void
.end method

.method public onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;Landroid/view/View;II[I)V
    .locals 6
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "consumed"    # [I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->mExpandableScrollView:Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    if-nez v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNestedPreScroll. dy - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", skip - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->mSkipNestedPreScroll:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    if-eqz p5, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->mSkipNestedPreScroll:Z

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;->getScrollRange()I

    move-result v0

    neg-int v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    goto :goto_0
.end method

.method public bridge synthetic onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 8

    .prologue
    .line 21
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;Landroid/view/View;IIII)V

    return-void
.end method

.method public onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;Landroid/view/View;IIII)V
    .locals 6
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dxConsumed"    # I
    .param p5, "dyConsumed"    # I
    .param p6, "dxUnconsumed"    # I
    .param p7, "dyUnconsumed"    # I

    .prologue
    const/4 v5, 0x0

    .line 111
    invoke-super/range {p0 .. p7}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->mExpandableScrollView:Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNestedScroll. dyUnconsumed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    if-gez p7, :cond_1

    .line 120
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;->getScrollRange()I

    move-result v0

    neg-int v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p7

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->mSkipNestedPreScroll:Z

    goto :goto_0

    .line 125
    :cond_1
    iput-boolean v5, p0, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->mSkipNestedPreScroll:Z

    goto :goto_0
.end method

.method public bridge synthetic onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 21
    check-cast p2, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;
    .param p3, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRestoreInstanceState. state - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    instance-of v1, p3, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 55
    check-cast p3, Landroid/os/Bundle;

    .end local p3    # "state":Landroid/os/Parcelable;
    const-string v1, "key_offset"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 56
    .local v0, "offset":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->setTopAndBottomOffset(I)Z

    .line 58
    .end local v0    # "offset":I
    :cond_0
    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 21
    check-cast p2, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;)Landroid/os/Parcelable;
    .locals 4
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    .prologue
    .line 44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "key_offset"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->getTopAndBottomOffset()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSaveInstanceState. offset - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->getTopAndBottomOffset()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-object v0
.end method

.method public bridge synthetic onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 21
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;Landroid/view/View;Landroid/view/View;I)Z
    .locals 2
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "nestedScrollAxes"    # I

    .prologue
    .line 97
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStartNestedScroll."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    instance-of v0, p4, Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    if-eqz v0, :cond_0

    move-object v0, p4

    .line 100
    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    invoke-interface {v0, p2}, Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;->setExpandable(Lcom/samsung/android/app/music/milk/store/widget/Expandable;)V

    .line 101
    check-cast p4, Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    .end local p4    # "target":Landroid/view/View;
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->mExpandableScrollView:Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    .line 103
    :cond_0
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    .restart local p4    # "target":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 21
    check-cast p2, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;Landroid/view/View;)V

    return-void
.end method

.method public onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;Landroid/view/View;)V
    .locals 2
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;
    .param p3, "target"    # Landroid/view/View;

    .prologue
    .line 144
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 145
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStopNestedScroll."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method
