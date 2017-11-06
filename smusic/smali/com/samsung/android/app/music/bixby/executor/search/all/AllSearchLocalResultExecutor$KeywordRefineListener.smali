.class final Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;
.super Ljava/lang/Object;
.source "AllSearchLocalResultExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeywordRefineListener"
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
    .line 161
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .line 163
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/Command;Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
    .param p3, "x2"    # Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$1;

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;-><init>(Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;)Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    return-object v0
.end method


# virtual methods
.method public onRefineFinished(Ljava/lang/String;)V
    .locals 4
    .param p1, "keyword"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 167
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->access$400(Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;)Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->getQueryText()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "queryText":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRefineFinished() - before: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", after: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->access$600(Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;ZLcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    .line 185
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->access$400(Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;)Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->setQueryText(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->access$900(Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;)Lcom/samsung/android/app/music/bixby/search/BixbySearchable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->access$700(Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener$1;-><init>(Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;)V

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/music/bixby/search/BixbySearchable;->setOnSearchListener(ILcom/samsung/android/app/music/bixby/search/BixbySearchable$OnSearchListener;)V

    goto :goto_0
.end method
