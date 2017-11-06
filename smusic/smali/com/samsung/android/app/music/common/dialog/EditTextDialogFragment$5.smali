.class Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$5;
.super Ljava/lang/Object;
.source "EditTextDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$5;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 179
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$5;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 180
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 181
    const-string v2, "input_method"

    .line 182
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 183
    .local v1, "keyboard":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$5;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$200(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 187
    .end local v1    # "keyboard":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "activity is null"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
