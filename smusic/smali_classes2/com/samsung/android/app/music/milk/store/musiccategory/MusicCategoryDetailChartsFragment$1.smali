.class Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment$1;
.super Ljava/lang/Object;
.source "MusicCategoryDetailChartsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/SpinnerAdapter;

    .line 169
    .local v0, "adapter":Landroid/widget/SpinnerAdapter;
    instance-of v3, v0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailSortSpinnerAdapter;

    if-eqz v3, :cond_0

    .line 171
    check-cast v0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailSortSpinnerAdapter;

    .line 172
    .end local v0    # "adapter":Landroid/widget/SpinnerAdapter;
    invoke-virtual {v0, p3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailSortSpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 173
    .local v2, "year":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 187
    .end local v2    # "year":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 177
    .restart local v2    # "year":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->access$000(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->getYear()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "lastYear":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->access$100(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemSelected : lastYear : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 180
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;

    invoke-static {v3, v2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->access$202(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->access$300(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;->deselectAll()V

    .line 182
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->access$000(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->loadTopChartTracksWithSort(ILjava/lang/String;)V

    .line 185
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "988"

    const-string v5, "9874"

    invoke-virtual {v3, v4, v5, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
