.class Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BTKeyboardReceiver"
.end annotation


# instance fields
.field private mIsBTConnect:Z

.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 6111
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->mIsBTConnect:Z

    .line 6111
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 6116
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 6117
    .local v2, "intentAction":Ljava/lang/String;
    const-string/jumbo v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "InputMethodService onReceive() intentAction"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6118
    const-string/jumbo v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 6119
    const-string/jumbo v6, "android.bluetooth.adapter.extra.STATE"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 6121
    .local v5, "state":I
    const-string/jumbo v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[BT Setting State] State ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6122
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->-get0()I

    move-result v6

    and-int/lit8 v0, v6, 0x2

    .line 6124
    .local v0, "checkBTKeyboard":I
    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    .line 6125
    const-string/jumbo v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[BT Setting on -> off] mBTKeyboardCount ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/server/InputMethodManagerService;->-get4()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", KEYBOARD_BT("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6126
    const/4 v6, 0x2

    if-ne v0, v6, :cond_1

    .line 6127
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->-get0()I

    move-result v6

    and-int/lit8 v6, v6, -0x3

    invoke-static {v6}, Lcom/android/server/InputMethodManagerService;->-set0(I)I

    .line 6128
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->-get19()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 6129
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v6, v6, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "screen_brightness_mode"

    invoke-static {}, Lcom/android/server/InputMethodManagerService;->-get19()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6131
    :cond_0
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v6}, Lcom/android/server/InputMethodManagerService;->hideKeyboardDialog()V

    .line 6132
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/server/InputMethodManagerService;->-set7(I)I

    .line 6134
    :cond_1
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/server/InputMethodManagerService;->-set2(I)I

    .line 6135
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->mIsBTConnect:Z

    .line 6115
    .end local v0    # "checkBTKeyboard":I
    .end local v5    # "state":I
    :cond_2
    :goto_0
    return-void

    .line 6136
    .restart local v0    # "checkBTKeyboard":I
    .restart local v5    # "state":I
    :cond_3
    const/16 v6, 0xc

    if-ne v5, v6, :cond_2

    .line 6137
    const-string/jumbo v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[BT Setting off -> on] mBTKeyboardCount ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/server/InputMethodManagerService;->-get4()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", KEYBOARD_BT("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6138
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->mIsBTConnect:Z

    goto :goto_0

    .line 6140
    .end local v0    # "checkBTKeyboard":I
    .end local v5    # "state":I
    :cond_4
    const-string/jumbo v6, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6142
    const-string/jumbo v6, "android.bluetooth.profile.extra.STATE"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 6143
    .local v1, "extra":I
    const-string/jumbo v6, "android.bluetooth.profile.extra.isKeyboard"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 6144
    .local v3, "isKeyboard":Z
    const-string/jumbo v6, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 6146
    .local v4, "prevState":I
    const-string/jumbo v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onReceive() isKeyboard = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6147
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->-get0()I

    move-result v6

    and-int/lit8 v0, v6, 0x2

    .line 6150
    .restart local v0    # "checkBTKeyboard":I
    if-eqz v3, :cond_2

    .line 6151
    const-string/jumbo v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onReceive() state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", prevState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6152
    const/4 v6, 0x2

    if-ne v1, v6, :cond_a

    .line 6153
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->mIsBTConnect:Z

    .line 6154
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->-get4()I

    move-result v6

    if-gez v6, :cond_5

    .line 6155
    const-string/jumbo v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[STATE_CONNECTED] change mBTKeyboardCount "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/server/InputMethodManagerService;->-get4()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "--> 0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6156
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/server/InputMethodManagerService;->-set2(I)I

    .line 6158
    :cond_5
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->-get4()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Lcom/android/server/InputMethodManagerService;->-set2(I)I

    .line 6159
    const-string/jumbo v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[STATE_CONNECTED] mBTKeyboardCount[+] -->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/server/InputMethodManagerService;->-get4()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6160
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->-get0()I

    move-result v6

    or-int/lit8 v6, v6, 0x2

    invoke-static {v6}, Lcom/android/server/InputMethodManagerService;->-set0(I)I

    .line 6161
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v6}, Lcom/android/server/InputMethodManagerService;->-wrap3(Lcom/android/server/InputMethodManagerService;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 6162
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v6}, Lcom/android/server/InputMethodManagerService;->setDefaultIMEforJapaneseKeyboard()V

    .line 6168
    :goto_1
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v6}, Lcom/android/server/InputMethodManagerService;->hideKeyboardDialog()V

    .line 6169
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 6170
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_Sip_SupportKcmForHwKeyboard"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_9

    .line 6171
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->-get5()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 6172
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->-get5()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v7, v7, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 6173
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/server/InputMethodManagerService;->showKeyboardNotiDailog(I)V

    goto/16 :goto_0

    .line 6163
    :cond_6
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v6}, Lcom/android/server/InputMethodManagerService;->-wrap1(Lcom/android/server/InputMethodManagerService;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    const-string/jumbo v7, "com.samsung.inputmethod/.SamsungIME"

    invoke-static {v6, v7}, Lcom/android/server/InputMethodManagerService;->-wrap2(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 6164
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v6}, Lcom/android/server/InputMethodManagerService;->setDefaultIMEforChineseKeyboard()V

    goto :goto_1

    .line 6166
    :cond_7
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v6}, Lcom/android/server/InputMethodManagerService;->setDefaultIMEForKeyboard()V

    goto :goto_1

    .line 6177
    :cond_8
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v6}, Lcom/android/server/InputMethodManagerService;->showtoastkeyboardconnected()V

    goto/16 :goto_0

    .line 6182
    :cond_9
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v6}, Lcom/android/server/InputMethodManagerService;->showtoastkeyboardconnected()V

    goto/16 :goto_0

    .line 6185
    :cond_a
    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    .line 6186
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->-get4()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_b

    .line 6187
    const-string/jumbo v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[prevState : STATE_CONNECTED] change mBTKeyboardCount "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/server/InputMethodManagerService;->-get4()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "--> 1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6188
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/android/server/InputMethodManagerService;->-set2(I)I

    .line 6190
    :cond_b
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->-get4()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Lcom/android/server/InputMethodManagerService;->-set2(I)I

    move-result v6

    if-eqz v6, :cond_c

    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->mIsBTConnect:Z

    if-nez v6, :cond_e

    invoke-static {}, Lcom/android/server/InputMethodManagerService;->-get0()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_e

    .line 6191
    :cond_c
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->-get0()I

    move-result v6

    and-int/lit8 v6, v6, -0x3

    invoke-static {v6}, Lcom/android/server/InputMethodManagerService;->-set0(I)I

    .line 6192
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->-get19()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_d

    .line 6193
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v6, v6, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "screen_brightness_mode"

    invoke-static {}, Lcom/android/server/InputMethodManagerService;->-get19()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6195
    :cond_d
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v6}, Lcom/android/server/InputMethodManagerService;->hideKeyboardDialog()V

    .line 6196
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/server/InputMethodManagerService;->-set7(I)I

    .line 6198
    :cond_e
    const-string/jumbo v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[prevState : STATE_CONNECTED] mBTKeyboardCount[-] -->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/server/InputMethodManagerService;->-get4()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "keyboardState("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/server/InputMethodManagerService;->-get0()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
