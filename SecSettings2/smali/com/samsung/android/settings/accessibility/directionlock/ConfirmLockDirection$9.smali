.class Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$9;
.super Ljava/lang/Object;
.source "ConfirmLockDirection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->attachListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    .prologue
    .line 744
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$9;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 747
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$9;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 748
    const-class v3, Lcom/android/settings/ConfirmLockPassword;

    .line 747
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 750
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings.ConfirmCredentials.header"

    .line 751
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$9;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 752
    const v3, 0x7f0b0902

    .line 751
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 749
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    const-string/jumbo v1, "from_confirm_pattern_lock"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 754
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 755
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$9;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->startActivity(Landroid/content/Intent;)V

    .line 756
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$9;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->finish()V

    .line 746
    return-void
.end method
