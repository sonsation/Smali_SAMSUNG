.class Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$6;
.super Landroid/database/ContentObserver;
.source "AccessibilitySettingsMobility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$6;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 222
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 225
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$6;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-wrap6(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    .line 224
    return-void
.end method
