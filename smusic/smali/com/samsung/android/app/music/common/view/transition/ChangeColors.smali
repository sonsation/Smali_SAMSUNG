.class public Lcom/samsung/android/app/music/common/view/transition/ChangeColors;
.super Landroid/transition/Transition;
.source "ChangeColors.java"


# static fields
.field private static final PROPNAME_BACKGROUND:Ljava/lang/String; = " com.sec.android.app.music:ChangeColors:setColor"


# instance fields
.field private mEndColorResource:I

.field private mStartColorResource:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "startColorResource"    # I
    .param p2, "endColorResource"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 28
    iput p1, p0, Lcom/samsung/android/app/music/common/view/transition/ChangeColors;->mStartColorResource:I

    .line 29
    iput p2, p0, Lcom/samsung/android/app/music/common/view/transition/ChangeColors;->mEndColorResource:I

    .line 30
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 41
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, " com.sec.android.app.music:ChangeColors:setColor"

    iget v2, p0, Lcom/samsung/android/app/music/common/view/transition/ChangeColors;->mEndColorResource:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_0
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 34
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, " com.sec.android.app.music:ChangeColors:setColor"

    iget v2, p0, Lcom/samsung/android/app/music/common/view/transition/ChangeColors;->mStartColorResource:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_0
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 10
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v0, 0x0

    .line 49
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-object v0

    .line 52
    :cond_1
    iget-object v6, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 53
    iget-object v5, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v5, Landroid/widget/ImageView;

    .line 55
    .local v5, "view":Landroid/widget/ImageView;
    iget-object v6, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, " com.sec.android.app.music:ChangeColors:setColor"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 56
    .local v4, "startColorResource":I
    iget-object v6, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, " com.sec.android.app.music:ChangeColors:setColor"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 57
    .local v2, "endColorResource":I
    invoke-virtual {v5}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 58
    invoke-virtual {v5}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    .line 57
    invoke-static {v6, v4, v7}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 60
    .local v3, "startColor":I
    invoke-virtual {v5}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v5}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-static {v6, v2, v7}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 62
    .local v1, "endColor":I
    new-instance v6, Landroid/animation/ArgbEvaluator;

    invoke-direct {v6}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 64
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v6, Lcom/samsung/android/app/music/common/view/transition/ChangeColors$1;

    invoke-direct {v6, p0, v5}, Lcom/samsung/android/app/music/common/view/transition/ChangeColors$1;-><init>(Lcom/samsung/android/app/music/common/view/transition/ChangeColors;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0
.end method
