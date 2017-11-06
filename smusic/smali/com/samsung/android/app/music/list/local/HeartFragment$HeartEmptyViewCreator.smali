.class final Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;
.super Ljava/lang/Object;
.source "HeartFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeartEmptyViewCreator"
.end annotation


# static fields
.field private static final VIEW_ALPHA_CHANGE_DURATION:I = 0x14d

.field private static final VIEW_TRANSITION_DURATION:I = 0x1f4


# instance fields
.field private final mEmptyViewAnimationController:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationController;

.field private final mFragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 1508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1509
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;->mFragment:Landroid/app/Fragment;

    .line 1510
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1511
    .local v0, "activity":Landroid/app/Activity;
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationController;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationController;

    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;->mEmptyViewAnimationController:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationController;

    .line 1513
    return-void

    .line 1511
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$2600(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;)Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;->mEmptyViewAnimationController:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationController;

    return-object v0
.end method

.method private makeUpAndFadeInAnimation(Landroid/view/View;I)Landroid/view/ViewPropertyAnimator;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delay"    # I

    .prologue
    const/4 v3, 0x0

    .line 1586
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d06fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1588
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1589
    new-instance v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator$3;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;Landroid/view/View;)V

    .line 1596
    .local v0, "startAnimationRunnable":Ljava/lang/Runnable;
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_90:Landroid/view/animation/Interpolator;

    .line 1597
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1598
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public createEmptyView()Landroid/view/View;
    .locals 13

    .prologue
    const/4 v10, 0x0

    const/16 v12, 0x64

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1517
    iget-object v8, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v8}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1518
    .local v5, "resources":Landroid/content/res/Resources;
    iget-object v8, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f04006d

    .line 1519
    invoke-virtual {v8, v9, v10, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1521
    .local v1, "emptyView":Landroid/view/View;
    const v8, 0x7f1201ca

    .line 1522
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;

    .line 1523
    .local v2, "iconImageView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;
    const v8, 0x7f090002

    invoke-virtual {v2, v8}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->setPathLineImage(I)V

    .line 1524
    new-array v8, v6, [I

    const v9, 0x7f0d06fd

    .line 1525
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    aput v9, v8, v7

    .line 1524
    invoke-virtual {v2, v8}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->setImageLineWidth([I)V

    .line 1526
    new-array v8, v6, [I

    const v9, 0x7f110041

    .line 1527
    invoke-static {v5, v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v9

    aput v9, v8, v7

    .line 1526
    invoke-virtual {v2, v8}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->setImageLineColor([I)V

    .line 1528
    new-array v8, v6, [Landroid/graphics/Paint$Cap;

    sget-object v9, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    aput-object v9, v8, v7

    invoke-virtual {v2, v8}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->setImageLineCapStyle([Landroid/graphics/Paint$Cap;)V

    .line 1529
    new-array v8, v6, [J

    const-wide/16 v10, 0x258

    aput-wide v10, v8, v7

    invoke-virtual {v2, v8}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->setAnimationDurations([J)V

    .line 1530
    new-array v8, v6, [J

    const-wide/16 v10, 0x0

    aput-wide v10, v8, v7

    invoke-virtual {v2, v8}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->setAnimationDelays([J)V

    .line 1531
    new-array v8, v6, [I

    aput v6, v8, v7

    invoke-virtual {v2, v8}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->setAnimationDirections([I)V

    .line 1532
    new-array v8, v6, [Landroid/animation/TimeInterpolator;

    sget-object v9, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_OUT_80:Landroid/view/animation/Interpolator;

    aput-object v9, v8, v7

    invoke-virtual {v2, v8}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->setAnimationInterpolators([Landroid/animation/TimeInterpolator;)V

    .line 1534
    const v8, 0x7f1201cd

    .line 1535
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1536
    .local v3, "manageTabView":Landroid/widget/TextView;
    new-instance v8, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator$1;

    invoke-direct {v8, p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator$1;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1549
    iget-object v8, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;->mEmptyViewAnimationController:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationController;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;->mEmptyViewAnimationController:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationController;

    .line 1550
    invoke-interface {v8}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationController;->isEmptyViewAnimationEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1551
    .local v6, "withAnimation":Z
    :goto_0
    if-eqz v6, :cond_1

    .line 1552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1553
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewPropertyAnimator;>;"
    const v8, 0x7f1201cb

    .line 1554
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1553
    invoke-direct {p0, v8, v7}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;->makeUpAndFadeInAnimation(Landroid/view/View;I)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1555
    const v7, 0x7f1201cc

    .line 1556
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1555
    invoke-direct {p0, v7, v12}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;->makeUpAndFadeInAnimation(Landroid/view/View;I)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1557
    invoke-direct {p0, v3, v12}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;->makeUpAndFadeInAnimation(Landroid/view/View;I)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1558
    new-instance v4, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator$2;

    invoke-direct {v4, p0, v2, v0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator$2;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;Ljava/util/List;)V

    .line 1578
    .local v4, "preDrawListener":Landroid/view/ViewTreeObserver$OnPreDrawListener;
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1582
    .end local v0    # "animators":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewPropertyAnimator;>;"
    .end local v4    # "preDrawListener":Landroid/view/ViewTreeObserver$OnPreDrawListener;
    :goto_1
    return-object v1

    .end local v6    # "withAnimation":Z
    :cond_0
    move v6, v7

    .line 1550
    goto :goto_0

    .line 1580
    .restart local v6    # "withAnimation":Z
    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->show()V

    goto :goto_1
.end method
