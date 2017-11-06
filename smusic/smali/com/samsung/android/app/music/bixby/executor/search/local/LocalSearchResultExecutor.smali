.class public final Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;
.super Ljava/lang/Object;
.source "LocalSearchResultExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener;,
        Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$RawKeywordSearchListener;
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

.field private final mContext:Landroid/content/Context;
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

.field private final mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/content/Context;Lcom/samsung/android/app/music/bixby/search/BixbySearchable;Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;Lcom/samsung/android/app/music/network/NetworkManager;)V
    .locals 0
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
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
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 49
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->mContext:Landroid/content/Context;

    .line 50
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->mBixbySearchable:Lcom/samsung/android/app/music/bixby/search/BixbySearchable;

    .line 51
    iput-object p4, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    .line 52
    iput-object p5, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 53
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;)Lcom/samsung/android/app/music/network/NetworkManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;)Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;ZLcom/samsung/android/app/musiclibrary/core/bixby/Command;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->onCommandCompleted(ZLcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->getListType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;)Lcom/samsung/android/app/music/bixby/search/BixbySearchable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->mBixbySearchable:Lcom/samsung/android/app/music/bixby/search/BixbySearchable;

    return-object v0
.end method

.method private getListType(Ljava/lang/String;)I
    .locals 2
    .param p1, "state"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 70
    const v0, 0x110001

    .line 71
    .local v0, "listType":I
    const-string v1, "SearchLocalSongs"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    const v0, 0x110001

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    const-string v1, "SearchLocalAlbums"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
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

    .line 80
    sget-object v2, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCommandCompleted() - existSearchResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 81
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "state":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 84
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v2, "artistName/songName"

    const-string v3, "Match"

    const-string/jumbo v4, "yes"

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v3, v5, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 101
    .end local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v3, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(Z)V

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->mBeforeRefineKeyword:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->setQueryText(Ljava/lang/String;)V

    .line 96
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 97
    .restart local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v2, "artistName/songName"

    const-string v3, "Match"

    const-string v4, "no"

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

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
    .line 57
    const-string v0, "LOCAL_SEARCH_RESULT"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->TAG:Ljava/lang/String;

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

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->getQueryText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->mBeforeRefineKeyword:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->mBixbySearchable:Lcom/samsung/android/app/music/bixby/search/BixbySearchable;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->getListType(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$RawKeywordSearchListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$RawKeywordSearchListener;-><init>(Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/Command;Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$1;)V

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/bixby/search/BixbySearchable;->setOnSearchListener(ILcom/samsung/android/app/music/bixby/search/BixbySearchable$OnSearchListener;)V

    .line 64
    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
