.class public Lcom/samsung/android/sdk/ppmt/PpmtPushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PpmtPushReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 13
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 14
    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    const/4 v1, 0x2

    invoke-static {p1, p2, v1}, Lcom/samsung/android/sdk/ppmt/Ppmt;->messageReceived(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 23
    :cond_0
    :goto_0
    return-void

    .line 17
    :cond_1
    const-string v1, "msg"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "message":Ljava/lang/String;
    const-string v1, "ppmt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lcom/samsung/android/sdk/ppmt/Ppmt;->messageReceived(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_0
.end method
