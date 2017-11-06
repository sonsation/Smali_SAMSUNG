.class Lcom/samsung/android/app/music/common/settings/SettingsFragment$2$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/settings/SettingsFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/common/settings/SettingsFragment$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/settings/SettingsFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/common/settings/SettingsFragment$2;

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$2$1;->this$1:Lcom/samsung/android/app/music/common/settings/SettingsFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1020
    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$2$1;->this$1:Lcom/samsung/android/app/music/common/settings/SettingsFragment$2;

    iget-wide v2, v2, Lcom/samsung/android/app/music/common/settings/SettingsFragment$2;->val$targetTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 1021
    .local v0, "remainingTime":J
    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$2$1;->this$1:Lcom/samsung/android/app/music/common/settings/SettingsFragment$2;

    iget-object v2, v2, Lcom/samsung/android/app/music/common/settings/SettingsFragment$2;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$2$1;->this$1:Lcom/samsung/android/app/music/common/settings/SettingsFragment$2;

    iget-object v3, v3, Lcom/samsung/android/app/music/common/settings/SettingsFragment$2;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->access$000(Lcom/samsung/android/app/music/common/settings/SettingsFragment;)Landroid/preference/Preference;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$2$1;->this$1:Lcom/samsung/android/app/music/common/settings/SettingsFragment$2;

    iget-object v4, v4, Lcom/samsung/android/app/music/common/settings/SettingsFragment$2;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    .line 1022
    invoke-static {v4, v0, v1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->access$100(Lcom/samsung/android/app/music/common/settings/SettingsFragment;J)Ljava/lang/String;

    move-result-object v4

    .line 1021
    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->access$200(Lcom/samsung/android/app/music/common/settings/SettingsFragment;Landroid/preference/Preference;Ljava/lang/String;)V

    .line 1023
    return-void
.end method
