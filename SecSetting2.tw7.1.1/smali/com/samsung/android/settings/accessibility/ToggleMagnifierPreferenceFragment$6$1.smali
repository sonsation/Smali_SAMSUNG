.class Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$6$1;
.super Ljava/lang/Object;
.source "ToggleMagnifierPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$6;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$6;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$6;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$6$1;->this$1:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$6$1;->this$1:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$6;

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$6;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 492
    const-string/jumbo v1, "finger_magnifier"

    const/4 v2, 0x1

    .line 490
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 493
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$6$1;->this$1:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$6;

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$6;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$6$1;->this$1:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$6;

    iget-object v1, v1, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$6;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f032a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 489
    return-void
.end method
