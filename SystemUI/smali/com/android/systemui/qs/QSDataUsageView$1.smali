.class Lcom/android/systemui/qs/QSDataUsageView$1;
.super Landroid/content/BroadcastReceiver;
.source "QSDataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDataUsageView;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDataUsageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSDataUsageView;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/systemui/qs/QSDataUsageView$1;->this$0:Lcom/android/systemui/qs/QSDataUsageView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    const-string/jumbo v0, "STMC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/android/systemui/qs/QSDataUsageView$1;->this$0:Lcom/android/systemui/qs/QSDataUsageView;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDataUsageView;->-wrap0(Lcom/android/systemui/qs/QSDataUsageView;)V

    .line 58
    return-void
.end method
