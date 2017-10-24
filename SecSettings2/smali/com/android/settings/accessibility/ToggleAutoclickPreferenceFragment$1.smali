.class Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;
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
    .line 224
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 227
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap0(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 228
    const-string/jumbo v1, "accessibility_autoclick_enabled"

    .line 227
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 229
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get0(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/android/settings/SeekBarPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/SeekBarPreference;->setEnabled(Z)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get1()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;Landroid/content/Context;I)V

    .line 226
    return-void
.end method
