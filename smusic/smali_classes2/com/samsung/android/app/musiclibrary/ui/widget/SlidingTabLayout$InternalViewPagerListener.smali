.class Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;
.super Ljava/lang/Object;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalViewPagerListener"
.end annotation


# instance fields
.field private mPreviousScrollState:I

.field private mScrollState:I

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$1;

    .prologue
    .line 478
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 508
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->mPreviousScrollState:I

    .line 509
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    .line 510
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 486
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->access$100(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildCount()I

    move-result v5

    .line 487
    .local v5, "tabCount":I
    if-eqz v5, :cond_0

    if-ltz p1, :cond_0

    if-lt p1, v5, :cond_1

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    if-eq v6, v7, :cond_3

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    if-ne v6, v8, :cond_2

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->mPreviousScrollState:I

    if-eq v6, v7, :cond_3

    :cond_2
    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    if-nez v6, :cond_0

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->mPreviousScrollState:I

    if-ne v6, v8, :cond_0

    .line 496
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->access$100(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 497
    .local v3, "selectedTab":Landroid/view/View;
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->access$100(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    move-result-object v6

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 498
    .local v1, "nextTab":Landroid/view/View;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 499
    .local v4, "selectedTabWidth":I
    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 500
    .local v2, "nextTabWidth":I
    :cond_4
    add-int v6, v4, v2

    int-to-float v6, v6

    mul-float/2addr v6, p2

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    float-to-int v0, v6

    .line 501
    .local v0, "extraOffset":I
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-static {v6, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->access$200(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;II)V

    .line 502
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->access$100(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->onViewPagerPageChanged(IF)V

    goto :goto_0

    .end local v0    # "extraOffset":I
    .end local v2    # "nextTabWidth":I
    .end local v4    # "selectedTabWidth":I
    :cond_5
    move v4, v2

    .line 498
    goto :goto_1
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 514
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->mPreviousScrollState:I

    if-nez v0, :cond_1

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->access$200(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;II)V

    .line 518
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->access$100(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->onViewPagerPageChanged(IF)V

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->access$300(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;I)V

    .line 521
    return-void
.end method
