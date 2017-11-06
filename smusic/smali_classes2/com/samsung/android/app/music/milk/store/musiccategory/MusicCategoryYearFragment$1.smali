.class Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment$1;
.super Ljava/lang/Object;
.source "MusicCategoryYearFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 6
    .param p1, "listView"    # Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "vh"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "position"    # I

    .prologue
    .line 85
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->access$000(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;

    .line 86
    .local v0, "info":Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->MUSIC_CATEGORY_DETAIL:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 87
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    const-string v2, "key_category_detail_title"

    .line 91
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->getPeriodName()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v2, "key_category_type"

    const/16 v3, 0xb

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    const-string v2, "key_category_id"

    .line 95
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->getPeriodId()Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v2, "key_category_year_list"

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;

    .line 97
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->access$000(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->getPeriodId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter;->getYearList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v2, "key_category_year_id"

    .line 99
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->getYearId()Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->startActivity(Landroid/content/Intent;)V

    .line 101
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "987"

    const-string v4, "9861"

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->getYearName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method
