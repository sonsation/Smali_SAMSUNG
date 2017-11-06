.class Lcom/samsung/android/app/music/milk/event/EventManager$1;
.super Ljava/lang/Object;
.source "EventManager.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/event/EventPopupDialog$EventPopupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/event/EventManager;->showEventPopup(Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/event/EventManager;

.field final synthetic val$popup:Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/event/EventManager;Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/event/EventManager;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/EventManager$1;->this$0:Lcom/samsung/android/app/music/milk/event/EventManager;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/event/EventManager$1;->val$popup:Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPopupDismissed(Z)V
    .locals 4
    .param p1, "isDoNotShow"    # Z

    .prologue
    .line 296
    const-string v0, "EventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventPopupDialog dismissed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/EventManager$1;->this$0:Lcom/samsung/android/app/music/milk/event/EventManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/event/EventManager;->access$000(Lcom/samsung/android/app/music/milk/event/EventManager;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/EventManager$1;->val$popup:Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->setDoNotShowTime(J)V

    .line 299
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/EventManager$1;->this$0:Lcom/samsung/android/app/music/milk/event/EventManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/event/EventManager;->access$000(Lcom/samsung/android/app/music/milk/event/EventManager;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/EventManager$1;->val$popup:Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;

    .line 300
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->updateDoNotShowTime(Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;)V

    .line 302
    :cond_0
    return-void
.end method
