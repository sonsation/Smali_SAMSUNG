.class Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$3;
.super Ljava/lang/Object;
.source "MusicCategoryDetailArtistFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

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
    .line 160
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/SpinnerAdapter;

    .line 161
    .local v0, "adapter":Landroid/widget/SpinnerAdapter;
    instance-of v3, v0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailSortSpinnerAdapter;

    if-eqz v3, :cond_0

    .line 163
    check-cast v0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailSortSpinnerAdapter;

    .line 164
    .end local v0    # "adapter":Landroid/widget/SpinnerAdapter;
    invoke-virtual {v0, p3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailSortSpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 165
    .local v1, "countryGroup":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    .end local v1    # "countryGroup":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 168
    .restart local v1    # "countryGroup":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->access$100(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->getCountryGroup()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "lastCountryGroup":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->access$200(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;)Ljava/lang/String;

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

    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 172
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->access$100(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->requestListClear()V

    .line 173
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->access$100(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryConstant;->CountryGroupRequestType:[Ljava/lang/String;

    aget-object v4, v4, p3

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->loadArtistsWithSort(Ljava/lang/String;)V

    .line 175
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    sget-object v4, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryConstant;->CountryGroupRequestType:[Ljava/lang/String;

    aget-object v4, v4, p3

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->access$302(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "990"

    const-string v5, "9891"

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
    .line 185
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
