.class Lcom/samsung/android/settings/spen/DirectPenInputSettings$10;
.super Ljava/lang/Object;
.source "DirectPenInputSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/spen/DirectPenInputSettings;->showEnableDialog(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$10;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 424
    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$10;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get8(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$10;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get8(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 427
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 428
    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$10;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-set0(Lcom/samsung/android/settings/spen/DirectPenInputSettings;Z)Z

    .line 423
    return-void
.end method
