.class Lcom/android/settings/UCSCryptKeeperTask$5;
.super Ljava/lang/Object;
.source "UCSCryptKeeperTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/UCSCryptKeeperTask;->fakeUnlockAttempt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UCSCryptKeeperTask;


# direct methods
.method constructor <init>(Lcom/android/settings/UCSCryptKeeperTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/UCSCryptKeeperTask;

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/android/settings/UCSCryptKeeperTask$5;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1034
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$5;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->-get0(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1035
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$5;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->-get7(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1032
    return-void
.end method
