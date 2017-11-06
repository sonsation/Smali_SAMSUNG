.class Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "MilkSearchStorePickTrackFragment.java"


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
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber",
        "<",
        "Ljava/lang/Object;",
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
    .line 678
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "searchStoreContents (onCompleted) >>> Enable Autocomplete"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->setEnableAutocomplete(Z)V

    .line 685
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->onSearchCommandCompleted()V

    .line 686
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 690
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchStoreContents (onNext) >>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    .end local p1    # "o":Ljava/lang/Object;
    const-string v0, "Search content"

    .line 692
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;->val$keyword:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$3;->val$contentType:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->replaceSearchResultFragment(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;)Landroid/app/Fragment;

    .line 695
    :cond_0
    return-void
.end method
