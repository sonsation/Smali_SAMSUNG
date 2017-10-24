.class Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;
.super Ljava/lang/Object;
.source "VirtualKeyboardFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/VirtualKeyboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 8

    .prologue
    .line 235
    iget-object v6, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {v6}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->-get0(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v5

    .line 236
    .local v5, "stateId":Ljava/lang/String;
    const-string/jumbo v6, "SamsungKeyboard"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 238
    iget-object v6, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {v6}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->-wrap0(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)V

    .line 239
    iget-object v6, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {v6}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v3

    .line 242
    .local v3, "inputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 244
    .local v2, "inputMethodCount":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 245
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 246
    .local v1, "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v6, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {v6}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->-get2(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/inputmethod/InputMethodPreference;

    .line 247
    .local v4, "pref":Lcom/android/settings/inputmethod/InputMethodPreference;
    invoke-virtual {v4}, Lcom/android/settings/inputmethod/InputMethodPreference;->getInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string/jumbo v7, "SamsungKeypad"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 248
    iget-object v6, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-virtual {v6}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/settings/inputmethod/InputMethodPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 249
    iget-object v6, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {v6}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->-get0(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 250
    iget-object v6, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {v6}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->-get0(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 252
    :cond_0
    iget-object v6, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {v6}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->-get0(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 253
    return-void

    .line 242
    .end local v0    # "i":I
    .end local v1    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .end local v2    # "inputMethodCount":I
    .end local v4    # "pref":Lcom/android/settings/inputmethod/InputMethodPreference;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .restart local v2    # "inputMethodCount":I
    goto :goto_0

    .line 244
    .restart local v0    # "i":I
    .restart local v1    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v4    # "pref":Lcom/android/settings/inputmethod/InputMethodPreference;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 256
    .end local v1    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "pref":Lcom/android/settings/inputmethod/InputMethodPreference;
    :cond_3
    iget-object v6, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {v6}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->-get0(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 234
    .end local v0    # "i":I
    .end local v2    # "inputMethodCount":I
    .end local v3    # "inputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_4
    return-void
.end method
