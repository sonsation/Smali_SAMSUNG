.class Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$1;
.super Landroid/database/ContentObserver;
.source "ToggleMagnifierPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 124
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "finger_magnifier"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 125
    .local v0, "newstate":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-wrap3(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V

    .line 126
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get3(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get3(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get3(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 122
    :cond_0
    return-void

    .line 124
    .end local v0    # "newstate":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "newstate":Z
    goto :goto_0
.end method
