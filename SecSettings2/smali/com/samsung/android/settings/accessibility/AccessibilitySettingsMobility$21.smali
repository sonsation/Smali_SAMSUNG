.class Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$21;
.super Ljava/lang/Object;
.source "AccessibilitySettingsMobility.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->showAccessControlTurnOffPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    .prologue
    .line 971
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$21;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 974
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$21;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get5(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 973
    return-void
.end method
