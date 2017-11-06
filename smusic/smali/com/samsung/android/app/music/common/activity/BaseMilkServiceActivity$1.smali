.class Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseMilkServiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "action":Ljava/lang/String;
    const-string v1, "BaseMilkServiceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive() action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v1, "com.sec.android.app.music.SA_ACCSSTOKEN_EXCEPTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;

    const/16 v2, 0x2711

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/MilkPackageLauncher;->getSAAccessToken(Landroid/app/Activity;I)V

    .line 83
    :cond_0
    return-void
.end method
