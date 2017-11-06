.class Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$2;
.super Ljava/lang/Object;
.source "MusicCategoryGenreFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 8
    .param p1, "listView"    # Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "vh"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 148
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->access$300(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->isSelectMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 149
    const/4 v2, 0x0

    .line 150
    .local v2, "message":I
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->access$300(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->getSelectedItemCount()I

    move-result v3

    .line 151
    .local v3, "selectedCount":I
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->access$300(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;

    move-result-object v4

    invoke-virtual {v4, p4}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->isSelected(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 152
    const/4 v4, 0x4

    if-gt v3, v4, :cond_0

    .line 153
    const v2, 0x7f0a03cb

    .line 160
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 161
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v5}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 181
    .end local v2    # "message":I
    .end local v3    # "selectedCount":I
    :goto_1
    return-void

    .line 156
    .restart local v2    # "message":I
    .restart local v3    # "selectedCount":I
    :cond_1
    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    .line 157
    const v2, 0x7f0a03ca

    goto :goto_0

    .line 163
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->access$300(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;

    move-result-object v4

    invoke-virtual {v4, p4, p3, v5}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->toggleItem(ILandroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    goto :goto_1

    .line 166
    .end local v2    # "message":I
    .end local v3    # "selectedCount":I
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->access$300(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;

    move-result-object v4

    invoke-virtual {v4, p4}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;

    .line 167
    .local v0, "info":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;
    new-instance v1, Landroid/content/Intent;

    sget-object v4, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->MUSIC_CATEGORY_DETAIL:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 168
    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 170
    const-string v4, "key_category_detail_title"

    .line 172
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;->getGenreName()Ljava/lang/String;

    move-result-object v5

    .line 170
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v4, "key_category_type"

    const/16 v5, 0xa

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    const-string v4, "key_category_id"

    .line 176
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;->getGenreId()Ljava/lang/String;

    move-result-object v5

    .line 175
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    invoke-virtual {v4, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->startActivity(Landroid/content/Intent;)V

    .line 179
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v4

    const-string v5, "984"

    const-string v6, "9844"

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;->getGenreName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
