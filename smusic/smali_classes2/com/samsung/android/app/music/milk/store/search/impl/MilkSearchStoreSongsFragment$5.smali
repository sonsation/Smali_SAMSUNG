.class Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$5;
.super Ljava/lang/Object;
.source "MilkSearchStoreSongsFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->playTracks(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

.field final synthetic val$isPlayAllBtn:Z

.field final synthetic val$playTracks:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;Ljava/util/List;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    .prologue
    .line 499
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$5;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$5;->val$playTracks:Ljava/util/List;

    iput-boolean p3, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$5;->val$isPlayAllBtn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 502
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 8
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 507
    const/16 v5, 0x5dd

    if-ne p2, v5, :cond_0

    .line 508
    packed-switch p3, :pswitch_data_0

    .line 530
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$5;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$5;->val$playTracks:Ljava/util/List;

    iget-boolean v7, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$5;->val$isPlayAllBtn:Z

    invoke-static {v5, v6, v7}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->access$2200(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;Ljava/util/List;Z)V

    .line 534
    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object v2, p4

    .line 510
    check-cast v2, Lcom/samsung/android/app/music/common/model/AlbumImageUrlsList;

    .line 511
    .local v2, "list":Lcom/samsung/android/app/music/common/model/AlbumImageUrlsList;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/AlbumImageUrlsList;->getImages()Ljava/util/ArrayList;

    move-result-object v1

    .line 512
    .local v1, "imageUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/AlbumImageUrls;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 513
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/common/model/AlbumImageUrls;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/AlbumImageUrls;->getUrls()Ljava/util/ArrayList;

    move-result-object v4

    .line 514
    .local v4, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/ImageUrl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/ImageUrl;

    .line 515
    .local v3, "url":Lcom/samsung/android/app/music/common/model/ImageUrl;
    const/16 v6, 0x258

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/ImageUrl;->getSize()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 516
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$5;->val$playTracks:Ljava/util/List;

    if-nez v5, :cond_3

    .line 512
    .end local v3    # "url":Lcom/samsung/android/app/music/common/model/ImageUrl;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 519
    .restart local v3    # "url":Lcom/samsung/android/app/music/common/model/ImageUrl;
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$5;->val$playTracks:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/ImageUrl;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setImageBigUrl(Ljava/lang/String;)V

    .line 520
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$5;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-static {v5}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->access$2100(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)Ljava/lang/String;

    move-result-object v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "track :  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$5;->val$playTracks:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 525
    .end local v3    # "url":Lcom/samsung/android/app/music/common/model/ImageUrl;
    .end local v4    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/ImageUrl;>;"
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$5;->val$playTracks:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$5;->val$playTracks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 526
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$5;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$5;->val$playTracks:Ljava/util/List;

    iget-boolean v7, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$5;->val$isPlayAllBtn:Z

    invoke-static {v5, v6, v7}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->access$2200(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;Ljava/util/List;Z)V

    goto/16 :goto_0

    .line 508
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
