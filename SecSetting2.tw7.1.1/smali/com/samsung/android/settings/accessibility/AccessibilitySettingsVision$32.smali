.class Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$32;
.super Ljava/lang/Object;
.source "AccessibilitySettingsVision.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 1633
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$32;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x1

    .line 1635
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$32;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 1636
    const-string/jumbo v1, "checked"

    .line 1635
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1638
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$32;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1637
    invoke-static {v0, v2}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->turnOnOffMagnificationGesture(Landroid/content/Context;Z)V

    .line 1639
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$32;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 1640
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$32;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-wrap0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 1641
    const-string/jumbo v1, "accessibility_display_magnification_enabled"

    .line 1640
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1634
    return-void
.end method
