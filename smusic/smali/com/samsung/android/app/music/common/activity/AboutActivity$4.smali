.class Lcom/samsung/android/app/music/common/activity/AboutActivity$4;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/activity/AboutActivity;->initLinkTexts()V
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
    .line 148
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity$4;->this$0:Lcom/samsung/android/app/music/common/activity/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity$4;->this$0:Lcom/samsung/android/app/music/common/activity/AboutActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->launchLinkPrivacyPolicy(Landroid/content/Context;)V

    .line 152
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "404"

    const-string v2, "5242"

    .line 153
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method