.class Lcom/samsung/android/app/music/common/activity/AboutActivity$7;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/activity/AboutActivity;->updateStateAndViews(IZ)V
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
    .line 251
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity$7;->this$0:Lcom/samsung/android/app/music/common/activity/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 254
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity$7;->this$0:Lcom/samsung/android/app/music/common/activity/AboutActivity;

    .line 255
    invoke-static {v1}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->access$400(Lcom/samsung/android/app/music/common/activity/AboutActivity;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1, v2, v2}, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->getNewInstance(ZZZ)Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;

    move-result-object v0

    .line 257
    .local v0, "dialog":Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity$7;->this$0:Lcom/samsung/android/app/music/common/activity/AboutActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 259
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "404"

    const-string v3, "5071"

    .line 260
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void

    .end local v0    # "dialog":Lcom/samsung/android/app/music/common/dialog/UpdateApplicationDialog;
    :cond_0
    move v1, v2

    .line 255
    goto :goto_0
.end method
