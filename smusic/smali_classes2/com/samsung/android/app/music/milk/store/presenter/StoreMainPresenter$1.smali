.class Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter$1;
.super Lrx/Subscriber;
.source "StoreMainPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->requestStoreMainGroups()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter$1;->this$0:Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 187
    instance-of v1, p1, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$StoreException;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 188
    check-cast v0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$StoreException;

    .line 190
    .local v0, "exception":Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$StoreException;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter$1;->this$0:Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->isAttachedView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter$1;->this$0:Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->access$000(Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;)Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;->hideMainGroups()V

    .line 192
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter$1;->this$0:Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->access$000(Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;)Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;->hideProgress()V

    .line 193
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter$1;->this$0:Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->access$000(Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;)Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$StoreException;->getRspCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$StoreException;->getErrorCode()I

    move-result v3

    .line 194
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$StoreException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 193
    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;->showError(IILjava/lang/String;)V

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter$1;->this$0:Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->access$102(Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;Z)Z

    .line 199
    .end local v0    # "exception":Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$StoreException;
    :cond_1
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 178
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter$1;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "storeMainGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;"
    const-string v0, "StoreMainPresenter"

    const-string v1, "loadStoreMainGroups::onNext : in"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter$1;->this$0:Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->isAttachedView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter$1;->this$0:Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->access$000(Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;)Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;->hideError()V

    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter$1;->this$0:Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->access$000(Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;)Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;->hideProgress()V

    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter$1;->this$0:Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->isUpdated(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter$1;->this$0:Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->access$000(Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;)Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/store/IStoreMainMvp$MvpView;->updateMainGroups(Ljava/util/List;)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter$1;->this$0:Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;->access$102(Lcom/samsung/android/app/music/milk/store/presenter/StoreMainPresenter;Z)Z

    .line 215
    :cond_1
    return-void
.end method
