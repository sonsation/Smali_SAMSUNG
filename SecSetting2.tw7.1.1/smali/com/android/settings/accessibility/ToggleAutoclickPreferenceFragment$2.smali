.class Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$2;
.super Ljava/lang/Object;
.source "ToggleAutoclickPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->showAutoClickExclusivePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 263
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-virtual {v2}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get3()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap3(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;Landroid/content/Context;I)V

    .line 265
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 266
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$2$1;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$2$1;-><init>(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$2;)V

    .line 272
    const-wide/16 v2, 0x1f4

    .line 266
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 262
    return-void
.end method
