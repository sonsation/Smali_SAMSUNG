.class Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$2;
.super Lcom/android/internal/content/PackageMonitor;
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
.method constructor <init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private sendUpdate()V
    .locals 4

    .prologue
    .line 189
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-get7(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 188
    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$2;->sendUpdate()V

    .line 169
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$2;->sendUpdate()V

    .line 174
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$2;->sendUpdate()V

    .line 179
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$2;->sendUpdate()V

    .line 184
    return-void
.end method
