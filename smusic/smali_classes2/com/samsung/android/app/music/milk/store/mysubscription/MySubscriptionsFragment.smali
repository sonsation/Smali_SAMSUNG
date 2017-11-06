.class public Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "MySubscriptionsFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment$MySubscriptionItemId;,
        Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment$MyAccountInfoColumns;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
        "<",
        "Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;",
        ">;",
        "Landroid/content/ServiceConnection;",
        "Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;"
    }
.end annotation


# static fields
.field private static final LOADER_ID_SUBSCRIPTION_ACTIVE:I = 0x186a0

.field private static final LOADER_ID_SUBSCRIPTION_EXPIRED:I = 0x186a1

.field private static final LOG_TAG:Ljava/lang/String; = "MySubscriptionsFragment"


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mFeatureChangeListener:Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;

.field private final mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

.field private mRadioPlayLimitHeader:Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;

.field private myInfoHeader:Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 110
    new-instance v0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .line 184
    new-instance v0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->mFeatureChangeListener:Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;)Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->myInfoHeader:Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;

    return-object v0
.end method

.method private updateRadioLimitHeader()V
    .locals 3

    .prologue
    const/16 v2, -0x1e

    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->PremiumUser:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    .line 244
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->hasFeature(Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 245
    const-string v0, "MySubscriptionsFragment"

    const-string/jumbo v1, "update radio limit header for non-premium user"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;->hasHeaderView(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->mRadioPlayLimitHeader:Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;

    .line 248
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;->getView()Landroid/view/View;

    move-result-object v1

    .line 247
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 249
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->getListType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->restartListLoader(I)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getRadioPlayLimitInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I

    .line 259
    :cond_1
    :goto_0
    return-void

    .line 253
    :cond_2
    const-string v0, "MySubscriptionsFragment"

    const-string/jumbo v1, "update radio limit header for premium user"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;->hasHeaderView(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;->removeHeaderView(I)V

    .line 256
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->getListType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->restartListLoader(I)V

    goto :goto_0
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 142
    const/16 v0, 0x51

    return v0
.end method

.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 209
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 213
    const/16 v2, 0x27f0

    if-ne p2, v2, :cond_0

    .line 214
    packed-switch p3, :pswitch_data_0

    .line 235
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 216
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_0
    if-nez p4, :cond_1

    .line 217
    const-string v2, "MySubscriptionsFragment"

    const-string v3, "radio play info is null"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    check-cast p4, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitResponseModel;

    .line 224
    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitResponseModel;->getRadioPlayLimitInfo()Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;

    move-result-object v1

    .line 225
    .local v1, "radioPlayLimitInfo":Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;
    if-eqz v1, :cond_0

    .line 227
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->mRadioPlayLimitHeader:Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;->setRadioPlayInfo(Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_1
    const-string v2, "MySubscriptionsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "play count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;->getPlayCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    .line 156
    .local v0, "builder":Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$Builder;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$Builder;->build()Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->onCreateAdapter()Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Landroid/content/AsyncTaskLoader;

    .line 167
    .local v0, "cl":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<Landroid/database/Cursor;>;"
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    .line 168
    return-object v0
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 181
    new-instance v0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionQueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionQueryArgs;-><init>()V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onCreateView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const v0, 0x7f040090

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onDestroy()V

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->mFeatureChangeListener:Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->removeFeatureListener(Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;)V

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 108
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const-string v1, "MySubscriptionsFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " onLoadFinished() | id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | data: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 175
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 177
    return-void

    .line 175
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 47
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 197
    const-string v0, "MySubscriptionsFragment"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->updateHeader()V

    .line 201
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 205
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 77
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->mApplicationContext:Landroid/content/Context;

    .line 80
    const v2, 0x7f120202

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 81
    .local v1, "headerLayout":Landroid/view/ViewGroup;
    new-instance v2, Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;-><init>(Landroid/app/Fragment;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->myInfoHeader:Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;

    .line 82
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->myInfoHeader:Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;->build()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    new-instance v2, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->mRadioPlayLimitHeader:Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->bindService(Landroid/content/ServiceConnection;)Z

    .line 87
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->setListShown(Z)V

    .line 89
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->getListType()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->initListLoader(I)V

    .line 93
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->mFeatureChangeListener:Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->addFeatureListener(Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;)V

    .line 94
    return-void
.end method

.method public updateHeader()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->myInfoHeader:Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MyInfoHeader;->updateHeader()V

    .line 263
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;->updateRadioLimitHeader()V

    .line 264
    return-void
.end method
