.class Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1$1;
.super Ljava/lang/Object;
.source "MilkSearchStoreAutocompeleteFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$IHandlerMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1;->onItemClick(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1;

    iput p2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->access$000(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;)Lcom/samsung/android/app/music/milk/store/search/IMilkSearchStoreFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->access$102(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;Z)Z

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->access$000(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;)Lcom/samsung/android/app/music/milk/store/search/IMilkSearchStoreFragment;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;

    .line 139
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->access$200(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;)Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAutoKeywordAdapter;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1$1;->val$position:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAutoKeywordAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;

    .line 140
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.radio.search.store.selectedtab"

    const-string v4, "1"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-interface {v1, v0, v2}, Lcom/samsung/android/app/music/milk/store/search/IMilkSearchStoreFragment;->searchStoreContents(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    return-void
.end method
