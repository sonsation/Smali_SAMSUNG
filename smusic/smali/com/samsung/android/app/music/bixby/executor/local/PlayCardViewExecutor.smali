.class public final Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;
.super Ljava/lang/Object;
.source "PlayCardViewExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor$Position;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCardViewControllable:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;)V
    .locals 0
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "cardViewControllable"    # Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 40
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;->mActivity:Landroid/app/Activity;

    .line 41
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;->mCardViewControllable:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;

    .line 42
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;->isDefaultPlaylist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    return-object v0
.end method

.method private getPosition(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)I
    .locals 6
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 92
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "state":Ljava/lang/String;
    const-string v5, "PlayMostPlayedTracks"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v2

    .line 95
    :cond_1
    const-string v5, "PlayRecentlyPlayedTracks"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v3

    .line 96
    goto :goto_0

    .line 97
    :cond_2
    const-string v5, "PlayFavouritesTracks"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 98
    const/4 v2, 0x3

    goto :goto_0

    .line 100
    :cond_3
    const-string v5, "CARD_VIEW_POSITION"

    invoke-virtual {p1, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "position":Ljava/lang/String;
    const-string v5, "first"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v2, v4

    .line 102
    goto :goto_0

    .line 103
    :cond_4
    const-string/jumbo v5, "second"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 105
    const-string/jumbo v2, "third"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    .line 106
    goto :goto_0

    :cond_5
    move v2, v4

    .line 108
    goto :goto_0
.end method

.method private isDefaultPlaylist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "state"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 114
    const-string v0, "PlayMostPlayedTracks"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PlayRecentlyPlayedTracks"

    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PlayFavouritesTracks"

    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

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
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 46
    const-string v4, "PLAY_CARD_VIEW"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 47
    sget-object v4, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "execute() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "state":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/util/UiUtils;->isSmallScreenUiEnabled(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    sget-object v4, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;->TAG:Ljava/lang/String;

    const-string v5, "execute() - Not shown card view due to sw320dp screen."

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v4, "CardView"

    const-string v5, "Visible"

    const-string v6, "no"

    invoke-virtual {v0, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v5, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 88
    .end local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .end local v1    # "state":Ljava/lang/String;
    :goto_0
    return v2

    .line 61
    .restart local v1    # "state":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;->mCardViewControllable:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;->getPosition(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)I

    move-result v4

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor$1;

    invoke-direct {v5, p0, v1}, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;Ljava/lang/String;)V

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;->playCardViewItem(ILcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;)V

    goto :goto_0

    .end local v1    # "state":Ljava/lang/String;
    :cond_1
    move v2, v3

    .line 88
    goto :goto_0
.end method
