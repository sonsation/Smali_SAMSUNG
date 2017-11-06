.class public Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;
.super Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;
.source "MyMusicTabLayout.java"


# instance fields
.field private mMainTabMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;->mMainTabMode:I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;->mMainTabMode:I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;->mMainTabMode:I

    .line 31
    return-void
.end method

.method private setTabViews()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;->getTabStrip()Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildCount()I

    move-result v3

    .line 64
    .local v3, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;->getTabStrip()Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 66
    .local v5, "tabView":Landroid/view/View;
    const v6, 0x7f120583

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 67
    .local v4, "tabTextView":Landroid/view/View;
    const v6, 0x7f120584

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 69
    .local v0, "divider":Landroid/widget/ImageView;
    iget v6, p0, Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;->mMainTabMode:I

    packed-switch v6, :pswitch_data_0

    .line 86
    :goto_1
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;->setTabTextSize(Landroid/view/View;)V

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :pswitch_0
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d02c6

    .line 73
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 74
    .local v2, "musicTabPadding":I
    invoke-virtual {v4, v2, v8, v2, v8}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_1

    .line 77
    .end local v2    # "musicTabPadding":I
    :pswitch_1
    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d023f

    .line 81
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 82
    .restart local v2    # "musicTabPadding":I
    invoke-virtual {v4, v2, v8, v2, v8}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_1

    .line 88
    .end local v0    # "divider":Landroid/widget/ImageView;
    .end local v2    # "musicTabPadding":I
    .end local v4    # "tabTextView":Landroid/view/View;
    .end local v5    # "tabView":Landroid/view/View;
    :cond_1
    return-void

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addTab(ILjava/lang/CharSequence;I)Landroid/view/View;
    .locals 7
    .param p1, "layoutResId"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "drawableResId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    .line 92
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->addTab(ILjava/lang/CharSequence;I)Landroid/view/View;

    move-result-object v3

    .line 93
    .local v3, "tabView":Landroid/view/View;
    const v4, 0x7f120583

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 94
    .local v2, "tabTextView":Landroid/view/View;
    const v4, 0x7f120584

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 96
    .local v0, "divider":Landroid/widget/ImageView;
    iget v4, p0, Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;->mMainTabMode:I

    packed-switch v4, :pswitch_data_0

    .line 113
    :goto_0
    return-object v3

    .line 98
    :pswitch_0
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d02c6

    .line 100
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 101
    .local v1, "musicTabPadding":I
    invoke-virtual {v2, v1, v6, v1, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 104
    .end local v1    # "musicTabPadding":I
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;->getTabStrip()Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 105
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d023f

    .line 108
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 109
    .restart local v1    # "musicTabPadding":I
    invoke-virtual {v2, v1, v6, v1, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setMainTabMode(I)V
    .locals 3
    .param p1, "mainTabMode"    # I

    .prologue
    .line 34
    iget v1, p0, Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;->mMainTabMode:I

    if-ne v1, p1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 38
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;->mMainTabMode:I

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 41
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;->mMainTabMode:I

    packed-switch v1, :pswitch_data_0

    .line 59
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;->setTabViews()V

    goto :goto_0

    .line 43
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;->setIndicatorEnabled(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d02c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 46
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    const v1, 0x7f0d02c5

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;->setTabTextSize(I)V

    goto :goto_1

    .line 50
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;->setIndicatorEnabled(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d023d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 53
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    const v1, 0x7f0d023e

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/widget/MyMusicTabLayout;->setTabTextSize(I)V

    goto :goto_1

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
