.class Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager$1;
.super Ljava/lang/Object;
.source "SamsungAnalyticsManager.java"

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->initSamsungAnalytics(Landroid/app/Application;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

.field final synthetic val$application:Landroid/app/Application;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;Landroid/app/Application;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager$1;->val$application:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAgreement()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 78
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager$1;->val$application:Landroid/app/Application;

    const-string v2, "music_player_pref"

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager$1;->val$application:Landroid/app/Application;

    .line 79
    invoke-virtual {v1, v2, v4}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 80
    .local v0, "uiPreference":Landroid/content/SharedPreferences;
    const-string v1, "legal_information_agreed"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method
