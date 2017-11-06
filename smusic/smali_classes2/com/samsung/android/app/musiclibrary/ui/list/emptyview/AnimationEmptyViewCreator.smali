.class public Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;
.super Ljava/lang/Object;
.source "AnimationEmptyViewCreator.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;


# static fields
.field private static final VIEW_ALPHA_CHANGE_DURATION:I = 0x14d

.field private static final VIEW_TRANSITION_DURATION:I = 0x1f4


# instance fields
.field private final mEmptyGuideTextId:I

.field private final mEmptyStateTextId:I

.field private final mEmptyViewAnimationController:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationController;

.field private final mFragment:Landroid/app/Fragment;

.field private final mWinsetUiEnabled:Z


# direct methods
.method public constructor <init>(Landroid/app/Fragment;II)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "emptyStateTextId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "emptyGuideTextId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;->mFragment:Landroid/app/Fragment;

    .line 45
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;->mEmptyStateTextId:I

    .line 46
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;->mEmptyGuideTextId:I

    .line 47
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;->mWinsetUiEnabled:Z

    .line 48
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 49
    .local v0, "activity":Landroid/app/Activity;
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationController;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationController;

    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;->mEmptyViewAnimationController:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationController;

    .line 51
    return-void

    .line 49
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Fragment;IIZ)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "emptyStateTextId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "emptyGuideTextId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p4, "winsetUiEnabled"    # Z

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;->mFragment:Landroid/app/Fragment;

    .line 56
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;->mEmptyStateTextId:I

    .line 57
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;->mEmptyGuideTextId:I

    .line 58
    iput-boolean p4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;->mWinsetUiEnabled:Z

    .line 59
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 60
    .local v0, "activity":Landroid/app/Activity;
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationController;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationController;

    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;->mEmptyViewAnimationController:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationController;

    .line 62
    return-void

    .line 60
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;)Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;->mEmptyViewAnimationController:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationController;

    return-object v0
.end method

