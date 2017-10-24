.class Lcom/android/server/InputMethodManagerService$KnoxDesktopModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KnoxDesktopModeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 1207
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private restorePreviousUsedInputMethod()V
    .locals 5

    .prologue
    .line 1211
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "com.sec.android.inputmethod.previous_inputmethod_dex"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1213
    .local v1, "prevInputMethodForKnoxDesktopMode":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1214
    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v3, "Failed to return the previous IME becuase the stored info is null"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    return-void

    .line 1218
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v3, v4}, Lcom/android/server/InputMethodManagerService;->-wrap5(Lcom/android/server/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 1219
    .local v0, "currentIME":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1209
    :cond_1
    :goto_0
    return-void

    .line 1221
    :cond_2
    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v3, "Restore the Previous Used IME because KnoxDesktop Disconnected"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    .line 1223
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v3

    .line 1222
    invoke-virtual {v2, v1, v3}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1230
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1231
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1232
    .local v0, "intentAction":Ljava/lang/String;
    sget-object v2, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_KNOX_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1233
    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v3, "KnoxDesktop Connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1236
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1235
    invoke-static {v2, v3, v4}, Lcom/android/server/InputMethodManagerService;->-wrap5(Lcom/android/server/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 1237
    .local v1, "prevInputMethodForKnoxDesktopMode":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "com.sec.android.inputmethod.previous_inputmethod_dex"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1238
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$KnoxDesktopModeReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->-wrap9(Lcom/android/server/InputMethodManagerService;)V

    .line 1229
    .end local v0    # "intentAction":Ljava/lang/String;
    .end local v1    # "prevInputMethodForKnoxDesktopMode":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1240
    .restart local v0    # "intentAction":Ljava/lang/String;
    :cond_1
    sget-object v2, Landroid/app/UiModeManager;->SEM_ACTION_EXIT_KNOX_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1242
    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v3, "KnoxDesktop Disconnected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$KnoxDesktopModeReceiver;->restorePreviousUsedInputMethod()V

    goto :goto_0
.end method
