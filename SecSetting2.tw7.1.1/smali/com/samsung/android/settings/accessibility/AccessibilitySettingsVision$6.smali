.class Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$6;
.super Landroid/database/ContentObserver;
.source "AccessibilitySettingsVision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$6;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x0

    .line 293
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$6;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-wrap0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;

    move-result-object v1

    .line 294
    const-string/jumbo v2, "accessibility_display_magnification_enabled"

    .line 293
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 295
    .local v0, "magnificationEnabled":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$6;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 292
    return-void

    .line 293
    .end local v0    # "magnificationEnabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "magnificationEnabled":Z
    goto :goto_0
.end method
