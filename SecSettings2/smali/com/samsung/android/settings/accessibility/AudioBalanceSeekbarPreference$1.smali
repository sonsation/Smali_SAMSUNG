.class Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference$1;
.super Landroid/content/BroadcastReceiver;
.source "AudioBalanceSeekbarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference$1;->this$0:Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    if-nez p2, :cond_0

    .line 76
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference$1;->this$0:Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->setDualColorSeekbar()V

    .line 74
    return-void
.end method
