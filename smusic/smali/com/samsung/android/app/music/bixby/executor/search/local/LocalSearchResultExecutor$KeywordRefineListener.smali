.class final Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener;
.super Ljava/lang/Object;
.source "LocalSearchResultExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;
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

.field final synthetic this$0:Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V
    .locals 0
    .param p2, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 135
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .line 137
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/Command;Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
    .param p3, "x2"    # Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$1;

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener;-><init>(Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener;)Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

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
    .line 141
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->access$400(Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;)Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->getQueryText()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "queryText":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->access$100()Ljava/lang/String;

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

    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->access$600(Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;ZLcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    .line 159
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->access$400(Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;)Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->setQueryText(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->access$900(Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;)Lcom/samsung/android/app/music/bixby/search/BixbySearchable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;->access$700(Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener$1;-><init>(Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener;)V

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/music/bixby/search/BixbySearchable;->setOnSearchListener(ILcom/samsung/android/app/music/bixby/search/BixbySearchable$OnSearchListener;)V

    goto :goto_0
.end method
