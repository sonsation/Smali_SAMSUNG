.class public Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource;
.super Landroid/transition/Transition;
.source "ChangeImageSource.java"


# static fields
.field private static final ALPHA_MAX:I = 0xff

.field private static final PROPNAME_ALPHA:Ljava/lang/String; = " com.sec.android.app.music:ChangeImageSource:alpha"

.field private static final PROPNAME_IMAGE:Ljava/lang/String; = " com.sec.android.app.music:ChangeImageSource:image"


# instance fields
.field private final mEndImageResource:I

.field private final mStartImageResource:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "startImageResource"    # I
    .param p2, "endImageResource"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 27
    iput p1, p0, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource;->mStartImageResource:I

    .line 28
    iput p2, p0, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource;->mEndImageResource:I

    .line 29
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 39
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, " com.sec.android.app.music:ChangeImageSource:image"

    iget v2, p0, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource;->mEndImageResource:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, " com.sec.android.app.music:ChangeImageSource:alpha"

    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 33
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, " com.sec.android.app.music:ChangeImageSource:image"

    iget v2, p0, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource;->mStartImageResource:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, " com.sec.android.app.music:ChangeImageSource:alpha"

    const/16 v2, -0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 11
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x2

    .line 46
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-object v6

    .line 50
    :cond_1
    iget-object v0, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 51
    new-array v3, v9, [Z

    .line 52
    .local v3, "mIsChanged":[Z
    iget-object v2, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    .line 54
    .local v2, "view":Landroid/widget/ImageView;
    iget-object v0, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, " com.sec.android.app.music:ChangeImageSource:image"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 55
    .local v5, "startImageResource":I
    iget-object v0, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, " com.sec.android.app.music:ChangeImageSource:image"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 56
    .local v4, "endImageResource":I
    iget-object v0, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, " com.sec.android.app.music:ChangeImageSource:alpha"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 57
    .local v8, "startAlpha":I
    iget-object v0, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, " com.sec.android.app.music:ChangeImageSource:alpha"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 59
    .local v7, "endAlpha":I
    new-instance v0, Landroid/animation/IntEvaluator;

    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    new-array v1, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 60
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v1, v9

    const/4 v9, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v1, v9

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 61
    .local v6, "animator":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource$1;-><init>(Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource;Landroid/widget/ImageView;[ZII)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0
.end method
