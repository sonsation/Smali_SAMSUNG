.class Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$16;
.super Ljava/lang/Object;
.source "AccessibilitySettingsMobility.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->showAutoClickExclusivePopup()V
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
    .line 605
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$16;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 609
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$16;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get1(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 611
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 613
    :cond_0
    return v1
.end method
