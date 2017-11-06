.class Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$4;
.super Landroid/content/BroadcastReceiver;
.source "MilkSearchBaseResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    .prologue
    .line 315
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$4;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$4;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 318
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$4;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$4;"
    if-nez p2, :cond_1

    .line 319
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->access$500(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onReceive : Intent is empty !!!"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchResultPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->setEmptySearchView()V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.samsung.common.search.internal_reload_recommend_searchkeyword"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    const-string v2, "com.samsung.common.search.recommend_searchkeyword"

    .line 327
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "recommendKeyword":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 329
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->access$600(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onReceive : Keyword is empty !!!"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchResultPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->setEmptySearchView()V

    goto :goto_0

    .line 333
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->reload(Ljava/lang/String;)V

    goto :goto_0
.end method
