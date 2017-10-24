.class Lcom/android/server/policy/GlobalActions$17;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 1470
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$17;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 1472
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get48()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1473
    .local v3, "passCode":Ljava/lang/String;
    const/4 v4, -0x1

    .line 1475
    .local v4, "result":I
    :try_start_0
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$17;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->-get51(Lcom/android/server/policy/GlobalActions;)Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1476
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$17;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->-get51(Lcom/android/server/policy/GlobalActions;)Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Lcom/samsung/android/knox/custom/ProKioskManager;->setProKioskState(ZLjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1481
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$17;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 1482
    .local v2, "im":Landroid/view/inputmethod/InputMethodManager;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get48()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1483
    if-nez v4, :cond_1

    .line 1485
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1486
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.category.HOME"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1487
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1489
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$17;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1471
    .end local v1    # "i":Landroid/content/Intent;
    :cond_1
    return-void

    .line 1478
    .end local v2    # "im":Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v0

    .line 1479
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "GlobalActions"

    const-string/jumbo v6, "Failed mProKioskManager setProKioskState"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
