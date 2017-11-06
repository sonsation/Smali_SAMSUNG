.class public Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;
.super Landroid/widget/FrameLayout;
.source "RollingBanner.java"


# static fields
.field private static final DEFAULT_RATIO:F = 0.0f

.field private static final DEFAULT_ROLLING_TIME:I = 0x2710

.field private static final LOG_TAG:Ljava/lang/String; = "RollingBanner"


# instance fields
.field defaultRollingTime:I

.field private mRatio:F

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field pagerAdapter:Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;

.field rollingTime:I

.field viewPager:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, -0x1

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->defaultRollingTime:I

    .line 30
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->rollingTime:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->mRatio:F

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v9, -0x1

    .line 62
    if-eqz p2, :cond_4

    .line 63
    sget-object v7, Lcom/samsung/android/app/music/R$styleable;->MilkRollingBanner:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 65
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 66
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 67
    .local v1, "attr":I
    if-nez v1, :cond_0

    .line 68
    const-string v7, "RollingBanner"

    const-string v8, "init : has rollingTime attrs"

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->setRollingTime(I)V

    .line 65
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    .end local v1    # "attr":I
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    sget-object v7, Lcom/samsung/android/app/music/R$styleable;->MilkRatioView:[I

    .line 75
    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 76
    .local v5, "ratioArray":Landroid/content/res/TypedArray;
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 77
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    .line 78
    invoke-virtual {v5, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 79
    .restart local v1    # "attr":I
    if-nez v1, :cond_2

    .line 80
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v1, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 81
    .local v4, "ratio":F
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->setRatio(F)V

    .line 77
    .end local v4    # "ratio":F
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 84
    .end local v1    # "attr":I
    :cond_3
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    .end local v0    # "array":Landroid/content/res/TypedArray;
    .end local v2    # "count":I
    .end local v3    # "index":I
    .end local v5    # "ratioArray":Landroid/content/res/TypedArray;
    :cond_4
    const v7, 0x7f040177

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 87
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0, v6, v9, v9}, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->addView(Landroid/view/View;II)V

    .line 88
    const v7, 0x7f120424

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    iput-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->viewPager:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    .line 89
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->stopAutoScroll()V

    .line 53
    const-string v0, "RollingBanner"

    const-string v1, "onDetachedFromWindow : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 161
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->mRatio:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 162
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 163
    .local v2, "width":I
    int-to-float v3, v2

    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->mRatio:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 164
    .local v0, "height":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 165
    .local v1, "mode":I
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 166
    const-string v3, "RollingBanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMeasure : width - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", height - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .end local v0    # "height":I
    .end local v1    # "mode":I
    .end local v2    # "width":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 169
    return-void
.end method

.method public setBannerList(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p2, "logPage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/samsung/android/app/music/milk/store/BannerItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "bannerList":Ljava/util/List;, "Ljava/util/List<+Lcom/samsung/android/app/music/milk/store/BannerItem;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->pagerAdapter:Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->pagerAdapter:Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 100
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v3, :cond_3

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->viewPager:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->setBoundaryLooping(Z)V

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->viewPager:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->pagerAdapter:Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 106
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->defaultRollingTime:I

    if-gtz v0, :cond_2

    .line 107
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 108
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/BannerItem;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/BannerItem;->getRollingTime()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->defaultRollingTime:I

    .line 109
    const-string v0, "RollingBanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBannerList : default rolling time - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->defaultRollingTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_2
    :goto_1
    return-void

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->viewPager:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->setBoundaryLooping(Z)V

    goto :goto_0

    .line 111
    :cond_4
    const/16 v0, 0x2710

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->defaultRollingTime:I

    goto :goto_1
.end method

.method public setRatio(F)V
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    .line 57
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->mRatio:F

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->requestLayout()V

    .line 59
    return-void
.end method

.method public setRollingTime(I)V
    .locals 3
    .param p1, "rollingTime"    # I

    .prologue
    .line 122
    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->rollingTime:I

    .line 123
    const-string v0, "RollingBanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRollingTime : rolling time - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1, "type"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->pagerAdapter:Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->pagerAdapter:Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 131
    :cond_0
    return-void
.end method

.method public startAutoScroll()V
    .locals 4

    .prologue
    .line 137
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->pagerAdapter:Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->pagerAdapter:Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 138
    :cond_0
    const-string v1, "RollingBanner"

    const-string/jumbo v2, "startAutoScroll : banner not set or banner size is 0"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :goto_0
    return-void

    .line 141
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->rollingTime:I

    .line 142
    .local v0, "realRollingTime":I
    if-gtz v0, :cond_2

    .line 143
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->defaultRollingTime:I

    .line 145
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->viewPager:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->setAutoScrollDuration(I)V

    .line 146
    const-string v1, "RollingBanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAutoScroll : rolling time - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", count - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->pagerAdapter:Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;

    .line 147
    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->viewPager:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->pagerAdapter:Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->setOffscreenPageLimit(I)V

    .line 149
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->viewPager:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->startAutoScroll()V

    goto :goto_0
.end method

.method public stopAutoScroll()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->viewPager:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->stopAutoScroll()V

    .line 157
    return-void
.end method

.method public updateBannerList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/samsung/android/app/music/milk/store/BannerItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "bannerList":Ljava/util/List;, "Ljava/util/List<+Lcom/samsung/android/app/music/milk/store/BannerItem;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RollingBanner;->pagerAdapter:Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;->setBannerList(Ljava/util/List;)V

    .line 93
    return-void
.end method
