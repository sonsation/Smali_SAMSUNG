.class Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;
.super Ljava/lang/Object;
.source "CircleIndicator.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 213
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 178
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 182
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->access$100(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->access$100(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-gtz v2, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->access$200(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 187
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->access$200(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    .line 188
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->access$200(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 191
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->access$300(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 192
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->access$300(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    .line 193
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->access$300(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 197
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->access$400(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)I

    move-result v2

    if-ltz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->access$400(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "currentIndicator":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 198
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->access$500(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 199
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->access$200(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 200
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->access$200(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 203
    .end local v0    # "currentIndicator":Landroid/view/View;
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 204
    .local v1, "selectedIndicator":Landroid/view/View;
    if-eqz v1, :cond_5

    .line 205
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->access$600(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 206
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->access$300(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 207
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->access$300(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 209
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v2, p1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->access$402(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;I)I

    goto/16 :goto_0
.end method
