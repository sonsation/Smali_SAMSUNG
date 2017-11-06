.class Lcom/samsung/android/app/music/milk/MilkDialogReceiver$4;
.super Landroid/content/BroadcastReceiver;
.source "MilkDialogReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/MilkDialogReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$4;->this$0:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 204
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 205
    .local v2, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->access$200()Landroid/content/UriMatcher;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 206
    .local v0, "action":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 207
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 209
    :cond_0
    sget-object v3, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->isActivityOnTop(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 221
    :goto_0
    return-void

    .line 213
    :cond_1
    new-instance v1, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$4;->this$0:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    .line 214
    invoke-static {}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->values()[Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    const-string v6, "extra_bundle_key"

    .line 215
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;-><init>(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 216
    .local v1, "message":Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$4;->this$0:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->access$300(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$4;->this$0:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->access$100(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v3

    if-nez v3, :cond_3

    .line 217
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$4;->this$0:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->access$400(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$4;->this$0:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-static {v3, v1}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->access$500(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;)V

    goto :goto_0
.end method
