.class public Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;
.super Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;
.source "PickDetailArticleViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PickDetailArticleViewHolder"


# instance fields
.field private articleSelectableCallback:Lcom/samsung/android/app/music/milk/store/pick/detail/AdapterSelectableCallback;

.field private mArticleDescription:Landroid/widget/TextView;

.field private mArticleId:Ljava/lang/String;

.field private mArticleImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

.field private mArticleTitle:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDivider:Landroid/widget/LinearLayout;

.field private mPlayAllBtn:Landroid/widget/TextView;

.field private mPlayRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayRequestPosition:I

.field private mSelectAllBtn:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/music/milk/store/pick/detail/AdapterSelectableCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "callback"    # Lcom/samsung/android/app/music/milk/store/pick/detail/AdapterSelectableCallback;

    .prologue
    .line 58
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;-><init>(Landroid/view/View;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mPlayRequestList:Ljava/util/List;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mPlayRequestPosition:I

    .line 59
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mContext:Landroid/content/Context;

    .line 60
    const v0, 0x7f120248

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mDivider:Landroid/widget/LinearLayout;

    .line 61
    const v0, 0x7f12043d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mArticleTitle:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f12043e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mArticleImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 63
    const v0, 0x7f12043f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mArticleDescription:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f120441

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mSelectAllBtn:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mSelectAllBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v0, 0x7f120440

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mPlayAllBtn:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mPlayAllBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->articleSelectableCallback:Lcom/samsung/android/app/music/milk/store/pick/detail/AdapterSelectableCallback;

    .line 69
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/pick/detail/AdapterSelectableCallback;)Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/samsung/android/app/music/milk/store/pick/detail/AdapterSelectableCallback;

    .prologue
    .line 73
    const v2, 0x7f04017a

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 74
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/music/milk/store/pick/detail/AdapterSelectableCallback;)V

    .line 76
    .local v0, "holder":Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;
    return-object v0
.end method

.method private getAlbumIds()Ljava/lang/String;
    .locals 6

    .prologue
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mPlayRequestList:Ljava/util/List;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->articleSelectableCallback:Lcom/samsung/android/app/music/milk/store/pick/detail/AdapterSelectableCallback;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->getArticleId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/samsung/android/app/music/milk/store/pick/detail/AdapterSelectableCallback;->getArticleTracks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 115
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mPlayRequestList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 116
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mPlayRequestList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 117
    .local v2, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    if-nez v0, :cond_0

    .line 118
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getAlbumId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getAlbumId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 124
    .end local v2    # "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    :cond_1
    const-string v3, "PickDetailArticleViewHolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getAlbumIds] ids : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getArticleDescription()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mArticleDescription:Landroid/widget/TextView;

    return-object v0
.end method

.method public getArticleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mArticleId:Ljava/lang/String;

    return-object v0
.end method

.method public getArticleImage()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mArticleImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    return-object v0
.end method

.method public getArticleTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mArticleTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDivider()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mDivider:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getPlayAll()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mPlayAllBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSelectAll()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mSelectAllBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 157
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
    const/4 v9, 0x0

    const v8, 0x100050

    .line 161
    const-string v5, "PickDetailArticleViewHolder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onApiHandled() reqId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " reqType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rspType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/16 v5, 0x5dd

    if-ne p2, v5, :cond_1

    .line 165
    packed-switch p3, :pswitch_data_0

    .line 190
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mPlayRequestList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mPlayRequestList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 191
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mPlayRequestList:Ljava/util/List;

    iget v7, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mPlayRequestPosition:I

    invoke-static {v5, v8, v9, v6, v7}, Lcom/samsung/android/app/music/list/common/PlayUtils;->play(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;I)V

    .line 196
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mPlayRequestList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 198
    :cond_1
    return-void

    :pswitch_0
    move-object v2, p4

    .line 167
    check-cast v2, Lcom/samsung/android/app/music/common/model/AlbumImageUrlsList;

    .line 168
    .local v2, "list":Lcom/samsung/android/app/music/common/model/AlbumImageUrlsList;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/AlbumImageUrlsList;->getImages()Ljava/util/ArrayList;

    move-result-object v1

    .line 169
    .local v1, "imageUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/AlbumImageUrls;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 170
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/common/model/AlbumImageUrls;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/AlbumImageUrls;->getUrls()Ljava/util/ArrayList;

    move-result-object v4

    .line 171
    .local v4, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/ImageUrl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/ImageUrl;

    .line 172
    .local v3, "url":Lcom/samsung/android/app/music/common/model/ImageUrl;
    const/16 v6, 0x258

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/ImageUrl;->getSize()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 173
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mPlayRequestList:Ljava/util/List;

    if-nez v5, :cond_4

    .line 169
    .end local v3    # "url":Lcom/samsung/android/app/music/common/model/ImageUrl;
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 176
    .restart local v3    # "url":Lcom/samsung/android/app/music/common/model/ImageUrl;
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mPlayRequestList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/ImageUrl;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setImageBigUrl(Ljava/lang/String;)V

    .line 177
    const-string v6, "PickDetailArticleViewHolder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "track :  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mPlayRequestList:Ljava/util/List;

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

    .line 182
    .end local v3    # "url":Lcom/samsung/android/app/music/common/model/ImageUrl;
    .end local v4    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/ImageUrl;>;"
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mPlayRequestList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mPlayRequestList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 183
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mPlayRequestList:Ljava/util/List;

    iget v7, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mPlayRequestPosition:I

    .line 184
    invoke-static {v5, v8, v9, v6, v7}, Lcom/samsung/android/app/music/list/common/PlayUtils;->play(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;I)V

    goto/16 :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f120441

    if-ne v2, v3, :cond_1

    .line 131
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->articleSelectableCallback:Lcom/samsung/android/app/music/milk/store/pick/detail/AdapterSelectableCallback;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->getArticleId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/milk/store/pick/detail/AdapterSelectableCallback;->selectArticleTracks(Ljava/lang/String;)V

    .line 143
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mContext:Landroid/content/Context;

    const-string v3, "music_service_pref"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "shuffle"

    .line 145
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 147
    .local v0, "isShuffleOn":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 148
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mPlayRequestPosition:I

    .line 152
    .end local v0    # "isShuffleOn":Z
    :goto_2
    return-void

    .line 132
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f120440

    if-ne v2, v3, :cond_0

    .line 133
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mPlayRequestList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 134
    const-string v1, "PickDetailArticleViewHolder"

    const-string v2, "onClick() Request Playing All Tracks on going. ignore this"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 137
    :cond_2
    const-string v2, "PickDetailArticleViewHolder"

    const-string v3, "onClick() Request Playing All Tracks in this Article"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    .line 140
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->getAlbumIds()Ljava/lang/String;

    move-result-object v3

    const-string v4, "4"

    invoke-virtual {v2, p0, v3, v4}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getAlbumImageUrls(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v0, v1

    .line 145
    goto :goto_1

    .line 150
    .restart local v0    # "isShuffleOn":Z
    :cond_4
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mPlayRequestPosition:I

    goto :goto_2
.end method

.method public setArticleId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleViewHolder;->mArticleId:Ljava/lang/String;

    .line 109
    return-void
.end method
