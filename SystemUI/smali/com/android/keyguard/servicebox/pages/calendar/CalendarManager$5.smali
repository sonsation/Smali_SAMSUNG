.class Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$5;
.super Landroid/content/BroadcastReceiver;
.source "CalendarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$5;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 111
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 112
    .local v0, "newDayOfMonth":I
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$5;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->-get2(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$5;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    invoke-static {v1, v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->-set0(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;I)I

    .line 114
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$5;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->-wrap3(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)V

    .line 110
    :cond_0
    return-void
.end method
