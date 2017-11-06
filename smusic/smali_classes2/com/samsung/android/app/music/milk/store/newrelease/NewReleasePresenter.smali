.class public Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;
.super Ljava/lang/Object;
.source "NewReleasePresenter.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NewReleasePresenter"


# instance fields
.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayId:Ljava/lang/String;

.field private mDisplayType:Ljava/lang/String;

.field private mView:Lcom/samsung/android/app/music/milk/store/newrelease/INewReleaseView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "displayId"    # Ljava/lang/String;
    .param p2, "displayType"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;->mDisplayId:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;->mDisplayType:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;->mContext:Ljava/lang/ref/WeakReference;

    .line 34
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public attachView(Lcom/samsung/android/app/music/milk/store/newrelease/INewReleaseView;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/app/music/milk/store/newrelease/INewReleaseView;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;->mView:Lcom/samsung/android/app/music/milk/store/newrelease/INewReleaseView;

    .line 46
    return-void
.end method

.method public detachView()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;->mView:Lcom/samsung/android/app/music/milk/store/newrelease/INewReleaseView;

    .line 50
    return-void
.end method

.method public getView()Lcom/samsung/android/app/music/milk/store/newrelease/INewReleaseView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;->mView:Lcom/samsung/android/app/music/milk/store/newrelease/INewReleaseView;

    return-object v0
.end method

.method public isViewAttached()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;->mView:Lcom/samsung/android/app/music/milk/store/newrelease/INewReleaseView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAlbums()V
    .locals 6

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;->mDisplayId:Ljava/lang/String;

    const/4 v3, 0x1

    const-string v4, "3"

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;->mDisplayType:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getStoreDisplayDetailPage(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method public onApiCalled(II)V
    .locals 2
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;->getView()Lcom/samsung/android/app/music/milk/store/newrelease/INewReleaseView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/store/newrelease/INewReleaseView;->showLoading(Z)V

    .line 66
    :cond_0
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 9
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;->isViewAttached()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;->getView()Lcom/samsung/android/app/music/milk/store/newrelease/INewReleaseView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/samsung/android/app/music/milk/store/newrelease/INewReleaseView;->showLoading(Z)V

    .line 73
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 108
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 75
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_0
    packed-switch p3, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    :pswitch_2
    move-object v5, p4

    .line 77
    check-cast v5, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;

    .line 78
    .local v5, "response":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;->getDisplayList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .line 79
    .local v2, "group":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getDisplayType()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;->mDisplayType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 80
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getContentList()Ljava/util/List;

    move-result-object v4

    .line 81
    .local v4, "newReleases":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v0, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Album;>;"
    if-eqz v4, :cond_3

    .line 83
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    .line 84
    .local v3, "newAlbum":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;
    invoke-static {v3}, Lcom/samsung/android/app/music/common/model/Album;->from(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;)Lcom/samsung/android/app/music/common/model/Album;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 88
    .end local v3    # "newAlbum":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;->isViewAttached()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;->getView()Lcom/samsung/android/app/music/milk/store/newrelease/INewReleaseView;

    move-result-object v7

    invoke-interface {v7, v0}, Lcom/samsung/android/app/music/milk/store/newrelease/INewReleaseView;->showAlbums(Ljava/util/List;)V

    goto :goto_1

    .line 97
    .end local v0    # "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Album;>;"
    .end local v2    # "group":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    .end local v4    # "newReleases":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;>;"
    .end local v5    # "response":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;
    :pswitch_3
    const/4 v1, -0x1

    .line 98
    .local v1, "errorCode":I
    instance-of v6, p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    if-eqz v6, :cond_4

    .line 99
    check-cast p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v1

    .line 101
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;->isViewAttached()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/newrelease/NewReleasePresenter;->getView()Lcom/samsung/android/app/music/milk/store/newrelease/INewReleaseView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, p3, v1, v7}, Lcom/samsung/android/app/music/milk/store/newrelease/INewReleaseView;->showError(IILjava/lang/String;)V

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x2778
        :pswitch_0
    .end packed-switch

    .line 75
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
