.class Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$7;
.super Ljava/lang/Object;
.source "ShareAccessibilitySettingsReceive.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->showImportAndRestoreDialog(Ljava/util/HashMap;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$7;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 269
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 270
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 271
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$7;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->finish()V

    .line 273
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
