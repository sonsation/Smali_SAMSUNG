.class Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;
.super Landroid/database/DataSetObserver;
.source "CircleIndicator.java"


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
    .line 220
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    .prologue
    .line 222
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 223
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->access$100(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    if-nez v2, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->access$100(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    .line 228
    .local v1, "newCount":I
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->getChildCount()I

    move-result v0

    .line 230
    .local v0, "currentCount":I
    if-eq v1, v0, :cond_0

    .line 232
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->access$400(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)I

    move-result v2

    if-ge v2, v1, :cond_2

    .line 233
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->access$100(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->access$402(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;I)I

    .line 238
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->access$700(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)V

    goto :goto_0

    .line 235
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->access$402(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;I)I

    goto :goto_1
.end method
