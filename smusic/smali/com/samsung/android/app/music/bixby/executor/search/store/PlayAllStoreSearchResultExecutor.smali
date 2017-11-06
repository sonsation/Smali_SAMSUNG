.class public Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;
.super Ljava/lang/Object;
.source "PlayAllStoreSearchResultExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PlayAllStoreSearchResultExecutor"


# instance fields
.field protected mCallback:Lcom/samsung/android/app/music/bixby/executor/search/store/IPlaySearchResultFromStore;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mState:Ljava/lang/String;

.field private mTargetTrackID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/content/Context;Lcom/samsung/android/app/music/bixby/executor/search/store/IPlaySearchResultFromStore;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "callback"    # Lcom/samsung/android/app/music/bixby/executor/search/store/IPlaySearchResultFromStore;
    .param p4, "mediaChangeObservable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 77
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;->mCallback:Lcom/samsung/android/app/music/bixby/executor/search/store/IPlaySearchResultFromStore;

    .line 78
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;->mContext:Landroid/content/Context;

    .line 79
    iput-object p4, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;->mTargetTrackID:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public static moveDetailandPlay(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pageType"    # Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;
    .param p2, "contentId"    # Ljava/lang/String;

    .prologue
    .line 184
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 186
    const-string v2, "contentId"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string/jumbo v2, "playOption"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 189
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 7
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 85
    const/4 v5, 0x0

    .line 87
    .local v5, "ret":Z
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;->permitAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 89
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;->mState:Ljava/lang/String;

    .line 91
    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;->mState:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 92
    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-eqz v6, :cond_0

    .line 93
    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v6, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 96
    :cond_0
    const/4 v5, 0x1

    .line 97
    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;->mState:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;->getDisplaytype(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "displayType":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 99
    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;->mCallback:Lcom/samsung/android/app/music/bixby/executor/search/store/IPlaySearchResultFromStore;

    invoke-interface {v6}, Lcom/samsung/android/app/music/bixby/executor/search/store/IPlaySearchResultFromStore;->getCurrentTabType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 100
    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;->mCallback:Lcom/samsung/android/app/music/bixby/executor/search/store/IPlaySearchResultFromStore;

    invoke-interface {v6, v1}, Lcom/samsung/android/app/music/bixby/executor/search/store/IPlaySearchResultFromStore;->moveTab(Ljava/lang/String;)V

    .line 103
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;->mCallback:Lcom/samsung/android/app/music/bixby/executor/search/store/IPlaySearchResultFromStore;

    .line 104
    invoke-interface {v6, v1}, Lcom/samsung/android/app/music/bixby/executor/search/store/IPlaySearchResultFromStore;->getFragmentByDisplaytype(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    move-result-object v2

    .line 105
    .local v2, "fg":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;
    if-eqz v2, :cond_2

    .line 106
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getSearchResultList()Ljava/util/List;

    move-result-object v3

    .line 107
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 108
    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;->mState:Ljava/lang/String;

    invoke-virtual {p0, v6, v3}, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;->executePlay(Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    move-result-object v4

    .line 109
    .local v4, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;->sendToBixbyClient(Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    .line 116
    .end local v1    # "displayType":Ljava/lang/String;
    .end local v2    # "fg":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v4    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_2
    return v5
.end method

.method protected executePlay(Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .locals 10
    .param p1, "state"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<*>;)",
            "Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v3, 0x0

    .line 129
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v4, "targetlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 132
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 133
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x3e8

    if-le v6, v7, :cond_0

    .line 134
    const-string v6, "PlayAllStoreSearchResultExecutor"

    const-string v7, "Exeed item count over 1000"

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v6, "SearchSongsTab"

    invoke-direct {v3, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 136
    .local v3, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v6, "ExceedMaxNumber"

    const-string v7, "Valid"

    const-string v8, "no"

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .end local v3    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .end local v4    # "targetlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    :goto_0
    return-object v3

    .line 140
    .restart local v4    # "targetlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;->mContext:Landroid/content/Context;

    const-string v7, "com.sec.samsung.music.app.KEY_STORE_SEARCH_PLAY_TYPE"

    const/4 v8, 0x0

    .line 141
    invoke-static {v6, v7, v8}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "bixbyPlayType":Ljava/lang/String;
    const-string v6, "PlayAllStoreSearchResultExecutor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bixby Play Type => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "1"

    .line 144
    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 145
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;->mContext:Landroid/content/Context;

    const v7, 0x100050

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v4, v9}, Lcom/samsung/android/app/music/list/common/PlayUtils;->play(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;I)V

    .line 147
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;->mTargetTrackID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    .end local v1    # "bixbyPlayType":Ljava/lang/String;
    .end local v4    # "targetlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    :catch_0
    move-exception v2

    .line 174
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v6, "SearchSongsTab"

    invoke-direct {v3, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 178
    .restart local v3    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v6, "SucceedPlaying"

    const-string v7, "Valid"

    const-string v8, "no"

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    .end local v3    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .restart local v1    # "bixbyPlayType":Ljava/lang/String;
    .restart local v4    # "targetlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    :cond_2
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getArtistId()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "artistId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 152
    const-string v6, "PlayAllStoreSearchResultExecutor"

    const-string v7, "move Artist Detail"

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ARTIST:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    invoke-static {v6, v7, v0}, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;->moveDetailandPlay(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)V

    .line 155
    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v5

    .line 156
    .local v5, "userinfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/UserInfo;->isStreamingUser()Z

    move-result v6

    if-nez v6, :cond_4

    .line 157
    :cond_3
    const-string v6, "PlayAllStoreSearchResultExecutor"

    const-string v7, "Not Premium Account"

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v6, "SearchSongsTab"

    invoke-direct {v3, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 159
    .restart local v3    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v6, "Subscription"

    const-string v7, "Valid"

    const-string v8, "no"

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    .end local v3    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_4
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v6, "SearchSongsTab"

    invoke-direct {v3, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 163
    .restart local v3    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v6, "Subscription"

    const-string v7, "Valid"

    const-string/jumbo v8, "yes"

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    .end local v3    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .end local v5    # "userinfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :cond_5
    const-string v6, "PlayAllStoreSearchResultExecutor"

    const-string v7, "artist is empty"

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 171
    .end local v0    # "artistId":Ljava/lang/String;
    .end local v1    # "bixbyPlayType":Ljava/lang/String;
    :cond_6
    const-string v6, "PlayAllStoreSearchResultExecutor"

    const-string/jumbo v7, "target list is empty"

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected getDisplaytype(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 124
    const-string v0, "1"

    return-object v0
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 234
    const-string v1, "PlayAllStoreSearchResultExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onExtrasChanged >>> Action("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v1, "com.samsung.android.app.music.core.state.queue.ERROR"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v1, "SearchSongsTab"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v1, "SucceedPlaying"

    const-string v2, "Valid"

    const-string v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;->sendToBixbyClient(Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    .line 240
    .end local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_0
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 5
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 204
    const-string v2, "PlayAllStoreSearchResultExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onMetadataChanged >>> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "com.samsung.android.app.music.metadata.SOURCE_ID"

    .line 205
    invoke-virtual {p1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;->mTargetTrackID:Ljava/lang/String;

    const-string v3, "com.samsung.android.app.music.metadata.SOURCE_ID"

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v2, "SearchSongsTab"

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v1

    .line 209
    .local v1, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/UserInfo;->isStreamingUser()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    const-string v2, "PlayAllStoreSearchResultExecutor"

    const-string v3, "Premium Account NLG"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v2, "Subscription"

    const-string v3, "Valid"

    const-string/jumbo v4, "yes"

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;->sendToBixbyClient(Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    .line 218
    .end local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .end local v1    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :cond_0
    return-void

    .line 213
    .restart local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .restart local v1    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :cond_1
    const-string v2, "PlayAllStoreSearchResultExecutor"

    const-string v3, "Not Premium Account NLG"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v2, "Subscription"

    const-string v3, "Valid"

    const-string v4, "no"

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 3
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 223
    const-string v0, "PlayAllStoreSearchResultExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlaybackStateChanged >>> State ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    const-string v0, "PlayAllStoreSearchResultExecutor"

    const-string/jumbo v1, "onQueueChanged >>> "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method protected permitAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-string v0, "PLAY_ALL_STORE_SEARCH_RESULT"

    return-object v0
.end method

.method protected sendToBixbyClient(Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V
    .locals 3
    .param p1, "nlg"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    .prologue
    .line 196
    if-eqz p1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/PlayAllStoreSearchResultExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 200
    :cond_0
    return-void
.end method
