.class public abstract Lcom/samsung/android/edgelighting/view/AbsToastView;
.super Landroid/widget/FrameLayout;
.source "AbsToastView.java"


# instance fields
.field protected isAnimating:Ljava/lang/Boolean;

.field protected mCompute:Ljava/lang/Object;

.field protected mComputeListenerReflection:Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverOnComputeInternalInsetsListenerReflection;

.field protected mHeight:I

.field protected mIsHiding:Z

.field protected mMaxWidth:I

.field protected mMinWidth:I

.field protected mTextMaxWidth:I

.field protected mToastFullColor:Z

.field protected mWidth:I

.field touchableRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->isAnimating:Ljava/lang/Boolean;

    .line 19
    const/16 v0, 0x5f

    iput v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMinWidth:I

    .line 20
    const/16 v0, 0x2da

    iput v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMaxWidth:I

    .line 24
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mToastFullColor:Z

    .line 26
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mIsHiding:Z

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->touchableRect:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Lcom/samsung/android/edgelighting/view/AbsToastView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/edgelighting/view/AbsToastView$1;-><init>(Lcom/samsung/android/edgelighting/view/AbsToastView;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mComputeListenerReflection:Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverOnComputeInternalInsetsListenerReflection;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->isAnimating:Ljava/lang/Boolean;

    .line 19
    const/16 v0, 0x5f

    iput v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMinWidth:I

    .line 20
    const/16 v0, 0x2da

    iput v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMaxWidth:I

    .line 24
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mToastFullColor:Z

    .line 26
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mIsHiding:Z

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->touchableRect:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Lcom/samsung/android/edgelighting/view/AbsToastView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/edgelighting/view/AbsToastView$1;-><init>(Lcom/samsung/android/edgelighting/view/AbsToastView;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mComputeListenerReflection:Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverOnComputeInternalInsetsListenerReflection;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->isAnimating:Ljava/lang/Boolean;

    .line 19
    const/16 v0, 0x5f

    iput v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMinWidth:I

    .line 20
    const/16 v0, 0x2da

    iput v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMaxWidth:I

    .line 24
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mToastFullColor:Z

    .line 26
    iput-boolean v1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mIsHiding:Z

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->touchableRect:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Lcom/samsung/android/edgelighting/view/AbsToastView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/edgelighting/view/AbsToastView$1;-><init>(Lcom/samsung/android/edgelighting/view/AbsToastView;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mComputeListenerReflection:Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverOnComputeInternalInsetsListenerReflection;

    .line 44
    return-void
.end method


# virtual methods
.method protected abstract getLayoutId()I
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMaxWidth:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMinWidth:I

    return v0
.end method

.method protected initialize()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mComputeListenerReflection:Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverOnComputeInternalInsetsListenerReflection;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverOnComputeInternalInsetsListenerReflection;->getProxyInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mCompute:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method protected setScreenSize(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mWidth:I

    .line 79
    iput p2, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mHeight:I

    .line 80
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 81
    .local v0, "tempVal":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/AbsToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/edgelighting/R$dimen;->ticker_text_full_max_ratio:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 82
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    .line 83
    .local v1, "width_ratio":F
    iget v2, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/AbsToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/edgelighting/R$dimen;->morph_initial_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/AbsToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/edgelighting/R$dimen;->noti_text_start_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/AbsToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/edgelighting/R$dimen;->noti_text_end_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mTextMaxWidth:I

    .line 86
    return-void
.end method

.method protected updateRefreshUI(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/edgelighting/view/AbsToastView;->setScreenSize(II)V

    .line 90
    return-void
.end method
