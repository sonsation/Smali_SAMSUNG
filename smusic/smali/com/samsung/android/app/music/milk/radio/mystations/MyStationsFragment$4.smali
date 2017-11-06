.class Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$4;
.super Landroid/content/BroadcastReceiver;
.source "MyStationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$4;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 401
    if-eqz p2, :cond_0

    .line 402
    const-string v0, "com.samsung.my.tab.update_mystation_list"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    const-string v0, "MyStationsFragment"

    const-string/jumbo v1, "onReceive >>> update UI"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$4;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->restartListLoader()V

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    const-string v0, "com.samsung.my.tab.update_mystation_list_from_server"

    .line 406
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    const-string v0, "MyStationsFragment"

    const-string/jumbo v1, "onReceive >>> update Station List form server"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$4;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->updatePersonalStationList()I

    goto :goto_0
.end method
