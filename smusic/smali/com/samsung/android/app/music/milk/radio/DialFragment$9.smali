.class Lcom/samsung/android/app/music/milk/radio/DialFragment$9;
.super Ljava/lang/Object;
.source "DialFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/DialFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/DialFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/DialFragment;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$9;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 582
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.common.service.error_report"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 584
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.common.service.errorNo"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 587
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$9;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$000(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 588
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$9;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->access$000(Lcom/samsung/android/app/music/milk/radio/DialFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/compat/BroadcastCompat;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 591
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->pause()V

    .line 593
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$9;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->hideBufferingProgress()V

    .line 594
    return-void
.end method
