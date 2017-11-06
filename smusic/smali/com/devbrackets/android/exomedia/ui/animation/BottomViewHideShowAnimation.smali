.class public Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;
.super Landroid/view/animation/AnimationSet;
.source "BottomViewHideShowAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation$Listener;
    }
.end annotation


# instance fields
.field private animationView:Landroid/view/View;

.field private toVisible:Z


# direct methods
.method public constructor <init>(Landroid/view/View;ZJ)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "toVisible"    # Z
    .param p3, "duration"    # J

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 40
    invoke-direct {p0, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 41
    iput-boolean p2, p0, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;->toVisible:Z

    .line 42
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;->animationView:Landroid/view/View;

    .line 45
    if-eqz p2, :cond_0

    move v3, v6

    .line 46
    .local v3, "startAlpha":F
    :goto_0
    if-eqz p2, :cond_1

    .line 48
    .local v1, "endAlpha":F
    :goto_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 49
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 53
    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;->getHideShowDelta(Landroid/view/View;)I

    move-result v4

    .line 54
    .local v4, "startY":I
    :goto_2
    if-eqz p2, :cond_3

    .line 55
    .local v2, "endY":I
    :goto_3
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    int-to-float v7, v4

    int-to-float v8, v2

    invoke-direct {v5, v6, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 56
    .local v5, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    if-eqz p2, :cond_4

    new-instance v6, Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v6}, Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;-><init>()V

    :goto_4
    invoke-virtual {v5, v6}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 57
    invoke-virtual {v5, p3, p4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;->addAnimation(Landroid/view/animation/Animation;)V

    .line 62
    invoke-virtual {p0, v5}, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;->addAnimation(Landroid/view/animation/Animation;)V

    .line 64
    new-instance v6, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation$Listener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation$Listener;-><init>(Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation$1;)V

    invoke-virtual {p0, v6}, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 65
    return-void

    .end local v0    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    .end local v1    # "endAlpha":F
    .end local v2    # "endY":I
    .end local v3    # "startAlpha":F
    .end local v4    # "startY":I
    .end local v5    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_0
    move v3, v1

    .line 45
    goto :goto_0

    .restart local v3    # "startAlpha":F
    :cond_1
    move v1, v6

    .line 46
    goto :goto_1

    .restart local v0    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    .restart local v1    # "endAlpha":F
    :cond_2
    move v4, v2

    .line 53
    goto :goto_2

    .line 54
    .restart local v4    # "startY":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;->getHideShowDelta(Landroid/view/View;)I

    move-result v2

    goto :goto_3

    .line 56
    .restart local v2    # "endY":I
    .restart local v5    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_4
    new-instance v6, Landroid/support/v4/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v6}, Landroid/support/v4/view/animation/FastOutLinearInInterpolator;-><init>()V

    goto :goto_4
.end method

.method static synthetic access$100(Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;->animationView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;->toVisible:Z

    return v0
.end method

.method private getHideShowDelta(Landroid/view/View;)I
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 68
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 69
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 70
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 72
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 73
    .local v2, "screenHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v3, v2, v3

    return v3
.end method
