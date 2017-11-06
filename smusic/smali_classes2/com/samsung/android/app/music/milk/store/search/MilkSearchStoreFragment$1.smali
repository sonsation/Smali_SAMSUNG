.class Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "MilkSearchStoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 70
    if-nez p2, :cond_1

    .line 71
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->getLogTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onReceive : Intent is empty !!!"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.samsung.common.search.reload_recommend_searchkeyword"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    const-string v3, "com.samsung.common.search.recommend_searchkeyword"

    .line 78
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "recommendKeyword":Ljava/lang/String;
    const-string v3, "com.samsung.common.search.recommend_searchkeyword_set"

    const/4 v4, 0x0

    .line 80
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 81
    .local v2, "shouldKeywordSet":Z
    if-eqz v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 82
    const-string v3, "MilkSearchStoreFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSearchResultBroadcastReceiver >>> Just change Keyword("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;

    const-string v4, "1"

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->searchStoreContents(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_2
    if-eqz v2, :cond_3

    .line 87
    const-string v3, "MilkSearchStoreFragment"

    const-string v4, "mSearchResultBroadcastReceiver >>> Keyword is empty"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_3
    const-string v3, "MilkSearchStoreFragment"

    const-string v4, "mSearchResultBroadcastReceiver >>> Not force set keyword"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
