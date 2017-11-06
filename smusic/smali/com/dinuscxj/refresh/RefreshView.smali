.class public Lcom/dinuscxj/refresh/RefreshView;
.super Landroid/widget/ImageView;
.source "RefreshView.java"

# interfaces
.implements Lcom/dinuscxj/refresh/IRefreshStatus;


# static fields
.field private static final ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mResetRotateAnimation:Landroid/view/animation/Animation;

.field private mRotateAnimation:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/dinuscxj/refresh/RefreshView;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dinuscxj/refresh/RefreshView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0}, Lcom/dinuscxj/refresh/RefreshView;->initView()V

    .line 31
    invoke-direct {p0}, Lcom/dinuscxj/refresh/RefreshView;->initAnimation()V

    .line 32
    return-void
.end method

.method private initAnimation()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x96

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 40
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/dinuscxj/refresh/RefreshView;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 42
    iget-object v0, p0, Lcom/dinuscxj/refresh/RefreshView;->mRotateAnimation:Landroid/view/animation/Animation;

    sget-object v5, Lcom/dinuscxj/refresh/RefreshView;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 43
    iget-object v0, p0, Lcom/dinuscxj/refresh/RefreshView;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 44
    iget-object v0, p0, Lcom/dinuscxj/refresh/RefreshView;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 46
    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v5, p0, Lcom/dinuscxj/refresh/RefreshView;->mResetRotateAnimation:Landroid/view/animation/Animation;

    .line 48
    iget-object v0, p0, Lcom/dinuscxj/refresh/RefreshView;->mResetRotateAnimation:Landroid/view/animation/Animation;

    sget-object v1, Lcom/dinuscxj/refresh/RefreshView;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 49
    iget-object v0, p0, Lcom/dinuscxj/refresh/RefreshView;->mResetRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 50
    iget-object v0, p0, Lcom/dinuscxj/refresh/RefreshView;->mResetRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 51
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/dinuscxj/refresh/RefreshView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 36
    sget v0, Lcom/dinuscxj/recyclerrefreshlayout/R$drawable;->default_ptr_flip:I

    invoke-virtual {p0, v0}, Lcom/dinuscxj/refresh/RefreshView;->setImageResource(I)V

    .line 37
    return-void
.end method


# virtual methods
.method public pullProgress(FF)V
    .locals 0
    .param p1, "pullDistance"    # F
    .param p2, "pullProgress"    # F

    .prologue
    .line 90
    return-void
.end method

.method public pullToRefresh()V
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RefreshView;->clearAnimation()V

    .line 73
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RefreshView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RefreshView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/dinuscxj/refresh/RefreshView;->mResetRotateAnimation:Landroid/view/animation/Animation;

    if-ne v0, v1, :cond_1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/dinuscxj/refresh/RefreshView;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/dinuscxj/refresh/RefreshView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 76
    :cond_1
    return-void
.end method

.method public refreshing()V
    .locals 3

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RefreshView;->clearAnimation()V

    .line 64
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RefreshView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dinuscxj/recyclerrefreshlayout/R$drawable;->spinner:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 65
    .local v0, "drawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0, v0}, Lcom/dinuscxj/refresh/RefreshView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 67
    return-void
.end method

.method public releaseToRefresh()V
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RefreshView;->clearAnimation()V

    .line 82
    iget-object v0, p0, Lcom/dinuscxj/refresh/RefreshView;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RefreshView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/dinuscxj/refresh/RefreshView;->mResetRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/dinuscxj/refresh/RefreshView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 85
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RefreshView;->clearAnimation()V

    .line 57
    invoke-virtual {p0}, Lcom/dinuscxj/refresh/RefreshView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dinuscxj/recyclerrefreshlayout/R$drawable;->default_ptr_flip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dinuscxj/refresh/RefreshView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    return-void
.end method
