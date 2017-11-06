.class public final Lcom/samsung/android/app/music/bixby/executor/local/MoveLocalTabExecutor;
.super Ljava/lang/Object;
.source "MoveLocalTabExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTabControllable:Lcom/samsung/android/app/musiclibrary/ui/TabControllable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/local/MoveLocalTabExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/local/MoveLocalTabExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/TabControllable;)V
    .locals 1
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "tabControllable"    # Lcom/samsung/android/app/musiclibrary/ui/TabControllable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/local/MoveLocalTabExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 36
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/local/MoveLocalTabExecutor;->mContext:Landroid/content/Context;

    .line 37
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/executor/local/MoveLocalTabExecutor;->mTabControllable:Lcom/samsung/android/app/musiclibrary/ui/TabControllable;

    .line 38
    return-void
.end method

.method private getListType(Ljava/lang/String;)I
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string v1, "Playlists"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const v0, 0x10004

    .line 93
    .local v0, "tabId":I
    :goto_0
    return v0

    .line 78
    .end local v0    # "tabId":I
    :cond_0
    const-string v1, "MyFavourites"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    const v0, 0x10030

    .restart local v0    # "tabId":I
    goto :goto_0

    .line 80
    .end local v0    # "tabId":I
    :cond_1
    const-string v1, "Albums"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    const v0, 0x10002

    .restart local v0    # "tabId":I
    goto :goto_0

    .line 82
    .end local v0    # "tabId":I
    :cond_2
    const-string v1, "Artists"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    const v0, 0x10003

    .restart local v0    # "tabId":I
    goto :goto_0

    .line 84
    .end local v0    # "tabId":I
    :cond_3
    const-string v1, "Genres"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 85
    const v0, 0x10006

    .restart local v0    # "tabId":I
    goto :goto_0

    .line 86
    .end local v0    # "tabId":I
    :cond_4
    const-string v1, "Folders"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 87
    const v0, 0x10007

    .restart local v0    # "tabId":I
    goto :goto_0

    .line 88
    .end local v0    # "tabId":I
    :cond_5
    const-string v1, "Composers"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 89
    const v0, 0x10008

    .restart local v0    # "tabId":I
    goto :goto_0

    .line 91
    .end local v0    # "tabId":I
    :cond_6
    const v0, 0x110001

    .restart local v0    # "tabId":I
    goto :goto_0
.end method

.method private getNlgName(I)Ljava/lang/String;
    .locals 1
    .param p1, "listType"    # I

    .prologue
    .line 98
    sparse-switch p1, :sswitch_data_0

    .line 118
    const/4 v0, 0x0

    .line 121
    .local v0, "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 100
    .end local v0    # "name":Ljava/lang/String;
    :sswitch_0
    const-string v0, "HeartsTab"

    .line 101
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 103
    .end local v0    # "name":Ljava/lang/String;
    :sswitch_1
    const-string v0, "AlbumsTab"

    .line 104
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 106
    .end local v0    # "name":Ljava/lang/String;
    :sswitch_2
    const-string v0, "ArtistsTab"

    .line 107
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 109
    .end local v0    # "name":Ljava/lang/String;
    :sswitch_3
    const-string v0, "GenresTab"

    .line 110
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 112
    .end local v0    # "name":Ljava/lang/String;
    :sswitch_4
    const-string v0, "FoldersTab"

    .line 113
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 115
    .end local v0    # "name":Ljava/lang/String;
    :sswitch_5
    const-string v0, "ComposersTab"

    .line 116
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 98
    nop

    :sswitch_data_0
    .sparse-switch
        0x10002 -> :sswitch_1
        0x10003 -> :sswitch_2
        0x10006 -> :sswitch_3
        0x10007 -> :sswitch_4
        0x10008 -> :sswitch_5
        0x10030 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 8
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 42
    const-string v5, "MOVE_LOCAL_TAB"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 43
    sget-object v5, Lcom/samsung/android/app/music/bixby/executor/local/MoveLocalTabExecutor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "execute() - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "state":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/bixby/executor/local/MoveLocalTabExecutor;->getListType(Ljava/lang/String;)I

    move-result v0

    .line 47
    .local v0, "listType":I
    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/executor/local/MoveLocalTabExecutor;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/samsung/android/app/music/common/util/TabUtils;->isEnabledTab(Landroid/content/Context;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 49
    sget-object v5, Lcom/samsung/android/app/music/bixby/executor/local/MoveLocalTabExecutor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "execute() - Disabled this tab. - listType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/bixby/executor/local/MoveLocalTabExecutor;->getNlgName(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Visible"

    const-string v7, "no"

    invoke-virtual {v1, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/executor/local/MoveLocalTabExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v6, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v6, v4, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 71
    .end local v0    # "listType":I
    .end local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .end local v2    # "state":Ljava/lang/String;
    :goto_0
    return v3

    .line 56
    .restart local v0    # "listType":I
    .restart local v2    # "state":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/local/MoveLocalTabExecutor;->mTabControllable:Lcom/samsung/android/app/musiclibrary/ui/TabControllable;

    invoke-interface {v4, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/TabControllable;->selectTab(II)V

    .line 58
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 59
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 60
    .restart local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/TabUtils;->isFixedTab(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 61
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/bixby/executor/local/MoveLocalTabExecutor;->getNlgName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Visible"

    const-string/jumbo v6, "yes"

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/local/MoveLocalTabExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v5, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_0

    .line 66
    .end local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/local/MoveLocalTabExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v5, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(Z)V

    invoke-interface {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_0

    .end local v0    # "listType":I
    .end local v2    # "state":Ljava/lang/String;
    :cond_3
    move v3, v4

    .line 71
    goto :goto_0
.end method
