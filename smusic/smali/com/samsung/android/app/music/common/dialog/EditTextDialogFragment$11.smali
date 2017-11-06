.class Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$11;
.super Ljava/lang/Object;
.source "EditTextDialogFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->initEditText(Landroid/view/View;)V
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
    .line 423
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$11;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 426
    const/4 v2, 0x6

    if-ne p2, v2, :cond_0

    .line 429
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$11;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    .line 430
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 431
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$11;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$200(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 432
    const/4 v1, 0x1

    .line 434
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return v1
.end method
