.class Lcom/samsung/android/settings/NewOneHandOperationSettings$4;
.super Ljava/lang/Object;
.source "NewOneHandOperationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/NewOneHandOperationSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/NewOneHandOperationSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/NewOneHandOperationSettings;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$4;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 153
    iget-object v1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$4;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-get2(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-ne p1, v1, :cond_1

    move-object v1, p2

    .line 154
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 155
    .local v0, "bSwitchOn":Z
    const-string/jumbo v1, "OneHandOperationSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Show Hard key switch going to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$4;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 157
    const-string/jumbo v5, "one_handed_op_show_hard_keys"

    if-eqz v0, :cond_2

    move v1, v2

    .line 156
    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    iget-object v1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$4;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$4;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f01d5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0x3e8

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v4, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 160
    .end local v0    # "bSwitchOn":Z
    :cond_1
    return v2

    .restart local v0    # "bSwitchOn":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    move v1, v3

    .line 157
    goto :goto_0
.end method
