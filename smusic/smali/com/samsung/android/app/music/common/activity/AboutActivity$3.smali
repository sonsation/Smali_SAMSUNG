.class Lcom/samsung/android/app/music/common/activity/AboutActivity$3;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/activity/AboutActivity;->initAppInfoText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/AboutActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/AboutActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/AboutActivity;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity$3;->this$0:Lcom/samsung/android/app/music/common/activity/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 129
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity$3;->this$0:Lcom/samsung/android/app/music/common/activity/AboutActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "launcherapps"

    .line 130
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 131
    .local v0, "launcherApps":Landroid/content/pm/LauncherApps;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity$3;->this$0:Lcom/samsung/android/app/music/common/activity/AboutActivity;

    .line 132
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/samsung/android/app/music/common/activity/AboutActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 131
    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/pm/LauncherApps;->startAppDetailsActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    .line 135
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "404"

    const-string v3, "5241"

    .line 136
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method
