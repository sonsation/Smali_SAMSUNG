.class Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1$1;
.super Ljava/lang/Object;
.source "MilkSearchStoreMVFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1;->onItemClick(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1;

.field final synthetic val$position:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1;Landroid/view/View;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1$1;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 136
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1;

    iget-object v4, v4, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1;

    iget-object v5, v5, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1$1;->val$view:Landroid/view/View;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment;->access$000(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment;Landroid/content/Context;Landroid/view/View;)V

    .line 137
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1;

    iget-object v4, v4, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1;->val$searchMusicVideosAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreMusicVideoAdapter;

    if-nez v4, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget v4, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1$1;->val$position:I

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1;

    iget-object v5, v5, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1;->val$searchMusicVideosAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreMusicVideoAdapter;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreMusicVideoAdapter;->getItemCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 144
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1;

    iget-object v4, v4, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1;->val$searchMusicVideosAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreMusicVideoAdapter;

    iget v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1$1;->val$position:I

    .line 145
    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreMusicVideoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/milksearch/SearchMusicVideo;

    .line 146
    .local v3, "searchMusicVideo":Lcom/samsung/android/app/music/common/model/milksearch/SearchMusicVideo;
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/milksearch/SearchMusicVideo;->isExplicit()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 147
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1;

    iget-object v4, v4, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 149
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v4

    .line 148
    invoke-static {v0, v4}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getUserExplicitType(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/UserInfo;)I

    move-result v1

    .line 150
    .local v1, "explicit":I
    if-eqz v1, :cond_2

    .line 152
    const-string v4, "MilkSearchStoreMVFragment"

    const-string v5, "onClick : Not Permitted (Explicit)"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1;

    iget-object v4, v4, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment;

    .line 154
    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "explicit-invalid"

    .line 156
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 154
    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/milk/MilkDialogLauncher;->launchDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "explicit":I
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1;

    iget-object v4, v4, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->VIDEO_PLAYER:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 162
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/milksearch/SearchMusicVideo;->getMvId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/milksearch/SearchMusicVideo;->isExplicit()Z

    move-result v7

    .line 160
    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;Z)Z

    .line 164
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1$1;->val$view:Landroid/view/View;

    const v5, 0x7f1203d2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 165
    .local v2, "logged":Z
    if-nez v2, :cond_0

    .line 166
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v4

    const-string v5, "968"

    const-string v6, "9693"

    .line 167
    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
