.class final Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;
.super Ljava/lang/Object;
.source "AutomaticAnalyticsLogger.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->logInAppPurchaseEvent(Landroid/content/Context;ILandroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$purchaseData:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->val$purchaseData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 12
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 120
    iget-object v7, p0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->val$context:Landroid/content/Context;

    .line 121
    invoke-static {v7, p2}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getServiceInterface(Landroid/content/Context;Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v7

    .line 120
    invoke-static {v7}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->access$002(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->val$purchaseData:Ljava/lang/String;

    invoke-direct {v4, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 124
    .local v4, "purchaseDetails":Lorg/json/JSONObject;
    const-string/jumbo v7, "productId"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "sku":Ljava/lang/String;
    iget-object v7, p0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->val$context:Landroid/content/Context;

    .line 126
    invoke-static {}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->access$000()Ljava/lang/Object;

    move-result-object v8

    .line 125
    invoke-static {v7, v5, v8}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getPurchaseDetails(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, "skuDetails":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    .line 165
    iget-object v7, p0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->val$context:Landroid/content/Context;

    invoke-virtual {v7, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 167
    .end local v4    # "purchaseDetails":Lorg/json/JSONObject;
    .end local v5    # "sku":Ljava/lang/String;
    .end local v6    # "skuDetails":Ljava/lang/String;
    :goto_0
    return-void

    .line 130
    .restart local v4    # "purchaseDetails":Lorg/json/JSONObject;
    .restart local v5    # "sku":Ljava/lang/String;
    .restart local v6    # "skuDetails":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 131
    .local v2, "jsonSkuDetails":Lorg/json/JSONObject;
    iget-object v7, p0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->val$context:Landroid/content/Context;

    invoke-static {v7}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 132
    .local v0, "appEventsLogger":Lcom/facebook/appevents/AppEventsLogger;
    new-instance v3, Landroid/os/Bundle;

    const/4 v7, 0x1

    invoke-direct {v3, v7}, Landroid/os/Bundle;-><init>(I)V

    .line 133
    .local v3, "params":Landroid/os/Bundle;
    const-string v7, "fb_iap_product_id"

    invoke-virtual {v3, v7, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 134
    const-string v7, "fb_iap_purchase_time"

    const-string/jumbo v8, "purchaseTime"

    .line 136
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 134
    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 137
    const-string v7, "fb_iap_purchase_state"

    const-string/jumbo v8, "purchaseState"

    .line 139
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 137
    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 140
    const-string v7, "fb_iap_purchase_token"

    const-string/jumbo v8, "purchaseToken"

    .line 142
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 140
    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 143
    const-string v7, "fb_iap_package_name"

    const-string/jumbo v8, "packageName"

    .line 145
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 143
    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 146
    const-string v7, "fb_iap_product_type"

    const-string/jumbo v8, "type"

    .line 148
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 146
    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 149
    const-string v7, "fb_iap_product_title"

    const-string/jumbo v8, "title"

    .line 151
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 149
    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 152
    const-string v7, "fb_iap_product_description"

    const-string v8, "description"

    .line 154
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 152
    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 156
    new-instance v7, Ljava/math/BigDecimal;

    const-string/jumbo v8, "price_amount_micros"

    .line 157
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    int-to-double v8, v8

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double/2addr v8, v10

    invoke-direct {v7, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    const-string/jumbo v8, "price_currency_code"

    .line 158
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v8

    .line 156
    invoke-virtual {v0, v7, v8, v3}, Lcom/facebook/appevents/AppEventsLogger;->logPurchaseImplicitly(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    iget-object v7, p0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->val$context:Landroid/content/Context;

    invoke-virtual {v7, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto/16 :goto_0

    .line 161
    .end local v0    # "appEventsLogger":Lcom/facebook/appevents/AppEventsLogger;
    .end local v2    # "jsonSkuDetails":Lorg/json/JSONObject;
    .end local v3    # "params":Landroid/os/Bundle;
    .end local v4    # "purchaseDetails":Lorg/json/JSONObject;
    .end local v5    # "sku":Ljava/lang/String;
    .end local v6    # "skuDetails":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-static {}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Error parsing in-app purchase data."

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    iget-object v7, p0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->val$context:Landroid/content/Context;

    invoke-virtual {v7, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto/16 :goto_0

    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->val$context:Landroid/content/Context;

    invoke-virtual {v8, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v7
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->access$002(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "In-app billing service disconnected"

    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method
