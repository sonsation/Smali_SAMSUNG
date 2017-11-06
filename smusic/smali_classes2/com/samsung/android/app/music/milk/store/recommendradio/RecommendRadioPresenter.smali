.class public Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;
.super Ljava/lang/Object;
.source "RecommendRadioPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RecommendRadioPresenter"


# instance fields
.field private initialize:Z

.field private mRadioBoxList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBox;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommendRadioView:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioView;

.field private mRetry:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->mRetry:Z

    .line 31
    return-void
.end method


# virtual methods
.method public attachView(Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioView;)V
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioView;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->mRecommendRadioView:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioView;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->initialize:Z

    .line 36
    return-void
.end method

.method public detachView()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->mRecommendRadioView:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioView;

    .line 40
    return-void
.end method

.method public getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->mRecommendRadioView:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioView;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    return-object v0
.end method

.method public isViewAttached()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->mRecommendRadioView:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadRadioStations(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 114
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->mRecommendRadioView:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioView;

    if-nez v1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->mRadioBoxList:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->mRadioBoxList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->mRadioBoxList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 121
    :cond_1
    const/4 v0, 0x0

    .line 128
    .local v0, "radioBoxId":Ljava/lang/String;
    :goto_1
    const-string v1, "RecommendRadioPresenter"

    const-string v2, "loadRadioStations - load radios : int"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getRecommendRadios(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    .end local v0    # "radioBoxId":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->mRadioBoxList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBox;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBox;->getRadioBoxId()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "radioBoxId":Ljava/lang/String;
    goto :goto_1

    .line 126
    .end local v0    # "radioBoxId":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "radioBoxId":Ljava/lang/String;
    goto :goto_1
.end method

.method public loadRadioStations(Ljava/lang/String;)V
    .locals 3
    .param p1, "radioBoxId"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 140
    .local v0, "queryRadioBoxId":Ljava/lang/String;
    :goto_0
    const-string v1, "RecommendRadioPresenter"

    const-string v2, "loadRadioStations - load radios : string"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getRecommendRadios(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I

    .line 142
    return-void

    .line 137
    .end local v0    # "queryRadioBoxId":Ljava/lang/String;
    :cond_0
    move-object v0, p1

    .restart local v0    # "queryRadioBoxId":Ljava/lang/String;
    goto :goto_0
.end method

.method public onApiCalled(II)V
    .locals 2
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 52
    packed-switch p2, :pswitch_data_0

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 54
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->mRecommendRadioView:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioView;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->mRecommendRadioView:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioView;->showLoading(Z)V

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x2a95
        :pswitch_0
    .end packed-switch
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    const/16 v5, 0x2a95

    const/4 v4, 0x0

    .line 63
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->mRecommendRadioView:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioView;

    if-eqz v3, :cond_0

    .line 64
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->mRecommendRadioView:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioView;

    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioView;->showLoading(Z)V

    .line 67
    :cond_0
    packed-switch p3, :pswitch_data_0

    .line 111
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 69
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_1
    if-ne p2, v5, :cond_1

    move-object v1, p4

    .line 72
    check-cast v1, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadio;

    .line 73
    .local v1, "milkRadio":Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadio;
    if-nez v1, :cond_2

    .line 74
    const-string v3, "RecommendRadioPresenter"

    const-string v4, "onApiHandled - milkRadio is null"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->mRecommendRadioView:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioView;

    if-eqz v3, :cond_1

    .line 78
    iget-boolean v3, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->initialize:Z

    if-eqz v3, :cond_3

    .line 79
    iput-boolean v4, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->initialize:Z

    .line 80
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->mRecommendRadioView:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioView;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadio;->getRadioBannerList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioView;->showBanner(Ljava/util/List;)V

    .line 82
    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadio;->getRadioBoxList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->mRadioBoxList:Ljava/util/List;

    .line 84
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadio;->getRadioBoxInfo()Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo;

    move-result-object v2

    .line 86
    .local v2, "milkRadioBoxInfo":Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo;
    if-eqz v2, :cond_4

    .line 87
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->mRecommendRadioView:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioView;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->mRadioBoxList:Ljava/util/List;

    invoke-interface {v3, v2, v4}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioView;->showContents(Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo;Ljava/util/List;)V

    goto :goto_0

    .line 89
    :cond_4
    iget-boolean v3, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->mRetry:Z

    if-nez v3, :cond_1

    .line 90
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->mRetry:Z

    .line 91
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->loadRadioStations(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    .end local v1    # "milkRadio":Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadio;
    .end local v2    # "milkRadioBoxInfo":Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioBoxInfo;
    :pswitch_2
    if-ne p2, v5, :cond_1

    .line 102
    const/4 v0, -0x1

    .line 103
    .local v0, "errorCode":I
    instance-of v3, p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    if-eqz v3, :cond_5

    .line 104
    check-cast p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v0

    .line 106
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->mRecommendRadioView:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioView;

    if-eqz v3, :cond_1

    .line 107
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioPresenter;->mRecommendRadioView:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioView;

    const/4 v4, 0x0

    invoke-interface {v3, p3, v0, v4}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioView;->showError(IILjava/lang/String;)V

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
