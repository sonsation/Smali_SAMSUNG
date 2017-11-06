.class Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;
.super Ljava/lang/Object;
.source "MiniPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MiniPlayerAnimator"
.end annotation


# instance fields
.field private final mAlphaAnimationViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mScaleAlphaAnimationViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mValueAnimators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->mValueAnimators:Ljava/util/List;

    .line 531
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->mAlphaAnimationViews:Ljava/util/Set;

    .line 533
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->mScaleAlphaAnimationViews:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$1;

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;-><init>()V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;

    .prologue
    .line 527
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->mAlphaAnimationViews:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;Landroid/view/View;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 527
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->getVisible(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;

    .prologue
    .line 527
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->mScaleAlphaAnimationViews:Ljava/util/Set;

    return-object v0
.end method

.method private getVisible(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 731
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 742
    :cond_0
    :goto_0
    return v1

    .line 738
    :sswitch_0
    invoke-static {}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->access$600()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 740
    :sswitch_1
    invoke-static {}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer;->access$600()Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    goto :goto_0

    .line 731
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f12003c -> :sswitch_0
        0x7f120043 -> :sswitch_0
        0x7f1201f4 -> :sswitch_0
        0x7f1201f5 -> :sswitch_0
        0x7f1201f6 -> :sswitch_0
        0x7f1204ad -> :sswitch_0
        0x7f1204af -> :sswitch_1
    .end sparse-switch
.end method

.method private resetAnimator()V
    .locals 3

    .prologue
    .line 724
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->mValueAnimators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 725
    .local v0, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 727
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->mValueAnimators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 728
    return-void
.end method


# virtual methods
.method addAlphaAnimationView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 536
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->mAlphaAnimationViews:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 537
    return-void
.end method

.method addScaleAlphaAnimationView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 540
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->mScaleAlphaAnimationViews:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 541
    return-void
.end method

.method public hide()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const-wide/16 v12, 0x12c

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x2

    .line 647
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->resetAnimator()V

    .line 649
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->mAlphaAnimationViews:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 651
    .local v5, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/Integer;>;"
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/view/View;

    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/view/View;

    invoke-direct {p0, v8}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->getVisible(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 652
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setAlpha(F)V

    .line 653
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7, v10, v14}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 656
    .end local v5    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/Integer;>;"
    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    .line 657
    .local v4, "initValue":F
    const/4 v3, 0x0

    .line 659
    .local v3, "endValue":F
    new-array v7, v10, [F

    fill-array-data v7, :array_0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 660
    .local v1, "alphaOnly":Landroid/animation/ValueAnimator;
    invoke-virtual {v1, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 661
    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_90:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 662
    new-instance v7, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator$5;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator$5;-><init>(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;)V

    invoke-virtual {v1, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 675
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->mValueAnimators:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->mScaleAlphaAnimationViews:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 679
    .restart local v5    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/Integer;>;"
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/view/View;

    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/view/View;

    invoke-direct {p0, v8}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->getVisible(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 680
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setAlpha(F)V

    .line 681
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setScaleX(F)V

    .line 682
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setScaleY(F)V

    .line 683
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7, v10, v14}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1

    .line 685
    .end local v5    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/Integer;>;"
    :cond_1
    new-array v7, v10, [F

    fill-array-data v7, :array_1

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 686
    .local v0, "alpha":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 687
    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_90:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 688
    new-instance v7, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator$6;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator$6;-><init>(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 697
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->mValueAnimators:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    new-array v7, v10, [F

    fill-array-data v7, :array_2

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 700
    .local v6, "scale":Landroid/animation/ValueAnimator;
    invoke-virtual {v6, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 701
    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->ELASTIC_80:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 702
    new-instance v7, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator$7;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator$7;-><init>(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 716
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->mValueAnimators:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->mValueAnimators:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ValueAnimator;

    .line 719
    .local v2, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    .line 721
    .end local v2    # "animator":Landroid/animation/ValueAnimator;
    :cond_2
    return-void

    .line 659
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 685
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 699
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public show(Landroid/animation/Animator$AnimatorListener;)V
    .locals 14
    .param p1, "alphaListener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->resetAnimator()V

    .line 546
    iget-object v11, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->mAlphaAnimationViews:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 547
    .local v8, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/Integer;>;"
    iget-object v11, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    .line 548
    iget-object v11, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 551
    .end local v8    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/Integer;>;"
    :cond_0
    const/4 v5, 0x0

    .line 552
    .local v5, "initValue":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 554
    .local v4, "endValue":F
    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_0

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 555
    .local v0, "alphaOnly":Landroid/animation/ValueAnimator;
    const-wide/16 v12, 0x12c

    invoke-virtual {v0, v12, v13}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 556
    const-wide/16 v12, 0xc8

    invoke-virtual {v0, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 557
    sget-object v11, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_90:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 558
    new-instance v11, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator$1;

    invoke-direct {v11, p0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator$1;-><init>(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;)V

    invoke-virtual {v0, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 573
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 574
    iget-object v11, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->mValueAnimators:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 577
    .local v7, "normalAlphaViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 578
    .local v3, "dimAlphaViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v11, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->mScaleAlphaAnimationViews:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 580
    .restart local v8    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/Integer;>;"
    iget-object v11, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Landroid/view/View;

    iget-object v12, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Landroid/view/View;

    invoke-direct {p0, v12}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->getVisible(Landroid/view/View;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 581
    iget-object v11, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getAlpha()F

    move-result v10

    .line 582
    .local v10, "viewAlpha":F
    const v11, 0x3ebd70a4    # 0.37f

    sub-float v11, v10, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const v12, 0x33d6bf95    # 1.0E-7f

    cmpg-float v11, v11, v12

    if-gez v11, :cond_1

    .line 583
    iget-object v11, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    :goto_2
    iget-object v11, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setAlpha(F)V

    .line 588
    iget-object v11, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setScaleX(F)V

    .line 589
    iget-object v11, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    .line 585
    :cond_1
    iget-object v11, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 592
    .end local v8    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/Integer;>;"
    .end local v10    # "viewAlpha":F
    :cond_2
    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_1

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 593
    .local v6, "normalAlpha":Landroid/animation/ValueAnimator;
    const-wide/16 v12, 0x12c

    invoke-virtual {v6, v12, v13}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 594
    const-wide/16 v12, 0xa6

    invoke-virtual {v6, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 595
    sget-object v11, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_90:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 596
    new-instance v11, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator$2;

    invoke-direct {v11, p0, v7}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator$2;-><init>(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;Ljava/util/List;)V

    invoke-virtual {v6, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 605
    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_2

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 606
    .local v2, "dimAlpha":Landroid/animation/ValueAnimator;
    const-wide/16 v12, 0x12c

    invoke-virtual {v2, v12, v13}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 607
    const-wide/16 v12, 0xa6

    invoke-virtual {v2, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 608
    sget-object v11, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_90:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 609
    new-instance v11, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator$3;

    invoke-direct {v11, p0, v3}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator$3;-><init>(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;Ljava/util/List;)V

    invoke-virtual {v2, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 618
    iget-object v11, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->mValueAnimators:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    iget-object v11, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->mValueAnimators:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_3

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 622
    .local v9, "scale":Landroid/animation/ValueAnimator;
    const-wide/16 v12, 0x12c

    invoke-virtual {v9, v12, v13}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 623
    const-wide/16 v12, 0x258

    invoke-virtual {v9, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 624
    sget-object v11, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->ELASTIC_80:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 625
    new-instance v11, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator$4;

    invoke-direct {v11, p0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator$4;-><init>(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;)V

    invoke-virtual {v9, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 639
    iget-object v11, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->mValueAnimators:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    iget-object v11, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->mValueAnimators:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 642
    .local v1, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    .line 644
    .end local v1    # "animator":Landroid/animation/ValueAnimator;
    :cond_3
    return-void

    .line 554
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 592
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 605
    :array_2
    .array-data 4
        0x0
        0x3ebd70a4    # 0.37f
    .end array-data

    .line 621
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
