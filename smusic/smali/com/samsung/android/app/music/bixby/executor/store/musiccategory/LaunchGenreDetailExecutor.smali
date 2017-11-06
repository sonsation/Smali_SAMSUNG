.class public Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/LaunchGenreDetailExecutor;
.super Ljava/lang/Object;
.source "LaunchGenreDetailExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String; = "LaunchGenreDetailExecutor"


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/content/Context;)V
    .locals 1
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/LaunchGenreDetailExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 38
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/LaunchGenreDetailExecutor;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private excuteCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 7
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .prologue
    .line 62
    const/4 v2, 0x0

    .line 63
    .local v2, "retValue":Z
    const-string v4, "CategoryDetails"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 64
    const-string v4, "genreName"

    invoke-virtual {p1, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "slotValue":Ljava/lang/String;
    const-string v4, "LaunchGenreDetailExecutor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "slotValue:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 67
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/LaunchGenreDetailExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    invoke-interface {v4, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->setNextCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    .line 69
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/LaunchGenreDetailExecutor;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$MusicCategory;->getGenreInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;

    move-result-object v0

    .line 71
    .local v0, "genreInfo":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;
    if-eqz v0, :cond_0

    .line 72
    const-string v4, "LaunchGenreDetailExecutor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "genreInfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v1, Landroid/content/Intent;

    sget-object v4, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->MUSIC_CATEGORY_DETAIL:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 74
    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    const-string v4, "key_category_detail_title"

    .line 78
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;->getGenreName()Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v4, "key_category_type"

    const/16 v5, 0xa

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    const-string v4, "key_category_id"

    .line 82
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;->getGenreId()Ljava/lang/String;

    move-result-object v5

    .line 81
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/LaunchGenreDetailExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 86
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x1

    .line 90
    .end local v0    # "genreInfo":Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;
    .end local v3    # "slotValue":Ljava/lang/String;
    :cond_1
    return v2
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 6
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 43
    const-string v3, "LAUNCH_CATEGORY_DETAIL"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    const-string v3, "LaunchGenreDetailExecutor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "execute() -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/LaunchGenreDetailExecutor;->excuteCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z

    move-result v0

    .line 49
    .local v0, "isSuccess":Z
    if-nez v0, :cond_0

    .line 50
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v3, "GenreName"

    const-string v4, "Valid"

    const-string v5, "no"

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/LaunchGenreDetailExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v4, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 58
    .end local v0    # "isSuccess":Z
    .end local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
