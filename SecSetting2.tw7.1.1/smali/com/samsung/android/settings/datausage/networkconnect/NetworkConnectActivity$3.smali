.class Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;
.super Ljava/lang/Object;
.source "NetworkConnectActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/net/NetworkStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    new-instance v0, Lcom/android/settingslib/net/SummaryForAllUidLoader;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get0(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get9(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settingslib/net/SummaryForAllUidLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V
    .locals 12
    .param p2, "data"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;",
            "Landroid/net/NetworkStats;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/net/NetworkStats;>;"
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 430
    sget-boolean v6, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsNeedReLoad:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v6}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get4(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    const-wide/16 v4, 0x0

    .line 433
    .local v4, "wifiTotal":J
    sget-object v6, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 434
    sget-object v6, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiLongTypeMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 435
    const/4 v1, 0x0

    .end local v0    # "entry":Landroid/net/NetworkStats$Entry;
    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/net/NetworkStats;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 436
    invoke-virtual {p2, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 437
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    sget-object v6, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiMap:Ljava/util/Map;

    iget v7, v0, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 438
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v6, v4

    iget-wide v8, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long v4, v6, v8

    .line 439
    sget-object v6, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiMap:Ljava/util/Map;

    iget v7, v0, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v5}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-wrap0(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v6, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiLongTypeMap:Ljava/util/Map;

    iget v7, v0, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-wide/16 v4, 0x0

    .line 435
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    :cond_0
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v8, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long v4, v6, v8

    .line 444
    sget-object v6, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiMap:Ljava/util/Map;

    iget v7, v0, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v5}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-wrap0(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v6, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiLongTypeMap:Ljava/util/Map;

    iget v7, v0, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 448
    .end local v0    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_1
    const/4 v1, 0x0

    :goto_2
    sget-object v6, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 449
    sget-object v6, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v6}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v2

    .line 450
    .local v2, "uid":I
    sget-object v6, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiLongTypeMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 451
    sget-object v6, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    sget-object v7, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiLongTypeMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->setWlanTotal(J)V

    .line 448
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 454
    .end local v2    # "uid":I
    :cond_3
    sput-boolean v10, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsNeedReLoad:Z

    .line 456
    .end local v1    # "i":I
    .end local v4    # "wifiTotal":J
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    new-instance v7, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v8}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get0(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/content/Context;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-direct {v7, v8, v9}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v6, v7}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-set1(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;)Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;

    .line 457
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v6}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get3(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3$1;-><init>(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->setItemCheckBoxListener(Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter$OnItemCheckBoxListener;)V

    .line 495
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v6}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get5(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/widget/ListView;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v7}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get3(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 496
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v6}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get3(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 497
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v6}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get3(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidDataMap:Ljava/util/Map;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->bindDataStats(Ljava/util/Map;)V

    .line 498
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v6}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get3(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiMap:Ljava/util/Map;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->bindWifiStats(Ljava/util/Map;)V

    .line 500
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v6}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get5(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    if-nez v6, :cond_6

    .line 501
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v6}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get14(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 502
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v6}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get7(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 504
    :cond_6
    new-instance v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v6}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get0(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;-><init>(Landroid/content/Context;)V

    .line 505
    .local v3, "utils":Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;
    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->sortInNormalStatus()V

    .line 506
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v6, v10}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-set2(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;Z)Z

    .line 429
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 429
    check-cast p2, Landroid/net/NetworkStats;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 425
    .local p1, "arg0":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/net/NetworkStats;>;"
    sget-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 424
    return-void
.end method
