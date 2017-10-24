.class public Lcom/android/systemui/statusbar/NotificationMoreCue;
.super Landroid/widget/FrameLayout;
.source "NotificationMoreCue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationMoreCue$1;,
        Lcom/android/systemui/statusbar/NotificationMoreCue$2;
    }
.end annotation


# instance fields
.field private final ANIMATION_DELAY_BETWEEN_FIRST_AND_SECOND:I

.field private mFirstArrow:Landroid/view/View;

.field private mFirstArrowAnimator:Landroid/view/animation/Animation;

.field private mFirstArrowRunnable:Ljava/lang/Runnable;

.field private mIsWhiteWallpaper:Z

.field private mSecondArrow:Landroid/view/View;

.field private mSecondArrowAnimator:Landroid/view/animation/Animation;

.field private mSecondArrowRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NotificationMoreCue;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mFirstArrow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/NotificationMoreCue;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mSecondArrow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/NotificationMoreCue;Landroid/view/View;)V
    .locals 0
    .param p1, "arrow"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationMoreCue;->runMoreCueAnimation(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->ANIMATION_DELAY_BETWEEN_FIRST_AND_SECOND:I

    .line 25
    new-instance v0, Lcom/android/systemui/statusbar/NotificationMoreCue$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationMoreCue$1;-><init>(Lcom/android/systemui/statusbar/NotificationMoreCue;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mFirstArrowRunnable:Ljava/lang/Runnable;

    .line 31
    new-instance v0, Lcom/android/systemui/statusbar/NotificationMoreCue$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationMoreCue$2;-><init>(Lcom/android/systemui/statusbar/NotificationMoreCue;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mSecondArrowRunnable:Ljava/lang/Runnable;

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMoreCue;->init()V

    .line 38
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const v1, 0x7f0500a5

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mContext:Landroid/content/Context;

    .line 50
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mFirstArrowAnimator:Landroid/view/animation/Animation;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mSecondArrowAnimator:Landroid/view/animation/Animation;

    .line 54
    const v0, 0x7f1302ce

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationMoreCue;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mFirstArrow:Landroid/view/View;

    .line 55
    const v0, 0x7f1302cf

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationMoreCue;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mSecondArrow:Landroid/view/View;

    .line 49
    return-void
.end method

.method private runMoreCueAnimation(Landroid/view/View;)V
    .locals 2
    .param p1, "arrow"    # Landroid/view/View;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mFirstArrow:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mFirstArrowAnimator:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationMoreCue$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationMoreCue$3;-><init>(Lcom/android/systemui/statusbar/NotificationMoreCue;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mFirstArrow:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mFirstArrowAnimator:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 58
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mSecondArrowAnimator:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationMoreCue$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationMoreCue$4;-><init>(Lcom/android/systemui/statusbar/NotificationMoreCue;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mSecondArrow:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mSecondArrowAnimator:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelMoreCueAnimation()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mFirstArrowAnimator:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mSecondArrowAnimator:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 109
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationMoreCue;->setVisibility(I)V

    .line 106
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMoreCue;->init()V

    .line 45
    return-void
.end method

.method public releaseMoreCueAnimation()V
    .locals 4

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationMoreCue;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mFirstArrowAnimator:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mFirstArrowAnimator:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mSecondArrowAnimator:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mSecondArrowAnimator:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mFirstArrowRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationMoreCue;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mSecondArrowRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/NotificationMoreCue;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 96
    return-void
.end method

.method public updateMoreCueTintColor(Z)V
    .locals 3
    .param p1, "whiteWallpaper"    # Z

    .prologue
    const/4 v1, 0x0

    const v2, 0x7f0b01b4

    .line 113
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mIsWhiteWallpaper:Z

    if-eq v0, p1, :cond_0

    .line 114
    if-eqz p1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mFirstArrow:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 115
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mSecondArrow:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 117
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 123
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mIsWhiteWallpaper:Z

    .line 112
    :cond_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mFirstArrow:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMoreCue;->mSecondArrow:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method
