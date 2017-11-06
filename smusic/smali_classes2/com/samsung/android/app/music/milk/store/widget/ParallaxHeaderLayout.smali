.class public Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;
.super Landroid/widget/RelativeLayout;
.source "ParallaxHeaderLayout.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/Expandable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout$OnParallaxHeaderScrollListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ParallaxHeaderLayout"

.field public static final PENDING_ACTION_ANIMATE_ENABLED:I = 0x4

.field public static final PENDING_ACTION_COLLAPSED:I = 0x2

.field public static final PENDING_ACTION_EXPANDED:I = 0x1

.field public static final PENDING_ACTION_FORCE:I = 0x8

.field public static final PENDING_ACTION_NONE:I


# instance fields
.field private mHeaderTop:I

.field private mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

.field mOnParallaxHeaderScrollListener:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout$OnParallaxHeaderScrollListener;

.field private mParallaxMultiplier:F

.field private mParallaxTarget:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field private mParallaxTargetView:Landroid/view/View;

.field private mPendingAction:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 27
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mHeaderTop:I

    .line 41
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mPendingAction:I

    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mParallaxMultiplier:F

    .line 49
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mParallaxTarget:I

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    iput v5, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mHeaderTop:I

    .line 41
    iput v5, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mPendingAction:I

    .line 45
    iput v6, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mParallaxMultiplier:F

    .line 49
    iput v5, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mParallaxTarget:I

    .line 62
    new-instance v4, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;)V

    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 71
    if-eqz p2, :cond_3

    .line 72
    sget-object v4, Lcom/samsung/android/app/music/R$styleable;->ParallaxHeaderLayout:[I

    .line 73
    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 74
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 75
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 76
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 77
    .local v1, "attr":I
    if-nez v1, :cond_1

    .line 78
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mParallaxMultiplier:F

    .line 75
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    :cond_1
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 80
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mParallaxTarget:I

    goto :goto_1

    .line 83
    .end local v1    # "attr":I
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    .end local v0    # "array":Landroid/content/res/TypedArray;
    .end local v2    # "count":I
    .end local v3    # "index":I
    :cond_3
    return-void
.end method

.method static objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 185
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 159
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->setExpanded(ZZ)V

    .line 160
    return-void
.end method

.method private setExpanded(ZZ)V
    .locals 1
    .param p1, "expanded"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 175
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->setExpanded(ZZZ)V

    .line 176
    return-void
.end method

.method private setExpanded(ZZZ)V
    .locals 3
    .param p1, "expanded"    # Z
    .param p2, "animate"    # Z
    .param p3, "force"    # Z

    .prologue
    const/4 v0, 0x0

    .line 179
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-eqz p2, :cond_2

    const/4 v1, 0x4

    :goto_1
    or-int/2addr v1, v2

    if-eqz p3, :cond_0

    const/16 v0, 0x8

    :cond_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mPendingAction:I

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->requestLayout()V

    .line 182
    return-void

    .line 179
    :cond_1
    const/4 v1, 0x2

    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public expand(Z)Z
    .locals 1
    .param p1, "expand"    # Z

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->setExpanded(Z)V

    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method final getBottomInset()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMinOffset()I
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getMinimumHeight()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mHeaderTop:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPendingAction()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mPendingAction:I

    return v0
.end method

.method public getScrollRange()I
    .locals 3

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 98
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getMinOffset()I

    move-result v2

    sub-int/2addr v1, v2

    .line 101
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final getTopInset()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTopOffsetChanged(I)V
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mOnParallaxHeaderScrollListener:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout$OnParallaxHeaderScrollListener;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mOnParallaxHeaderScrollListener:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout$OnParallaxHeaderScrollListener;

    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getScrollRange()I

    move-result v1

    add-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getScrollRange()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 196
    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout$OnParallaxHeaderScrollListener;->onHeaderScrolled(II)V

    .line 199
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mParallaxTarget:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mParallaxTargetView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 200
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mParallaxTarget:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mParallaxTargetView:Landroid/view/View;

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mParallaxTargetView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 204
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mParallaxMultiplier:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mParallaxTargetView:Landroid/view/View;

    neg-int v1, p1

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mParallaxMultiplier:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 208
    :cond_2
    return-void
.end method

.method onWindowInsetChanged(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 4
    .param p1, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 119
    .local v0, "newInsets":Landroid/support/v4/view/WindowInsetsCompat;
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    move-object v0, p1

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->requestLayout()V

    .line 130
    :cond_1
    const-string v1, "ParallaxHeaderLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWindowInsetChanged. getTopInset - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getTopInset()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bottomInset - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getBottomInset()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-object p1
.end method

.method public resetPendingAction()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mPendingAction:I

    .line 143
    return-void
.end method

.method public setHeaderTop(I)V
    .locals 3
    .param p1, "top"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mHeaderTop:I

    .line 93
    const-string v0, "ParallaxHeaderLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHeaderTop. top - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public setOnParallaxHeaderScrollListener(Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout$OnParallaxHeaderScrollListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout$OnParallaxHeaderScrollListener;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->mOnParallaxHeaderScrollListener:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout$OnParallaxHeaderScrollListener;

    .line 89
    return-void
.end method
