.class public Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;
.super Landroid/view/animation/AnimationSet;
.source "TopViewHideShowAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation$Listener;
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

    .line 37
    invoke-direct {p0, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 38
    iput-boolean p2, p0, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;->toVisible:Z

    .line 39
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;->animationView:Landroid/view/View;

    .line 42
    if-eqz p2, :cond_0

    move v3, v6

    .line 43
    .local v3, "startAlpha":F
    :goto_0
    if-eqz p2, :cond_1

    .line 45
    .local v1, "endAlpha":F
    :goto_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 46
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 50
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    neg-int v4, v7

    .line 51
    .local v4, "startY":I
    :goto_2
    if-eqz p2, :cond_3

    .line 52
    .local v2, "endY":I
    :goto_3
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    int-to-float v7, v4

    int-to-float v8, v2

    invoke-direct {v5, v6, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 53
    .local v5, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    if-eqz p2, :cond_4

    new-instance v6, Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v6}, Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;-><init>()V

    :goto_4
    invoke-virtual {v5, v6}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 54
    invoke-virtual {v5, p3, p4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;->addAnimation(Landroid/view/animation/Animation;)V

    .line 59
    invoke-virtual {p0, v5}, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;->addAnimation(Landroid/view/animation/Animation;)V

    .line 61
    new-instance v6, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation$Listener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation$Listener;-><init>(Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation$1;)V

    invoke-virtual {p0, v6}, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 62
    return-void

    .end local v0    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    .end local v1    # "endAlpha":F
    .end local v2    # "endY":I
    .end local v3    # "startAlpha":F
    .end local v4    # "startY":I
    .end local v5    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_0
    move v3, v1

    .line 42
    goto :goto_0

    .restart local v3    # "startAlpha":F
    :cond_1
    move v1, v6

    .line 43
    goto :goto_1

    .restart local v0    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    .restart local v1    # "endAlpha":F
    :cond_2
    move v4, v2

    .line 50
    goto :goto_2

    .line 51
    .restart local v4    # "startY":I
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    neg-int v2, v7

    goto :goto_3

    .line 53
    .restart local v2    # "endY":I
    .restart local v5    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_4
    new-instance v6, Landroid/support/v4/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v6}, Landroid/support/v4/view/animation/FastOutLinearInInterpolator;-><init>()V

    goto :goto_4
.end method

.method static synthetic access$100(Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;->animationView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;->toVisible:Z

    return v0
.end method
