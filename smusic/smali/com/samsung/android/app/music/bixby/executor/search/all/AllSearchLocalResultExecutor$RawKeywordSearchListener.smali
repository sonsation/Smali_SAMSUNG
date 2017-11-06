.class final Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$RawKeywordSearchListener;
.super Ljava/lang/Object;
.source "AllSearchLocalResultExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/search/BixbySearchable$OnSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RawKeywordSearchListener"
.end annotation


# instance fields
.field private final mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V
    .locals 0
    .param p2, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 132
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$RawKeywordSearchListener;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$RawKeywordSearchListener;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .line 134
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/Command;Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
    .param p3, "x2"    # Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$1;

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$RawKeywordSearchListener;-><init>(Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    return-void
.end method


# virtual methods
.method public onSearchFinished(II)V
    .locals 6
    .param p1, "beginPosition"    # I
    .param p2, "endPosition"    # I

    .prologue
    .line 138
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Before refine] onSearchFinished() - beginPosition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", endPosition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 142
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$RawKeywordSearchListener;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->access$300(Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;)Lcom/samsung/android/app/music/network/NetworkManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/app/music/network/NetworkInfo;->all:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v1, v1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    if-eqz v1, :cond_0

    .line 143
    new-instance v0, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$RawKeywordSearchListener;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;

    .line 144
    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->access$100(Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;)Lcom/samsung/android/app/music/common/activity/SearchActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner;-><init>(Landroid/content/Context;)V

    .line 145
    .local v0, "onlineKeywordRefiner":Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner;
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$RawKeywordSearchListener;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->access$400(Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;)Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->getQueryText()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$RawKeywordSearchListener;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;

    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$RawKeywordSearchListener;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;-><init>(Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/Command;Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner;->refine(Ljava/lang/String;Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;)V

    .line 153
    .end local v0    # "onlineKeywordRefiner":Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner;
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$RawKeywordSearchListener;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$RawKeywordSearchListener;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->access$600(Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;ZLcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$RawKeywordSearchListener;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$RawKeywordSearchListener;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->access$600(Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;ZLcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    goto :goto_0
.end method
