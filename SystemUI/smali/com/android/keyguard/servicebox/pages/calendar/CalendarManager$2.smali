.class Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;
.super Ljava/lang/Object;
.source "CalendarManager.java"

# interfaces
.implements Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;


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
    .line 72
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "eventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;>;"
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->-get3(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->-set1(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->-get3(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
    if-eqz p1, :cond_1

    .line 80
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    invoke-static {v0, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->-wrap5(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;Ljava/util/ArrayList;)V

    .line 81
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    invoke-static {v1, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->-wrap2(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;Ljava/util/ArrayList;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->-wrap4(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;)V

    .line 82
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->-get3(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->notifyEventChanged()V

    .line 74
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->-wrap6(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)V

    goto :goto_0
.end method
