.class Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;
.super Ljava/lang/Object;
.source "PowerSavingValueFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->initPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    move-object v1, p2

    .line 405
    check-cast v1, Ljava/lang/Boolean;

    .line 406
    .local v1, "value":Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get4(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get7(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get2(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTIme(Landroid/content/Context;II)I

    move-result v0

    .line 407
    .local v0, "mPrevSaveTime":I
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get1(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 408
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get4(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "psm_always_on_display_mode"

    .line 409
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get7(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v6

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    .line 408
    :goto_0
    invoke-static {v4, v5, v8, v6, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 411
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->updateEstimatedTimeonHeader()V

    .line 412
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get4(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get7(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isChangedValue(Landroid/content/Context;I)Z

    move-result v4

    invoke-static {v2, v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-wrap1(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;Z)V

    .line 413
    const-string/jumbo v2, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "### AOD DB : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get4(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "psm_always_on_display_mode"

    iget-object v7, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v7}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get7(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v7

    invoke-static {v5, v6, v8, v7}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return v3

    :cond_0
    move v2, v3

    .line 409
    goto :goto_0
.end method
