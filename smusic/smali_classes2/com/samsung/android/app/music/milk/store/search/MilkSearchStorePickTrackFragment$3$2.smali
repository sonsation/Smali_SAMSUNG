.class Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3$2;
.super Ljava/lang/Object;
.source "MilkSearchStorePickTrackFragment.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;

    .prologue
    .line 666
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3$2;->this$1:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 666
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3$2;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 669
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3$2;->this$1:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "searchStoreContents >>> Start"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3$2;->this$1:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->setEnableAutocomplete(Z)V

    .line 671
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3$2;->this$1:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3$2;->this$1:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3$2;->this$1:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;->val$keyword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->setQueryText(Ljava/lang/String;)V

    .line 674
    :cond_0
    const-string v0, "Search content"

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 675
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 676
    return-void
.end method
