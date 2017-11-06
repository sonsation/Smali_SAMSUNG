.class Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment$2;
.super Ljava/lang/Object;
.source "MusicCategoryDetailAlbumsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .line 132
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/SpinnerAdapter;

    .line 133
    .local v0, "adapter":Landroid/widget/SpinnerAdapter;
    instance-of v3, v0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailSortSpinnerAdapter;

    if-eqz v3, :cond_0

    .line 135
    check-cast v0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailSortSpinnerAdapter;

    .line 136
    .end local v0    # "adapter":Landroid/widget/SpinnerAdapter;
    invoke-virtual {v0, p3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailSortSpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 137
    .local v1, "countryGroup":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    .end local v1    # "countryGroup":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 141
    .restart local v1    # "countryGroup":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->access$100(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->getCountryGroup()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "lastCountryGroup":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->access$200(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemSelected : lastCountryGroup : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 145
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->access$100(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->requestListClear()V

    .line 146
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->access$100(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryConstant;->CountryGroupRequestType:[Ljava/lang/String;

    aget-object v4, v4, p3

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->loadAlbumsWithSort(Ljava/lang/String;)V

    .line 150
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "989"

    const-string v5, "9881"

    add-int/lit8 v6, p3, 0x1

    int-to-long v6, v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;J)V

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
    .line 157
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
