.class Lcom/android/server/InputMethodManagerService$PSSKeyboardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PSSKeyboardReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 1006
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$PSSKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1009
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1010
    .local v1, "intentAction":Ljava/lang/String;
    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "InputMethodService onReceive() intentAction"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    const-string/jumbo v2, "com.sec.android.sidesync.action.PSS_KEYBOARD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1012
    const-string/jumbo v2, "device_state"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1013
    .local v0, "extra":I
    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive() getIntExtra "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    if-ne v0, v6, :cond_3

    .line 1015
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->-get0()I

    move-result v2

    or-int/lit8 v2, v2, 0x10

    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->-set0(I)I

    .line 1017
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$PSSKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->-wrap3(Lcom/android/server/InputMethodManagerService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1018
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$PSSKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->setDefaultIMEforJapaneseKeyboard()V

    .line 1024
    :goto_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$PSSKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->hideKeyboardDialog()V

    .line 1025
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$PSSKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2, v5, v7}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 1026
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->-get6()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1027
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->-get5()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1028
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->-get5()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$PSSKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1030
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$PSSKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/android/server/InputMethodManagerService;->showKeyboardNotiDailog(I)V

    .line 1052
    .end local v0    # "extra":I
    :cond_0
    :goto_1
    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "InputMethodService onReceive() keyboardState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/server/InputMethodManagerService;->-get0()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    return-void

    .line 1019
    .restart local v0    # "extra":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$PSSKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->-wrap1(Lcom/android/server/InputMethodManagerService;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$PSSKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    const-string/jumbo v3, "com.samsung.inputmethod/.SamsungIME"

    invoke-static {v2, v3}, Lcom/android/server/InputMethodManagerService;->-wrap2(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1020
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$PSSKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->setDefaultIMEforChineseKeyboard()V

    goto :goto_0

    .line 1022
    :cond_2
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$PSSKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->setDefaultIMEForKeyboard()V

    goto :goto_0

    .line 1043
    :cond_3
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->-get0()I

    move-result v2

    and-int/lit8 v2, v2, -0x11

    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->-set0(I)I

    .line 1045
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->-get19()I

    move-result v2

    if-ne v2, v6, :cond_4

    .line 1046
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$PSSKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "screen_brightness_mode"

    invoke-static {}, Lcom/android/server/InputMethodManagerService;->-get19()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1048
    :cond_4
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$PSSKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->hideKeyboardDialog()V

    .line 1049
    invoke-static {v5}, Lcom/android/server/InputMethodManagerService;->-set7(I)I

    goto :goto_1
.end method
