.class public Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;
.super Ljava/lang/Object;
.source "MilkStoreSearchPresetPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# instance fields
.field private IMilkStoreSearchPresentPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->mContext:Ljava/lang/ref/WeakReference;

    .line 32
    return-void
.end method

.method private getPresetTitleList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "presetList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;>;"
    if-nez p1, :cond_1

    .line 187
    const/4 v1, 0x0

    .line 194
    :cond_0
    return-object v1

    .line 190
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v1, "presetTitleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 192
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public attachView(Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->IMilkStoreSearchPresentPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;

    .line 36
    return-void
.end method

.method public detachView()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->IMilkStoreSearchPresentPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;

    .line 40
    return-void
.end method

.method public isViewAttached()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->IMilkStoreSearchPresentPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadSearchPresets()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->IMilkStoreSearchPresentPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->mContext:Ljava/lang/ref/WeakReference;

    .line 115
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getSearchPresets(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I

    .line 118
    :cond_0
    return-void
.end method

.method public onApiCalled(II)V
    .locals 2
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 48
    packed-switch p2, :pswitch_data_0

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 50
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->IMilkStoreSearchPresentPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->IMilkStoreSearchPresentPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;->showLoading(Z)V

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x4e85
        :pswitch_0
    .end packed-switch
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 8
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 59
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->IMilkStoreSearchPresentPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;

    if-eqz v6, :cond_0

    .line 60
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->IMilkStoreSearchPresentPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;->showLoading(Z)V

    .line 63
    :cond_0
    packed-switch p3, :pswitch_data_0

    .line 108
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_1
    :goto_0
    :pswitch_0
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->IMilkStoreSearchPresentPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;

    if-eqz v6, :cond_2

    .line 109
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->IMilkStoreSearchPresentPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;

    invoke-interface {v6}, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;->finishLoad()V

    .line 111
    :cond_2
    return-void

    .line 65
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_1
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    move-object v5, p4

    .line 67
    check-cast v5, Lcom/samsung/android/app/music/common/model/milksearch/SearchPresetInfo;

    .line 68
    .local v5, "searchPresetInfo":Lcom/samsung/android/app/music/common/model/milksearch/SearchPresetInfo;
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->IMilkStoreSearchPresentPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    .line 70
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/milksearch/SearchPresetInfo;->getPresetList()Ljava/util/List;

    move-result-object v1

    .line 71
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;>;"
    if-eqz v1, :cond_2

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v2, "preWrittenList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v4, "presetList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;

    .line 79
    .local v3, "preset":Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;->isPreWritten()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 80
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 81
    :cond_4
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;->isPreset()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 82
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 86
    .end local v3    # "preset":Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->IMilkStoreSearchPresentPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;

    invoke-interface {v6, v2}, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;->showPreWritten(Ljava/util/List;)V

    .line 87
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->IMilkStoreSearchPresentPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;

    invoke-interface {v6, v4}, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;->showContents(Ljava/util/List;)V

    goto :goto_0

    .line 95
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;>;"
    .end local v2    # "preWrittenList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;>;"
    .end local v4    # "presetList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;>;"
    .end local v5    # "searchPresetInfo":Lcom/samsung/android/app/music/common/model/milksearch/SearchPresetInfo;
    :pswitch_3
    const/16 v6, 0x4e85

    if-ne p2, v6, :cond_2

    .line 98
    const/4 v0, -0x1

    .line 99
    .local v0, "errorCode":I
    instance-of v6, p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    if-eqz v6, :cond_6

    .line 100
    check-cast p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v0

    .line 102
    :cond_6
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->IMilkStoreSearchPresentPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;

    if-eqz v6, :cond_1

    .line 103
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->IMilkStoreSearchPresentPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;

    const/4 v7, 0x0

    invoke-interface {v6, p3, v0, v7}, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;->showError(IILjava/lang/String;)V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 65
    :pswitch_data_1
    .packed-switch 0x4e85
        :pswitch_2
    .end packed-switch
.end method

.method public refreshSearchHistory(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "presetList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;>;"
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 122
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->getPresetTitleList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 124
    .local v0, "contentsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    const-string v5, "com.samsung.radio.search.HISTORY_COUNT"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/common/preferences/Pref;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 126
    .local v1, "historyCnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 127
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.samsung.radio.search.HISTORY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "string":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    .end local v3    # "string":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->IMilkStoreSearchPresentPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;

    if-eqz v4, :cond_2

    .line 134
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->IMilkStoreSearchPresentPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;

    .line 135
    invoke-interface {v4, v0, v1}, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;->showContentsListChanged(Ljava/util/List;I)V

    .line 138
    .end local v0    # "contentsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "historyCnt":I
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public removeAllSearchHistory(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "presetList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;>;"
    const/4 v6, 0x0

    .line 170
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 171
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->getPresetTitleList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 173
    .local v0, "contentsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const-string v4, "com.samsung.radio.search.HISTORY_COUNT"

    invoke-static {v3, v4, v6}, Lcom/samsung/android/app/music/common/preferences/Pref;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 174
    .local v1, "historyCnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 175
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.samsung.radio.search.HISTORY"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const-string v4, "com.samsung.radio.search.HISTORY_COUNT"

    invoke-static {v3, v4, v6}, Lcom/samsung/android/app/music/common/preferences/Pref;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 179
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->IMilkStoreSearchPresentPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;

    if-eqz v3, :cond_1

    .line 180
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->IMilkStoreSearchPresentPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;

    invoke-interface {v3, v0, v6}, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;->showContentsListChanged(Ljava/util/List;I)V

    .line 183
    .end local v0    # "contentsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "historyCnt":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public removeSearchHistory(Ljava/util/List;I)V
    .locals 7
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "presetList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchPreset;>;"
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 142
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->getPresetTitleList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 144
    .local v0, "contentsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    const-string v5, "com.samsung.radio.search.HISTORY_COUNT"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/common/preferences/Pref;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 146
    .local v1, "historyCnt":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-ge v2, v4, :cond_0

    .line 147
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->mContext:Ljava/lang/ref/WeakReference;

    .line 148
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.samsung.radio.search.HISTORY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "string":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.samsung.radio.search.HISTORY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    .end local v3    # "string":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.samsung.radio.search.HISTORY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/common/preferences/Pref;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    const-string v5, "com.samsung.radio.search.HISTORY_COUNT"

    add-int/lit8 v6, v1, -0x1

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/common/preferences/Pref;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 155
    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v4, v1, -0x1

    if-ge v2, v4, :cond_2

    .line 156
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.samsung.radio.search.HISTORY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    .restart local v3    # "string":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 158
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 162
    .end local v3    # "string":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->IMilkStoreSearchPresentPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;

    if-eqz v4, :cond_3

    .line 163
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/MilkStoreSearchPresetPresenter;->IMilkStoreSearchPresentPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;

    add-int/lit8 v5, v1, -0x1

    .line 164
    invoke-interface {v4, v0, v5}, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/IMilkStoreSearchPresentPresenter;->showContentsListChanged(Ljava/util/List;I)V

    .line 167
    .end local v0    # "contentsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "historyCnt":I
    .end local v2    # "i":I
    :cond_3
    return-void
.end method
