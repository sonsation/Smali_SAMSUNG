.class Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;
.super Ljava/lang/Object;
.source "PocBalanceProgressActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->finishReadPoc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 366
    iget-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-get4(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 367
    const-string/jumbo v4, "PocBalanceProgressActivity"

    const-string/jumbo v5, "[stpoc] POC READ Success"

    invoke-static {v4, v5}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 371
    .local v2, "pm":Landroid/os/PowerManager;
    const-string/jumbo v4, "PocBalanceProgressActivity"

    const-string/jumbo v5, "[stpoc] D2 POC completed"

    invoke-static {v4, v5}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 372
    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPocUserIndexTemp(Landroid/content/Context;)I

    move-result v3

    .line 374
    .local v3, "pocSeekBarIndex":I
    iget-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-wrap3(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    .line 375
    iget-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    iget-object v5, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-get5(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)I

    move-result v5

    invoke-static {v4, v5, v3}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-wrap4(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;II)V

    .line 376
    iget-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-wrap1(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 379
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string/jumbo v5, "sync"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 384
    :goto_0
    :try_start_2
    const-string/jumbo v4, "recovery"

    invoke-virtual {v2, v4}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 365
    .end local v2    # "pm":Landroid/os/PowerManager;
    .end local v3    # "pocSeekBarIndex":I
    :cond_0
    :goto_1
    return-void

    .line 380
    .restart local v2    # "pm":Landroid/os/PowerManager;
    .restart local v3    # "pocSeekBarIndex":I
    :catch_0
    move-exception v1

    .line 381
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 386
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "pm":Landroid/os/PowerManager;
    .end local v3    # "pocSeekBarIndex":I
    :catch_1
    move-exception v0

    .line 387
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 389
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-get4(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 390
    const-string/jumbo v4, "PocBalanceProgressActivity"

    const-string/jumbo v5, "[stpoc] POC READ Fail"

    invoke-static {v4, v5}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-wrap0(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    .line 392
    iget-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->finish()V

    goto :goto_1
.end method
