.class Lcom/android/launcher3/Launcher$15;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 2788
    iput-object p1, p0, Lcom/android/launcher3/Launcher$15;->this$0:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private refreshCalendar()V
    .locals 4

    .prologue
    .line 2815
    invoke-static {}, Lcom/android/launcher3/common/view/LiveIconManager;->getCalendarPackages()Ljava/util/List;

    move-result-object v0

    .line 2816
    .local v0, "calendarPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2817
    .local v1, "pkgName":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/launcher3/common/view/LiveIconManager;->clearLiveIconCache(Ljava/lang/String;)V

    goto :goto_0

    .line 2819
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/Launcher$15;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/common/view/LiveIconManager;->setCalendarAlarm(Landroid/content/Context;)V

    .line 2820
    return-void
.end method

.method private refreshClock()V
    .locals 2

    .prologue
    .line 2823
    invoke-static {}, Lcom/android/launcher3/Utilities;->getClockPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2824
    .local v0, "clockPackageName":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/launcher3/common/view/LiveIconManager;->clearLiveIconCache(Ljava/lang/String;)V

    .line 2825
    iget-object v1, p0, Lcom/android/launcher3/Launcher$15;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/common/view/LiveIconManager;->setClockAlarm(Landroid/content/Context;)V

    .line 2826
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2791
    if-nez p2, :cond_1

    .line 2812
    :cond_0
    :goto_0
    return-void

    .line 2792
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2793
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2795
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 2811
    :goto_2
    iget-object v1, p0, Lcom/android/launcher3/Launcher$15;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->access$400(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->onRefreshLiveIcon()V

    goto :goto_0

    .line 2797
    :sswitch_0
    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "com.samsung.action.MIDNIGHT_LIVEICONUPDATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "com.samsung.action.EVERY_MINUTE_CLOCK_UPDATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    .line 2801
    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher3/Launcher$15;->refreshCalendar()V

    .line 2802
    invoke-direct {p0}, Lcom/android/launcher3/Launcher$15;->refreshClock()V

    goto :goto_2

    .line 2805
    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher3/Launcher$15;->refreshCalendar()V

    goto :goto_2

    .line 2808
    :pswitch_2
    invoke-direct {p0}, Lcom/android/launcher3/Launcher$15;->refreshClock()V

    goto :goto_2

    .line 2797
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5e30d136 -> :sswitch_4
        0x7313f86 -> :sswitch_3
        0x1df32313 -> :sswitch_2
        0x1e1f7f95 -> :sswitch_1
        0x3e117848 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
