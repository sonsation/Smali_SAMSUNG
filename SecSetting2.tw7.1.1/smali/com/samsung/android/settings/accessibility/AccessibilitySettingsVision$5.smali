.class Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$5;
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
    .line 280
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$5;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 281
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 284
    const-string/jumbo v1, "AccessibilitySettings_Vision"

    const-string/jumbo v2, "mRapidKeyInputObserver onChange() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$5;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get15(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$5;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-wrap0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 286
    const-string/jumbo v3, "rapid_key_input_menu_checked"

    .line 285
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 283
    return-void
.end method
