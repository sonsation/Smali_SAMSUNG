.class Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$1;
.super Landroid/database/ContentObserver;
.source "HongBaoAssistantPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x0

    .line 58
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hongbao_assistant"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 59
    .local v0, "switchState":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->-get2(Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 60
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->-wrap4(Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;Z)V

    .line 57
    return-void

    .line 58
    .end local v0    # "switchState":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "switchState":Z
    goto :goto_0
.end method
