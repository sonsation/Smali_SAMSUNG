.class public Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PenAirViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field mDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    .line 41
    iput-object p1, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->context:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->setDescriptions()V

    .line 39
    return-void
.end method

.method private setDescriptions()V
    .locals 4

    .prologue
    .line 95
    new-instance v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;-><init>()V

    .line 96
    .local v0, "description":Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;
    iget-object v2, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 99
    .local v1, "hasSoftkey":Z
    new-instance v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;

    .end local v0    # "description":Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;
    invoke-direct {v0}, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;-><init>()V

    .line 100
    .restart local v0    # "description":Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    const v2, 0x7f02055d

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    .line 107
    :goto_0
    const v2, 0x7f0b09cb

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->summary:I

    .line 108
    iget-object v2, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;

    .end local v0    # "description":Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;
    invoke-direct {v0}, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;-><init>()V

    .line 112
    .restart local v0    # "description":Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    const v2, 0x7f02055e

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    .line 119
    :goto_1
    const v2, 0x7f0b09cc

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->summary:I

    .line 120
    iget-object v2, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;

    .end local v0    # "description":Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;
    invoke-direct {v0}, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;-><init>()V

    .line 130
    .restart local v0    # "description":Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 131
    const v2, 0x7f02055f

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    .line 137
    :goto_2
    const v2, 0x7f0b09cd

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->summary:I

    .line 138
    iget-object v2, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;

    .end local v0    # "description":Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;
    invoke-direct {v0}, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;-><init>()V

    .line 142
    .restart local v0    # "description":Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 143
    const v2, 0x7f020560

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    .line 149
    :goto_3
    const v2, 0x7f0b09ce

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->summary:I

    .line 150
    iget-object v2, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    return-void

    .line 102
    :cond_0
    if-eqz v1, :cond_1

    .line 103
    const v2, 0x7f020559

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    goto :goto_0

    .line 105
    :cond_1
    const v2, 0x7f020554

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    goto :goto_0

    .line 114
    :cond_2
    if-eqz v1, :cond_3

    .line 115
    const v2, 0x7f02055a

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    goto :goto_1

    .line 117
    :cond_3
    const v2, 0x7f020555

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    goto :goto_1

    .line 132
    :cond_4
    if-eqz v1, :cond_5

    .line 133
    const v2, 0x7f02055b

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    goto :goto_2

    .line 135
    :cond_5
    const v2, 0x7f020557

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    goto :goto_2

    .line 144
    :cond_6
    if-eqz v1, :cond_7

    .line 145
    const v2, 0x7f02055c

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    goto :goto_3

    .line 147
    :cond_7
    const v2, 0x7f020558

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    goto :goto_3
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 90
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 89
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 9
    .param p1, "pager"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 59
    const/4 v3, 0x0

    .line 61
    .local v3, "v":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0401e5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 62
    .local v3, "v":Landroid/view/View;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    const v4, 0x7f110600

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 64
    .local v2, "mTitleView":Landroid/widget/TextView;
    const v4, 0x7f110601

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 65
    .local v1, "mSummaryView":Landroid/widget/TextView;
    const v4, 0x7f1105ff

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 66
    .local v0, "mAnimationView":Landroid/widget/ImageView;
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int p2, v4, p2

    .line 70
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;

    iget v4, v4, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->summary:I

    if-nez v4, :cond_1

    .line 71
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;

    iget v4, v4, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    if-nez v4, :cond_2

    .line 78
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    :goto_1
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "pager":Landroid/view/ViewGroup;
    invoke-virtual {p1, v3, v7}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 85
    return-object v3

    .line 73
    .restart local p1    # "pager":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;

    iget v4, v4, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->summary:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;

    iget v4, v4, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
