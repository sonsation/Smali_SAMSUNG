.class Lcom/samsung/android/settings/accessibility/AccessibilitySettings$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private sendUpdate()V
    .locals 4

    .prologue
    .line 198
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$2;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get6(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$2;->sendUpdate()V

    .line 178
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$2;->sendUpdate()V

    .line 183
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$2;->sendUpdate()V

    .line 188
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$2;->sendUpdate()V

    .line 193
    return-void
.end method