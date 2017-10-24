.class Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$2;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "ClearCoverNotificationWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 1
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 79
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->-wrap0(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;)V

    .line 78
    :cond_0
    return-void
.end method
