.class Lcom/android/settings/TrustedCredentialsSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TrustedCredentialsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/TrustedCredentialsSettings;

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$2;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$2;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->-get2(Lcom/android/settings/TrustedCredentialsSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$2;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->-wrap2(Lcom/android/settings/TrustedCredentialsSettings;)V

    .line 1056
    :goto_0
    return-void

    .line 1065
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$2;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings;->-set1(Lcom/android/settings/TrustedCredentialsSettings;Z)Z

    goto :goto_0
.end method
