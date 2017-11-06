.class Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$1;
.super Ljava/lang/Object;
.source "MilkSearchStorePresetFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

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
    .line 133
    instance-of v5, p3, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;

    if-eqz v5, :cond_0

    .line 134
    const-string v5, "MilkSearchStorePresetFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onItemClick : preset count - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    invoke-static {v7}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->access$000(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;)Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->getPresetCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->hideKeyboardAndCursor(Landroid/content/Context;Landroid/view/View;)V

    .line 138
    const/4 v5, 0x1

    if-lt p4, v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    invoke-static {v5}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->access$000(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;)Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->getPresetCount()I

    move-result v5

    if-gt p4, v5, :cond_7

    .line 139
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 140
    const-string v5, "MilkSearchStorePresetFragment"

    const-string v6, "onItemClick : Network is not available"

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    invoke-static {v5}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->access$000(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;)Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    move-result-object v5

    invoke-virtual {v5, p4}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->getPresetItemPosition(I)I

    move-result v2

    .line 145
    .local v2, "itemPos":I
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    invoke-static {v5}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->access$000(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;)Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->getItemCount()I

    move-result v5

    if-le v5, v2, :cond_6

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    .line 146
    invoke-static {v5}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->access$100(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v2, :cond_6

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    .line 147
    invoke-static {v5}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->access$200(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;)Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 148
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    .line 149
    invoke-static {v5}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->access$100(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "original":Ljava/lang/String;
    const-string v1, "1"

    .line 151
    .local v1, "displayType":Ljava/lang/String;
    const-string v5, "2"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "02"

    .line 152
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 153
    :cond_2
    const-string v1, "3"

    .line 158
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    invoke-static {v5}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->access$200(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;)Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;

    move-result-object v6

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    invoke-static {v5}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->access$000(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;)Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v5, v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;->searchStoreContentsFromPreset(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v5

    const-string v6, "963"

    const-string v7, "9612"

    .line 161
    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_4
    const-string v5, "3"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "03"

    .line 155
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 156
    :cond_5
    const-string v1, "5"

    goto :goto_1

    .line 164
    .end local v1    # "displayType":Ljava/lang/String;
    .end local v3    # "original":Ljava/lang/String;
    :cond_6
    const-string v5, "MilkSearchStorePresetFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onItemClick : can\'t handle. item cnt - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    .line 165
    invoke-static {v7}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->access$000(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;)Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->getItemCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", preset cnt - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    .line 166
    invoke-static {v7}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->access$100(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 164
    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 170
    .end local v2    # "itemPos":I
    :cond_7
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    invoke-static {v5}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->access$200(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;)Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 171
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    .line 172
    invoke-static {v5}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->access$000(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;)Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    invoke-static {v6}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->access$000(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;)Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    move-result-object v6

    invoke-virtual {v6, p4}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->getHistoryItemPosition(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 173
    .local v4, "query":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    invoke-virtual {v5, v4}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->getPresetContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "contentType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 175
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.samsung.radio.search.store.selectedtab"

    const-string v7, "1"

    invoke-static {v5, v6, v7}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_8
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    invoke-static {v5}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->access$200(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;)Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;

    move-result-object v5

    invoke-interface {v5, v4, v0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;->searchStoreContentsFromPreset(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .end local v0    # "contentType":Ljava/lang/String;
    .end local v4    # "query":Ljava/lang/String;
    :cond_9
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v5

    const-string v6, "963"

    const-string v7, "9613"

    .line 182
    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