.method private makeUpAndFadeInAnimation(Landroid/view/View;I)Landroid/view/ViewPropertyAnimator;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delay"    # I

    .prologue
    const/4 v3, 0x0

    .line 137
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/app/musiclibrary/R$dimen;->no_item_animation_start_position_y:I

    .line 138
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 137
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 139
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 140
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;Landroid/view/View;)V

    .line 147
    .local v0, "startAnimationRunnable":Ljava/lang/Runnable;
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_90:Landroid/view/animation/Interpolator;

    .line 148
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 149
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public createEmptyView()Landroid/view/View;
    .locals 14

    .prologue
    .line 66
    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v10}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 67
    .local v7, "resources":Landroid/content/res/Resources;
    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v10}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    sget v11, Lcom/samsung/android/app/musiclibrary/R$layout;->music_ui_animation_empty_view:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 68
    invoke-virtual {v10, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 70
    .local v2, "emptyView":Landroid/view/View;
    sget v10, Lcom/samsung/android/app/musiclibrary/R$dimen;->no_item_image_line_stroke_width:I

    .line 71
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    .line 72
    .local v8, "width":I
    iget-boolean v10, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;->mWinsetUiEnabled:Z

    if-eqz v10, :cond_2

    sget v10, Lcom/samsung/android/app/musiclibrary/R$color;->no_item_icon:I

    :goto_0
    const/4 v11, 0x0

    .line 73
    invoke-static {v7, v10, v11}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 75
    .local v1, "color":I
    sget v10, Lcom/samsung/android/app/musiclibrary/R$id;->no_item_image:I

    .line 76
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;

    .line 77
    .local v4, "iconImageView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;
    sget v10, Lcom/samsung/android/app/musiclibrary/R$raw;->icon_music:I

    invoke-virtual {v4, v10}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->setPathLineImage(I)V

    .line 78
    const/4 v10, 0x3

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v8, v10, v11

    const/4 v11, 0x1

    aput v8, v10, v11

    const/4 v11, 0x2

    aput v8, v10, v11

    invoke-virtual {v4, v10}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->setImageLineWidth([I)V

    .line 79
    const/4 v10, 0x3

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v1, v10, v11

    const/4 v11, 0x1

    aput v1, v10, v11

    const/4 v11, 0x2

    aput v1, v10, v11

    invoke-virtual {v4, v10}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->setImageLineColor([I)V

    .line 80
    const/4 v10, 0x3

    new-array v10, v10, [Landroid/graphics/Paint$Cap;

    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    aput-object v12, v10, v11

    invoke-virtual {v4, v10}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->setImageLineCapStyle([Landroid/graphics/Paint$Cap;)V

    .line 81
    const/4 v10, 0x3

    new-array v10, v10, [I

    fill-array-data v10, :array_0

    invoke-virtual {v4, v10}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->setAnimationDirections([I)V

    .line 83
    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/TimeInterpolator;

    const/4 v11, 0x0

    sget-object v12, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_OUT_80:Landroid/view/animation/Interpolator;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_OUT_80:Landroid/view/animation/Interpolator;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_OUT_80:Landroid/view/animation/Interpolator;

    aput-object v12, v10, v11

    .line 84
    invoke-virtual {v4, v10}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->setAnimationInterpolators([Landroid/animation/TimeInterpolator;)V

    .line 86
    const/4 v10, 0x3

    new-array v10, v10, [J

    fill-array-data v10, :array_1

    invoke-virtual {v4, v10}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->setAnimationDurations([J)V

    .line 87
    const/4 v10, 0x3

    new-array v10, v10, [J

    fill-array-data v10, :array_2

    invoke-virtual {v4, v10}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->setAnimationDelays([J)V

    .line 89
    sget v10, Lcom/samsung/android/app/musiclibrary/R$id;->no_item_text:I

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 90
    .local v5, "noItemView":Landroid/widget/TextView;
    iget v10, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;->mEmptyStateTextId:I

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(I)V

    .line 91
    iget-boolean v10, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;->mWinsetUiEnabled:Z

    if-nez v10, :cond_0

    .line 92
    sget v10, Lcom/samsung/android/app/musiclibrary/R$color;->blur_text:I

    const/4 v11, 0x0

    invoke-static {v7, v10, v11}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    :cond_0
    sget v10, Lcom/samsung/android/app/musiclibrary/R$id;->no_item_guide_text:I

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 96
    .local v3, "guideView":Landroid/widget/TextView;
    iget v10, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;->mEmptyGuideTextId:I

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    .line 97
    iget-boolean v10, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;->mWinsetUiEnabled:Z

    if-nez v10, :cond_1

    .line 98
    sget v10, Lcom/samsung/android/app/musiclibrary/R$color;->blur_text:I

    const/4 v11, 0x0

    invoke-static {v7, v10, v11}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    :cond_1
    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;->mEmptyViewAnimationController:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationController;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;->mEmptyViewAnimationController:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationController;

    .line 102
    invoke-interface {v10}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationController;->isEmptyViewAnimationEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v9, 0x1

    .line 103
    .local v9, "withAnimation":Z
    :goto_1
    if-eqz v9, :cond_4

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewPropertyAnimator;>;"
    const/4 v10, 0x0

    invoke-direct {p0, v5, v10}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;->makeUpAndFadeInAnimation(Landroid/view/View;I)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    const/16 v10, 0x64

    invoke-direct {p0, v3, v10}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;->makeUpAndFadeInAnimation(Landroid/view/View;I)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$1;

    invoke-direct {v6, p0, v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;Ljava/util/List;)V

    .line 129
    .local v6, "preDrawListener":Landroid/view/ViewTreeObserver$OnPreDrawListener;
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 133
    .end local v0    # "animators":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewPropertyAnimator;>;"
    .end local v6    # "preDrawListener":Landroid/view/ViewTreeObserver$OnPreDrawListener;
    :goto_2
    return-object v2

    .line 72
    .end local v1    # "color":I
    .end local v3    # "guideView":Landroid/widget/TextView;
    .end local v4    # "iconImageView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;
    .end local v5    # "noItemView":Landroid/widget/TextView;
    .end local v9    # "withAnimation":Z
    :cond_2
    sget v10, Lcom/samsung/android/app/musiclibrary/R$color;->blur_icon:I

    goto/16 :goto_0

    .line 102
    .restart local v1    # "color":I
    .restart local v3    # "guideView":Landroid/widget/TextView;
    .restart local v4    # "iconImageView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;
    .restart local v5    # "noItemView":Landroid/widget/TextView;
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 131
    .restart local v9    # "withAnimation":Z
    :cond_4
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->show()V

    goto :goto_2

    .line 81
    nop

    :array_0
    .array-data 4
        -0x1
        0x1
        -0x1
    .end array-data

    .line 86
    :array_1
    .array-data 8
        0x190
        0xc8
        0xc8
    .end array-data

    .line 87
    :array_2
    .array-data 8
        0x0
        0xc8
        0x12c
    .end array-data
.end method
