.class public final Lcom/samsung/android/app/music/bixby/executor/search/local/PlayAllLocalSearchResultExecutor;
.super Ljava/lang/Object;
.source "PlayAllLocalSearchResultExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBixbySearchable:Lcom/samsung/android/app/music/bixby/search/BixbySearchable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPlayableList:Lcom/samsung/android/app/music/list/common/PlayableList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/search/local/PlayAllLocalSearchResultExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/search/local/PlayAllLocalSearchResultExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/bixby/search/BixbySearchable;Lcom/samsung/android/app/music/list/common/PlayableList;)V
    .locals 0
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bixbySearchable"    # Lcom/samsung/android/app/music/bixby/search/BixbySearchable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "playableList"    # Lcom/samsung/android/app/music/list/common/PlayableList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/PlayAllLocalSearchResultExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 35
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/PlayAllLocalSearchResultExecutor;->mBixbySearchable:Lcom/samsung/android/app/music/bixby/search/BixbySearchable;

    .line 36
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/PlayAllLocalSearchResultExecutor;->mPlayableList:Lcom/samsung/android/app/music/list/common/PlayableList;

    .line 37
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/samsung/android/app/music/bixby/executor/search/local/PlayAllLocalSearchResultExecutor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/bixby/executor/search/local/PlayAllLocalSearchResultExecutor;)Lcom/samsung/android/app/music/list/common/PlayableList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/search/local/PlayAllLocalSearchResultExecutor;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/PlayAllLocalSearchResultExecutor;->mPlayableList:Lcom/samsung/android/app/music/list/common/PlayableList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/bixby/executor/search/local/PlayAllLocalSearchResultExecutor;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/search/local/PlayAllLocalSearchResultExecutor;
    .param p1, "x1"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/search/local/PlayAllLocalSearchResultExecutor;->getNlgState(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/bixby/executor/search/local/PlayAllLocalSearchResultExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/search/local/PlayAllLocalSearchResultExecutor;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/PlayAllLocalSearchResultExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

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
    const-string v1, "PlayAllLocalSongs"

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
    const-string v1, "PlayAllLocalAlbums"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    const v0, 0x10002

    goto :goto_0
.end method

.method private getNlgState(I)Ljava/lang/String;
    .locals 1
    .param p1, "listType"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 81
    sparse-switch p1, :sswitch_data_0

    .line 87
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 83
    :sswitch_0
    const-string v0, "SearchLocalSongs"

    goto :goto_0

    .line 85
    :sswitch_1
    const-string v0, "SearchLocalAlbums"

    goto :goto_0

    .line 81
    nop

    :sswitch_data_0
    .sparse-switch
        0x10002 -> :sswitch_1
        0x110001 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 4
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    const-string v1, "PLAY_ALL_LOCAL_SEARCH_RESULT"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    sget-object v1, Lcom/samsung/android/app/music/bixby/executor/search/local/PlayAllLocalSearchResultExecutor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/bixby/executor/search/local/PlayAllLocalSearchResultExecutor;->getListType(Ljava/lang/String;)I

    move-result v0

    .line 46
    .local v0, "listType":I
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/PlayAllLocalSearchResultExecutor;->mBixbySearchable:Lcom/samsung/android/app/music/bixby/search/BixbySearchable;

    new-instance v2, Lcom/samsung/android/app/music/bixby/executor/search/local/PlayAllLocalSearchResultExecutor$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/bixby/executor/search/local/PlayAllLocalSearchResultExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/executor/search/local/PlayAllLocalSearchResultExecutor;I)V

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/app/music/bixby/search/BixbySearchable;->setOnSearchListener(ILcom/samsung/android/app/music/bixby/search/BixbySearchable$OnSearchListener;)V

    .line 64
    const/4 v1, 0x1

    .line 66
    .end local v0    # "listType":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
