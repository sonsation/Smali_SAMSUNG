.class Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$2;
.super Ljava/lang/Object;
.source "SecSummaryLayoutCHN.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 6
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->-get3(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)Landroid/widget/TabHost;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "currentTab":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-static {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->-get0(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->-wrap0(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;Landroid/content/Context;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 275
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    .line 276
    const-string/jumbo v3, "SummaryPreferenceCHN"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the tab listener current tab sub id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->-wrap1(I)V

    .line 279
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->-get1(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v3

    .line 280
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-static {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->-get0(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;

    move-result-object v4

    .line 279
    invoke-virtual {v3, v4}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v1

    .line 281
    .local v1, "info":Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->setInfoData(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    .line 282
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updateUI(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    .line 283
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->-get2(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)Lcom/android/settings/datausage/DataUsageSummary;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/datausage/DataUsageSummary;->addEnt1Section(I)V

    .line 272
    return-void
.end method
