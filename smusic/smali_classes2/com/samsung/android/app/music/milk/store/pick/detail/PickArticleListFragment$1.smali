.class Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment$1;
.super Ljava/lang/Object;
.source "PickArticleListFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkStateChanged(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 3
    .param p1, "networkInfo"    # Lcom/samsung/android/app/music/network/NetworkInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->access$200(Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;)Lcom/samsung/android/app/music/network/NetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->access$200(Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;)Lcom/samsung/android/app/music/network/NetworkManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo;->all:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->access$300(Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;)Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;

    .line 266
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->access$300(Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;)Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 267
    const-string v0, "PickArticleListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnNetworkStateChangedListener() network is reconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;

    .line 269
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->access$300(Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;)Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 273
    :cond_0
    return-void
.end method
