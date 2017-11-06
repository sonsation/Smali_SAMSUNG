.class Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "MilkBaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$1;->this$0:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    if-nez p2, :cond_1

    .line 63
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$1;->this$0:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onReceive : intent null"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.samsung.android.app.music.milkstore.action.dismiss_dialog"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    const-string v2, "extra_class_simple_name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$1;->this$0:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive : action dismiss. name - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    if-eqz v1, :cond_0

    .line 71
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$1;->this$0:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$1;->this$0:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onReceive : same name"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$1;->this$0:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->dismissAllowingStateLoss()V

    goto :goto_0
.end method
