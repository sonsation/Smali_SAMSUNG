.class public Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;
.super Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;
.source "NItemLoopViewPager.java"


# instance fields
.field private mLayoutManager:Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 80
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->onLayout(ZIIII)V

    .line 81
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->onMeasure(II)V

    .line 76
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->onSizeChanged(IIII)V

    .line 71
    return-void
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 5
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;->mLayoutManager:Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;

    if-eqz v1, :cond_0

    .line 21
    instance-of v1, p1, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 22
    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;->mLayoutManager:Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->setLayoutManager(Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;)V

    .line 23
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;->mLayoutManager:Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;

    invoke-interface {v1, p0}, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 31
    .local v0, "count":I
    if-nez v0, :cond_2

    .line 32
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;->setBoundaryLooping(Z)V

    .line 33
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;->setBoundaryCaching(Z)V

    .line 42
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 45
    return-void

    .line 25
    .end local v0    # "count":I
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Should use NItemPagerAdapter if use LayoutManager!!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    .restart local v0    # "count":I
    :cond_2
    if-ne v0, v4, :cond_3

    .line 35
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;->setBoundaryLooping(Z)V

    .line 36
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;->setBoundaryCaching(Z)V

    goto :goto_0

    .line 38
    :cond_3
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;->setBoundaryLooping(Z)V

    .line 39
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;->setBoundaryCaching(Z)V

    goto :goto_0
.end method

.method public setLayoutManager(Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;)V
    .locals 4
    .param p1, "layoutManager"    # Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;->mLayoutManager:Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 50
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    if-nez v0, :cond_0

    .line 66
    .end local v0    # "adapter":Landroid/support/v4/view/PagerAdapter;
    :goto_0
    return-void

    .line 54
    .restart local v0    # "adapter":Landroid/support/v4/view/PagerAdapter;
    :cond_0
    const/4 v1, 0x0

    .line 55
    .local v1, "realAdapter":Landroid/support/v4/view/PagerAdapter;
    instance-of v2, v0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    if-eqz v2, :cond_3

    .line 56
    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    .end local v0    # "adapter":Landroid/support/v4/view/PagerAdapter;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->getRealAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    .line 61
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    instance-of v2, v1, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;

    if-nez v2, :cond_4

    .line 62
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Should use NItemPagerAdapter if use LayoutManager!!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    .restart local v0    # "adapter":Landroid/support/v4/view/PagerAdapter;
    :cond_3
    instance-of v2, v0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;

    if-eqz v2, :cond_1

    .line 58
    move-object v1, v0

    goto :goto_1

    .line 65
    .end local v0    # "adapter":Landroid/support/v4/view/PagerAdapter;
    :cond_4
    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;

    .end local v1    # "realAdapter":Landroid/support/v4/view/PagerAdapter;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;->mLayoutManager:Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->setLayoutManager(Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;)V

    goto :goto_0
.end method
