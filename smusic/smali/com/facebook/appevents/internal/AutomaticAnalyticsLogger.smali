.class public Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;
.super Ljava/lang/Object;
.source "AutomaticAnalyticsLogger.java"


# static fields
.field private static final INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field private static final TAG:Ljava/lang/String;

.field private static inAppBillingObj:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->inAppBillingObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 52
    sput-object p0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->inAppBillingObj:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static logActivateAppEvent()V
    .locals 5

    .prologue
    .line 61
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 62
    .local v2, "context":Landroid/content/Context;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "appId":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v1

    .line 64
    .local v1, "autoLogAppEvents":Z
    const-string v3, "context"

    invoke-static {v2, v3}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    if-eqz v1, :cond_0

    .line 66
    instance-of v3, v2, Landroid/app/Application;

    if-eqz v3, :cond_1

    .line 67
    check-cast v2, Landroid/app/Application;

    .end local v2    # "context":Landroid/content/Context;
    invoke-static {v2, v0}, Lcom/facebook/appevents/AppEventsLogger;->activateApp(Landroid/app/Application;Ljava/lang/String;)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 69
    .restart local v2    # "context":Landroid/content/Context;
    :cond_1
    sget-object v3, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->TAG:Ljava/lang/String;

    const-string v4, "Automatic logging of basic events will not happen, because FacebookSdk.getApplicationContext() returns object that is not instance of android.app.Application. Make sure you call FacebookSdk.sdkInitialize() from Application class and pass application context."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static logActivityTimeSpentEvent(Ljava/lang/String;J)V
    .locals 9
    .param p0, "activityName"    # Ljava/lang/String;
    .param p1, "timeSpentInSeconds"    # J

    .prologue
    .line 81
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 82
    .local v2, "context":Landroid/content/Context;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "appId":Ljava/lang/String;
    const-string v5, "context"

    invoke-static {v2, v5}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/facebook/internal/FetchedAppSettingsManager;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v4

    .line 86
    .local v4, "settings":Lcom/facebook/internal/FetchedAppSettings;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/facebook/internal/FetchedAppSettings;->getAutomaticLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-lez v5, :cond_0

    .line 87
    invoke-static {v2}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 88
    .local v0, "appEventsLogger":Lcom/facebook/appevents/AppEventsLogger;
    new-instance v3, Landroid/os/Bundle;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 89
    .local v3, "params":Landroid/os/Bundle;
    const-string v5, "fb_aa_time_spent_view_name"

    invoke-virtual {v3, v5, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 90
    const-string v5, "fb_aa_time_spent_on_view"

    long-to-double v6, p1

    invoke-virtual {v0, v5, v6, v7, v3}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 93
    .end local v0    # "appEventsLogger":Lcom/facebook/appevents/AppEventsLogger;
    .end local v3    # "params":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public static logInAppPurchaseEvent(Landroid/content/Context;ILandroid/content/Intent;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 99
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "appId":Ljava/lang/String;
    invoke-static {v0, v6}, Lcom/facebook/internal/FetchedAppSettingsManager;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v4

    .line 102
    .local v4, "settings":Lcom/facebook/internal/FetchedAppSettings;
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 103
    invoke-virtual {v4}, Lcom/facebook/internal/FetchedAppSettings;->getIAPAutomaticLoggingEnabled()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move v5, v6

    .line 178
    :cond_1
    :goto_0
    return v5

    .line 106
    :cond_2
    const-string v6, "INAPP_PURCHASE_DATA"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "purchaseData":Ljava/lang/String;
    const/4 v6, -0x1

    if-ne p1, v6, :cond_1

    .line 109
    new-instance v2, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;

    invoke-direct {v2, p0, v1}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 173
    .local v2, "serviceConnection":Landroid/content/ServiceConnection;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v3, "serviceIntent":Landroid/content/Intent;
    const-string v6, "com.android.vending"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, v3, v2, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method
