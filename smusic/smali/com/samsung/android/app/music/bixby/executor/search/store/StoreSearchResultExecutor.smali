.class public Lcom/samsung/android/app/music/bixby/executor/search/store/StoreSearchResultExecutor;
.super Ljava/lang/Object;
.source "StoreSearchResultExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "StoreSearchResultExecutor"


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mIsLastState:Z

.field protected mState:Ljava/lang/String;

.field private mStoreMainFragment:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;)V
    .locals 1
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "frag"    # Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/StoreSearchResultExecutor;->mIsLastState:Z

    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/StoreSearchResultExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 45
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/StoreSearchResultExecutor;->mContext:Landroid/content/Context;

    .line 46
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/StoreSearchResultExecutor;->mStoreMainFragment:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;

    .line 47
    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/StoreSearchResultExecutor;->mIsLastState:Z

    .line 48
    return-void
.end method

.method private getMilkSearchTabType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "ret":Ljava/lang/String;
    const-string v1, "SearchSongsTab"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    const-string v0, "1"

    .line 84
    :cond_0
    :goto_0
    return-object v0

    .line 72
    :cond_1
    const-string v1, "SearchAlbumsTab"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    const-string v0, "2"

    goto :goto_0

    .line 74
    :cond_2
    const-string v1, "SearchArtistsTab"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    const-string v0, "3"

    goto :goto_0

    .line 76
    :cond_3
    const-string v1, "SearchStationsTab"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 77
    const-string v0, "5"

    goto :goto_0

    .line 78
    :cond_4
    const-string v1, "SearchMVTab"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 79
    const-string v0, "6"

    goto :goto_0

    .line 80
    :cond_5
    const-string v1, "SearchLyricsTab"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const-string v0, "7"

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 6
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 52
    const/4 v1, 0x0

    .line 54
    .local v1, "ret":Z
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "action":Ljava/lang/String;
    const-string v3, "STORE_SEARCH_RESULT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/StoreSearchResultExecutor;->mState:Ljava/lang/String;

    .line 57
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/StoreSearchResultExecutor;->mState:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/bixby/executor/search/store/StoreSearchResultExecutor;->getMilkSearchTabType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "tabType":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->isLastState()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/StoreSearchResultExecutor;->mIsLastState:Z

    .line 60
    const-string v3, "StoreSearchResultExecutor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "execute >>> Tab("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") isLast("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/StoreSearchResultExecutor;->mIsLastState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/StoreSearchResultExecutor;->mStoreMainFragment:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;

    invoke-virtual {v3, v2, p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->reqStoreSearchResultCount(Ljava/lang/String;Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;)V

    .line 62
    const/4 v1, 0x1

    .line 65
    .end local v2    # "tabType":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public onStoreSearchResultComplete(Ljava/lang/String;I)V
    .locals 7
    .param p1, "storeResultType"    # Ljava/lang/String;
    .param p2, "resultCount"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 89
    const-string v2, "StoreSearchResultExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStoreSearchResultComplete >>> State("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/StoreSearchResultExecutor;->mState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")IsLastState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/StoreSearchResultExecutor;->mIsLastState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Tab("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") ResultCount("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/StoreSearchResultExecutor;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.samsung.music.app.KEY_STORE_SEARCH_FROM_BIXBY"

    invoke-static {v2, v3, v5}, Lcom/samsung/android/app/music/common/preferences/Pref;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 93
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/StoreSearchResultExecutor;->mState:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v1, "artistName/songName"

    .line 96
    .local v1, "nlgParameter":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/StoreSearchResultExecutor;->mState:Ljava/lang/String;

    const-string v3, "SearchArtistsTab"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/StoreSearchResultExecutor;->mState:Ljava/lang/String;

    const-string v3, "SearchStationsTab"

    .line 97
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/StoreSearchResultExecutor;->mState:Ljava/lang/String;

    const-string v3, "SearchMVTab"

    .line 98
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/StoreSearchResultExecutor;->mState:Ljava/lang/String;

    const-string v3, "SearchLyricsTab"

    .line 99
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    :cond_0
    const-string v1, "keyword"

    .line 103
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/StoreSearchResultExecutor;->mIsLastState:Z

    if-eqz v2, :cond_3

    .line 104
    if-lez p2, :cond_2

    .line 105
    const-string v2, "Match"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/StoreSearchResultExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v3, v6, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 118
    :goto_1
    return-void

    .line 107
    :cond_2
    const-string v2, "Match"

    const-string v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_3
    if-lez p2, :cond_4

    .line 112
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/StoreSearchResultExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v3, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(Z)V

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_1

    .line 114
    :cond_4
    const-string v2, "Match"

    const-string v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/StoreSearchResultExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v3, v5, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_1
.end method
