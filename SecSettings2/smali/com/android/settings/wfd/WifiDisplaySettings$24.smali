.class Lcom/android/settings/wfd/WifiDisplaySettings$24;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;->createDongleRenameDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p2, "val$imm"    # Landroid/view/inputmethod/InputMethodManager;

    .prologue
    .line 2419
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$24;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iput-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$24;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 2421
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$24;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2422
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$24;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 2424
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$24;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->-set8(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 2420
    return-void
.end method
