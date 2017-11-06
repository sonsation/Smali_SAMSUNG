.class Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController$2;
.super Ljava/lang/Object;
.source "MetaEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;-><init>(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;

.field final synthetic val$this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;

    .prologue
    .line 600
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController$2;->this$1:Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController$2;->val$this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 604
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController$2;->this$1:Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;

    iget-object v0, v0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->finish()V

    .line 605
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController$2;->this$1:Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;

    iget-object v1, v1, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    .line 606
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->getScreenId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "4161"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    return-void
.end method
