.class public final Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;
.super Ljava/lang/Object;
.source "AllSearchLocalResultExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;,
        Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$RawKeywordSearchListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBeforeRefineKeyword:Ljava/lang/String;

.field private final mBixbySearchable:Lcom/samsung/android/app/music/bixby/search/BixbySearchable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSearchActivity:Lcom/samsung/android/app/music/common/activity/SearchActivity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/common/activity/SearchActivity;Lcom/samsung/android/app/music/bixby/search/BixbySearchable;Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;Lcom/samsung/android/app/music/network/NetworkManager;)V
    .locals 0
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "searchActivity"    # Lcom/samsung/android/app/music/common/activity/SearchActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "bixbySearchable"    # Lcom/samsung/android/app/music/bixby/search/BixbySearchable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "searchView"    # Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "networkManager"    # Lcom/samsung/android/app/music/network/NetworkManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 53
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->mSearchActivity:Lcom/samsung/android/app/music/common/activity/SearchActivity;

    .line 54
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->mBixbySearchable:Lcom/samsung/android/app/music/bixby/search/BixbySearchable;

    .line 55
    iput-object p4, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    .line 56
    iput-object p5, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 57
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;)Lcom/samsung/android/app/music/common/activity/SearchActivity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->mSearchActivity:Lcom/samsung/android/app/music/common/activity/SearchActivity;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;)Lcom/samsung/android/app/music/network/NetworkManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;)Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;ZLcom/samsung/android/app/musiclibrary/core/bixby/Command;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->onCommandCompleted(ZLcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->getListType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;)Lcom/samsung/android/app/music/bixby/search/BixbySearchable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->mBixbySearchable:Lcom/samsung/android/app/music/bixby/search/BixbySearchable;

    return-object v0
.end method

.method private getListType(Ljava/lang/String;)I
    .locals 2
    .param p1, "state"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 76
    const v0, 0x110001

    .line 77
    .local v0, "listType":I
    const-string v1, "SearchSongsTab"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    const v0, 0x110001

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 79
    :cond_1
    const-string v1, "SearchAlbumsTab"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const v0, 0x10002

    goto :goto_0
.end method

.method private onCommandCompleted(ZLcom/samsung/android/app/musiclibrary/core/bixby/Command;)V
    .locals 6
    .param p1, "existSearchResult"    # Z
    .param p2, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 86
    sget-object v1, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCommandCompleted() - existSearchResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 87
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    if-eqz p1, :cond_1

    .line 89
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v1, "artistName/songName"

    const-string v2, "Match"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v2, v5, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 126
    .end local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v2, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(Z)V

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_0

    .line 98
    :cond_1
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 100
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->mBeforeRefineKeyword:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->setQueryText(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    invoke-interface {v1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->setNextCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    .line 107
    new-instance v1, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;Landroid/os/Looper;)V

    .line 112
    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$1;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 114
    :cond_2
    sget-object v1, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCommandCompleted() - Stop this all search rule here due to enabled my music mode."

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->mBeforeRefineKeyword:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->setQueryText(Ljava/lang/String;)V

    .line 120
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 121
    .restart local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v1, "artistName/songName"

    const-string v2, "Match"

    const-string v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v2, v4, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 4
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    const-string v0, "STORE_SEARCH_RESULT"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->getQueryText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->mBeforeRefineKeyword:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->mBixbySearchable:Lcom/samsung/android/app/music/bixby/search/BixbySearchable;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->getListType(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$RawKeywordSearchListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$RawKeywordSearchListener;-><init>(Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/Command;Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$1;)V

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/bixby/search/BixbySearchable;->setOnSearchListener(ILcom/samsung/android/app/music/bixby/search/BixbySearchable$OnSearchListener;)V

    .line 70
    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
