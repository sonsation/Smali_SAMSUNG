.class public Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;
.super Ljava/lang/Object;
.source "MilkSearchStoreAutocompletePresenter.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MilkSearchStoreAutocompletePresenter"


# instance fields
.field private searchAutoCompleteView:Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/IMilkSearchStoreAutocompletePresenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachView(Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/IMilkSearchStoreAutocompletePresenter;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/IMilkSearchStoreAutocompletePresenter;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;->searchAutoCompleteView:Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/IMilkSearchStoreAutocompletePresenter;

    .line 25
    return-void
.end method

.method public cancelLoading()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public detachView()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;->searchAutoCompleteView:Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/IMilkSearchStoreAutocompletePresenter;

    .line 29
    return-void
.end method

.method public getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;->searchAutoCompleteView:Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/IMilkSearchStoreAutocompletePresenter;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;->searchAutoCompleteView:Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/IMilkSearchStoreAutocompletePresenter;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/IMilkSearchStoreAutocompletePresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewAttached()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;->searchAutoCompleteView:Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/IMilkSearchStoreAutocompletePresenter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadSearchAutoCompletes(Ljava/lang/String;)V
    .locals 6
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;->searchAutoCompleteView:Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/IMilkSearchStoreAutocompletePresenter;

    if-eqz v2, :cond_0

    .line 100
    :try_start_0
    const-string v2, "UTF8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 108
    .local v1, "encodeKeyword":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;->searchAutoCompleteView:Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/IMilkSearchStoreAutocompletePresenter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;->searchAutoCompleteView:Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/IMilkSearchStoreAutocompletePresenter;

    .line 109
    invoke-interface {v2}, Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/IMilkSearchStoreAutocompletePresenter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;->getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getSearchAutoCompletes(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I

    .line 115
    .end local v1    # "encodeKeyword":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 103
    const-string v2, "MilkSearchStoreAutocompletePresenter"

    const-string v3, "loadSearchAutoCompletes : UTF8 encoding is failed"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    move-object v1, p1

    .restart local v1    # "encodeKeyword":Ljava/lang/String;
    goto :goto_0

    .line 112
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;->searchAutoCompleteView:Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/IMilkSearchStoreAutocompletePresenter;

    const/4 v3, 0x1

    const/4 v4, -0x1

    const-string v5, ""

    invoke-interface {v2, v3, v4, v5}, Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/IMilkSearchStoreAutocompletePresenter;->showError(IILjava/lang/String;)V

    goto :goto_1
.end method

.method public onApiCalled(II)V
    .locals 2
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 45
    packed-switch p2, :pswitch_data_0

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 47
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;->searchAutoCompleteView:Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/IMilkSearchStoreAutocompletePresenter;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;->searchAutoCompleteView:Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/IMilkSearchStoreAutocompletePresenter;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/IMilkSearchStoreAutocompletePresenter;->showLoading(Z)V

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x4e86
        :pswitch_0
    .end packed-switch
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 56
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;->searchAutoCompleteView:Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/IMilkSearchStoreAutocompletePresenter;

    if-eqz v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;->searchAutoCompleteView:Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/IMilkSearchStoreAutocompletePresenter;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/IMilkSearchStoreAutocompletePresenter;->showLoading(Z)V

    .line 60
    :cond_0
    packed-switch p3, :pswitch_data_0

    .line 90
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 62
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_1
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    move-object v1, p4

    .line 64
    check-cast v1, Lcom/samsung/android/app/music/common/model/milksearch/SearchAutoCompleteInfo;

    .line 66
    .local v1, "searchAutoCompleteInfo":Lcom/samsung/android/app/music/common/model/milksearch/SearchAutoCompleteInfo;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;->searchAutoCompleteView:Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/IMilkSearchStoreAutocompletePresenter;

    if-eqz v2, :cond_1

    .line 67
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;->searchAutoCompleteView:Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/IMilkSearchStoreAutocompletePresenter;

    .line 68
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milksearch/SearchAutoCompleteInfo;->getAutoCompleteList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/IMilkSearchStoreAutocompletePresenter;->showContents(Ljava/util/List;)V

    goto :goto_0

    .line 77
    .end local v1    # "searchAutoCompleteInfo":Lcom/samsung/android/app/music/common/model/milksearch/SearchAutoCompleteInfo;
    :pswitch_3
    packed-switch p2, :pswitch_data_2

    goto :goto_0

    .line 79
    :pswitch_4
    const/4 v0, -0x1

    .line 80
    .local v0, "errorCode":I
    instance-of v2, p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    if-eqz v2, :cond_2

    .line 81
    check-cast p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v0

    .line 83
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;->searchAutoCompleteView:Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/IMilkSearchStoreAutocompletePresenter;

    if-eqz v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/MilkSearchStoreAutocompletePresenter;->searchAutoCompleteView:Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/IMilkSearchStoreAutocompletePresenter;

    const/4 v3, 0x0

    invoke-interface {v2, p3, v0, v3}, Lcom/samsung/android/app/music/milk/store/search/presenter/autocomplete/IMilkSearchStoreAutocompletePresenter;->showError(IILjava/lang/String;)V

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 62
    :pswitch_data_1
    .packed-switch 0x4e86
        :pswitch_2
    .end packed-switch

    .line 77
    :pswitch_data_2
    .packed-switch 0x4e86
        :pswitch_4
    .end packed-switch
.end method
