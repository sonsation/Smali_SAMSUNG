.class Lcom/samsung/android/settings/CloudAccountSettings$1;
.super Ljava/lang/Object;
.source "CloudAccountSettings.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/CloudAccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/CloudAccountSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/CloudAccountSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/CloudAccountSettings;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/samsung/android/settings/CloudAccountSettings$1;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopDockConnectionChanged(Z)V
    .locals 0
    .param p1, "connected"    # Z

    .prologue
    .line 88
    return-void
.end method

.method public onDesktopModeChanged(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings$1;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings$1;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 92
    :cond_0
    return-void

    .line 94
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
