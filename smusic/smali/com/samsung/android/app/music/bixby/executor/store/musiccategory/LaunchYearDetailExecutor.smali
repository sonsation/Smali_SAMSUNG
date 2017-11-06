.class public Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/LaunchYearDetailExecutor;
.super Ljava/lang/Object;
.source "LaunchYearDetailExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String; = "LaunchYearDetailExecutor"


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
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/LaunchYearDetailExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 38
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/LaunchYearDetailExecutor;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private excuteCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 8
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .prologue
    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, "retValue":Z
    const-string v5, "CategoryDetails"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 63
    const-string/jumbo v5, "year"

    invoke-virtual {p1, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "slotValue":Ljava/lang/String;
    const-string v5, "LaunchYearDetailExecutor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "slotValue:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 66
    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/LaunchYearDetailExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    invoke-interface {v5, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->setNextCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    .line 68
    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/LaunchYearDetailExecutor;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$MusicCategory;->getYearInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;

    move-result-object v3

    .line 70
    .local v3, "yearInfo":Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;
    if-eqz v3, :cond_0

    .line 71
    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/LaunchYearDetailExecutor;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->getPeriodId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$MusicCategory;->getYearList(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "yearList":[Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    sget-object v5, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->MUSIC_CATEGORY_DETAIL:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 74
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    const-string v5, "key_category_detail_title"

    .line 78
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->getPeriodName()Ljava/lang/String;

    move-result-object v6

    .line 76
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v5, "key_category_type"

    const/16 v6, 0xb

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    const-string v5, "key_category_id"

    .line 82
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->getPeriodId()Ljava/lang/String;

    move-result-object v6

    .line 81
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v5, "key_category_year_list"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v5, "key_category_year_id"

    .line 86
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->getYearId()Ljava/lang/String;

    move-result-object v6

    .line 85
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/LaunchYearDetailExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 90
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v4    # "yearList":[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    .line 94
    .end local v2    # "slotValue":Ljava/lang/String;
    .end local v3    # "yearInfo":Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;
    :cond_1
    return v1
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
    const-string v3, "LaunchYearDetailExecutor"

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
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/LaunchYearDetailExecutor;->excuteCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z

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
    const-string v3, "Year"

    const-string v4, "Valid"

    const-string v5, "no"

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/LaunchYearDetailExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v4, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 57
    .end local v0    # "isSuccess":Z
    .end local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
