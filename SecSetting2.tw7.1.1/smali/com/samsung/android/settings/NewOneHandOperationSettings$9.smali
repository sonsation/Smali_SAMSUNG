.class Lcom/samsung/android/settings/NewOneHandOperationSettings$9;
.super Ljava/lang/Object;
.source "NewOneHandOperationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/NewOneHandOperationSettings;->reduceSizeDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/NewOneHandOperationSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/NewOneHandOperationSettings;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$9;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 460
    iget-object v2, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$9;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "any_screen_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 461
    .local v0, "onehandCheck":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$9;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-get3(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 462
    iget-object v1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$9;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-get3(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 464
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$9;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    .line 465
    iget-object v1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$9;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-get0(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    .line 467
    iget-object v1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$9;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    iget-boolean v1, v1, Lcom/samsung/android/settings/NewOneHandOperationSettings;->showHardkey:Z

    if-nez v1, :cond_2

    .line 468
    iget-object v1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$9;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-get2(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 459
    :cond_2
    return-void
.end method
