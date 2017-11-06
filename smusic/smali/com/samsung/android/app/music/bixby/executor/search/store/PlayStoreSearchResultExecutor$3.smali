.class Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$3;
.super Ljava/lang/Object;
.source "PlayStoreSearchResultExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;->executePlay(Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;

.field final synthetic val$mvList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$3;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$3;->val$mvList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 149
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v4, "SearchMVTab"

    invoke-direct {v1, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 150
    .local v1, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$3;->val$mvList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/milksearch/SearchMusicVideo;

    .line 151
    .local v2, "searchMusicVideo":Lcom/samsung/android/app/music/common/model/milksearch/SearchMusicVideo;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milksearch/SearchMusicVideo;->isExplicit()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$3;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;

    iget-object v4, v4, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$3;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;

    iget-object v5, v5, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;->mContext:Landroid/content/Context;

    .line 153
    invoke-static {v5}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v5

    .line 152
    invoke-static {v4, v5}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getUserExplicitType(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/UserInfo;)I

    move-result v0

    .line 154
    .local v0, "explicit":I
    if-eqz v0, :cond_0

    .line 155
    const-string v4, "PlayStoreSearchResultExecutor"

    const-string/jumbo v5, "onClick : Not Permitted (Explicit)"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$3;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;

    iget-object v4, v4, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;->mContext:Landroid/content/Context;

    const-string v5, "explicit-invalid"

    .line 158
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 157
    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/milk/MilkDialogLauncher;->launchDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v4, "SucceedPlaying"

    const-string v5, "Valid"

    const-string v6, "no"

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$3;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;

    invoke-virtual {v4, v1}, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;->sendToBixbyClient(Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    .line 177
    .end local v0    # "explicit":I
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$3;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;

    iget-object v4, v4, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->VIDEO_PLAYER:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 166
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milksearch/SearchMusicVideo;->getMvId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milksearch/SearchMusicVideo;->isExplicit()Z

    move-result v7

    .line 165
    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;Z)Z

    .line 168
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$3;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;

    iget-object v4, v4, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v3

    .line 169
    .local v3, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/UserInfo;->isStreamingUser()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    const-string v4, "PlayStoreSearchResultExecutor"

    const-string v5, "Premium Account NLG"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v4, "Subscription"

    const-string v5, "Valid"

    const-string/jumbo v6, "yes"

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor$3;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;

    invoke-virtual {v4, v1}, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayStoreSearchResultExecutor;->sendToBixbyClient(Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    goto :goto_0

    .line 173
    :cond_1
    const-string v4, "PlayStoreSearchResultExecutor"

    const-string v5, "Not Premium Account NLG"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v4, "Subscription"

    const-string v5, "Valid"

    const-string v6, "no"

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
