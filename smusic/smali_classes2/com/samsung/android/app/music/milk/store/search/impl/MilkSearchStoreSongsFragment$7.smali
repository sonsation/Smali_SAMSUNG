.class Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$7;
.super Ljava/lang/Object;
.source "MilkSearchStoreSongsFragment.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->playRequest(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<[J>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

.field final synthetic val$playTracks:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$7;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$7;->val$playTracks:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 564
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$7;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-[J>;)V"
        }
    .end annotation

    .prologue
    .line 567
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-[J>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$7;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$7;->val$playTracks:Ljava/util/List;

    .line 568
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->addMilkTrackList(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)[J

    move-result-object v0

    .line 570
    .local v0, "playIdList":[J
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 571
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 572
    return-void
.end method
