.class Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder$1;
.super Ljava/lang/Object;
.source "TopChartItemViewHolder.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$simpleTrackList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder$1;->this$0:Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder$1;->val$simpleTrackList:Ljava/util/List;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiCalled(II)V
    .locals 3
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 141
    const-string v0, "TopChartItemViewHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onApiCalled : reqId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reqType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 10
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 147
    const-string v5, "TopChartItemViewHolder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " onApiHandled : reqType - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", rspType - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/16 v5, 0x5dd

    if-ne p2, v5, :cond_0

    .line 150
    packed-switch p3, :pswitch_data_0

    .line 176
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder$1;->val$simpleTrackList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder$1;->val$simpleTrackList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 177
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder$1;->val$context:Landroid/content/Context;

    const v6, 0x100050

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder$1;->val$simpleTrackList:Ljava/util/List;

    const/4 v9, 0x0

    .line 178
    invoke-static {v5, v6, v7, v8, v9}, Lcom/samsung/android/app/music/list/common/PlayUtils;->play(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;I)V

    .line 184
    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object v2, p4

    .line 152
    check-cast v2, Lcom/samsung/android/app/music/common/model/AlbumImageUrlsList;

    .line 153
    .local v2, "list":Lcom/samsung/android/app/music/common/model/AlbumImageUrlsList;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/AlbumImageUrlsList;->getImages()Ljava/util/ArrayList;

    move-result-object v1

    .line 154
    .local v1, "imageUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/AlbumImageUrls;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 155
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/common/model/AlbumImageUrls;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/AlbumImageUrls;->getUrls()Ljava/util/ArrayList;

    move-result-object v4

    .line 156
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

    .line 157
    .local v3, "url":Lcom/samsung/android/app/music/common/model/ImageUrl;
    const/16 v6, 0x258

    .line 158
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/ImageUrl;->getSize()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 159
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder$1;->val$simpleTrackList:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 160
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder$1;->val$simpleTrackList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/ImageUrl;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setImageBigUrl(Ljava/lang/String;)V

    .line 161
    const-string v6, "TopChartItemViewHolder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "track :  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder$1;->val$simpleTrackList:Ljava/util/List;

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

    .line 154
    .end local v3    # "url":Lcom/samsung/android/app/music/common/model/ImageUrl;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 168
    .end local v4    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/ImageUrl;>;"
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder$1;->val$simpleTrackList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder$1;->val$simpleTrackList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 169
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder$1;->val$context:Landroid/content/Context;

    const v6, 0x100050

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder$1;->val$simpleTrackList:Ljava/util/List;

    const/4 v9, 0x0

    .line 170
    invoke-static {v5, v6, v7, v8, v9}, Lcom/samsung/android/app/music/list/common/PlayUtils;->play(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;I)V

    goto/16 :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
