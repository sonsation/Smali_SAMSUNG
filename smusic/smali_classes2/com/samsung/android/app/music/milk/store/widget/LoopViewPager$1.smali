.class Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;
.super Ljava/lang/Object;
.source "LoopViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPreviousOffset:F

.field private mPreviousPosition:F

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    .line 198
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->mPreviousOffset:F

    .line 200
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->mPreviousPosition:F

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 253
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->access$000(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 254
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->access$201(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)I

    move-result v2

    .line 255
    .local v2, "position":I
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->access$000(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->toRealPosition(I)I

    move-result v3

    .line 256
    .local v3, "realPosition":I
    if-nez p1, :cond_1

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    .line 257
    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->access$000(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_1

    .line 258
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->setCurrentItem(IZ)V

    .line 262
    .end local v2    # "position":I
    .end local v3    # "realPosition":I
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->access$100(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 263
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->access$100(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 264
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->access$100(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 265
    .local v1, "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    if-eqz v1, :cond_2

    .line 266
    invoke-interface {v1, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 263
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    .end local v0    # "i":I
    .end local v1    # "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    :cond_3
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 221
    move v2, p1

    .line 222
    .local v2, "realPosition":I
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->access$000(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 223
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->access$000(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->toRealPosition(I)I

    move-result v2

    .line 225
    cmpl-float v3, p2, v8

    if-nez v3, :cond_1

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->mPreviousOffset:F

    cmpl-float v3, v3, v8

    if-nez v3, :cond_1

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    .line 226
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->access$000(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_1

    .line 227
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-virtual {v3, v2, v9}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->setCurrentItem(IZ)V

    .line 231
    :cond_1
    iput p2, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->mPreviousOffset:F

    .line 233
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->access$100(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 234
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->access$100(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 235
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->access$100(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 236
    .local v1, "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    if-eqz v1, :cond_2

    .line 237
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->access$000(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->access$000(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->getRealCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_3

    .line 238
    invoke-interface {v1, v2, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 234
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_3
    float-to-double v4, p2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v3, v4, v6

    if-lez v3, :cond_4

    .line 242
    invoke-interface {v1, v9, v8, v9}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_1

    .line 244
    :cond_4
    invoke-interface {v1, v2, v8, v9}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_1

    .line 250
    .end local v0    # "i":I
    .end local v1    # "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    :cond_5
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 204
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->access$000(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->toRealPosition(I)I

    move-result v2

    .line 205
    .local v2, "realPosition":I
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->mPreviousPosition:F

    int-to-float v4, v2

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    .line 206
    int-to-float v3, v2

    iput v3, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->mPreviousPosition:F

    .line 208
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->access$100(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 209
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->access$100(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 210
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->access$100(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 211
    .local v1, "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    if-eqz v1, :cond_0

    .line 212
    invoke-interface {v1, v2}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 209
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    .end local v0    # "i":I
    .end local v1    # "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    :cond_1
    return-void
.end method
