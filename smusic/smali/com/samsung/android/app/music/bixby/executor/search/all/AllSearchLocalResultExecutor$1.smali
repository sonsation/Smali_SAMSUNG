.class Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$1;
.super Landroid/os/Handler;
.source "AllSearchLocalResultExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->onCommandCompleted(ZLcom/samsung/android/app/musiclibrary/core/bixby/Command;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;->access$100(Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;)Lcom/samsung/android/app/music/common/activity/SearchActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->changeContentsType(I)V

    .line 111
    return-void
.end method
