.class Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$1;
.super Landroid/os/Handler;
.source "BaseServiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 196
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->DormancyCount:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    .line 197
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->hasFeature(Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.samsung.android.app.music.action.ACTION_REQ_RESET_DORMANCY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 202
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method
