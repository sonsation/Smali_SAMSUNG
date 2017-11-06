.class Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment$1;
.super Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;
.source "MilkSearchBaseTabHostFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;
    .param p2, "x0"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;

    invoke-direct {p0, p2}, Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;-><init>(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 3
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->access$100(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->access$400(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onTabUnselected : tab does not initialized yet"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->access$500(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabReselected : pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->dispatchTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V

    goto :goto_0
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 3
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 58
    if-eqz p1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->access$000(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabSelected : pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->dispatchTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 62
    :cond_0
    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 3
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->access$100(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->access$200(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onTabUnselected : tab does not initialized yet"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->access$300(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabUnselected : pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseTabHostFragment;->dispatchTabUnSelected(Landroid/support/design/widget/TabLayout$Tab;)V

    goto :goto_0
.end method
