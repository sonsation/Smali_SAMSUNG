.class Lcom/android/settings/notification/ZenModeVisualInterruptionSettings$3;
.super Ljava/lang/Object;
.source "ZenModeVisualInterruptionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings$3;->this$0:Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 80
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings$3;->this$0:Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->-get0(Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 81
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 82
    .local v0, "val":Z
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings$3;->this$0:Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;

    iget-object v1, v1, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mContext:Landroid/content/Context;

    const/16 v3, 0x107

    invoke-static {v1, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 83
    sget-boolean v1, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPrefChange suppressWhenScreenOff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings$3;->this$0:Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings$3;->this$0:Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;

    invoke-static {v3, v0, v2}, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->-wrap0(Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;ZI)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->-wrap1(Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;I)V

    .line 86
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings$3;->this$0:Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;

    iget-object v3, v1, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings$3;->this$0:Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;

    invoke-virtual {v1}, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 87
    const v4, 0x7f0f016f

    .line 86
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 87
    if-eqz v0, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 86
    invoke-static {v3, v4, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 89
    return v2

    .line 87
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
