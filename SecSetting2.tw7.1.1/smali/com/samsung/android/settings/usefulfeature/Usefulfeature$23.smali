.class Lcom/samsung/android/settings/usefulfeature/Usefulfeature$23;
.super Ljava/lang/Object;
.source "Usefulfeature.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->makeTalkBackDisablePopup(Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

.field final synthetic val$preference:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/preference/Preference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
    .param p2, "val$preference"    # Landroid/preference/Preference;

    .prologue
    .line 2514
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$23;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$23;->val$preference:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2517
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$23;->val$preference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$23;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get27(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2518
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$23;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get27(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$23;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v3

    .line 2519
    const-string/jumbo v4, "intelligent_sleep_mode"

    .line 2518
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 2516
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 2518
    goto :goto_0

    .line 2520
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$23;->val$preference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$23;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2521
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$23;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$23;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v3

    .line 2522
    const-string/jumbo v4, "surface_palm_swipe"

    .line 2521
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method
