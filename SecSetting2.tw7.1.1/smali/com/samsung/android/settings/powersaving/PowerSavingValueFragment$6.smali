.class Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;
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
    .line 412
    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p2

    .line 416
    check-cast v0, Ljava/lang/Boolean;

    .line 417
    .local v0, "value":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get16(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get16(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get16(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 419
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get12(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 420
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get9(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 421
    const-string/jumbo v5, "low_power_back_data_off"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_2

    move v1, v2

    .line 420
    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 428
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->updateEstimatedTimeonHeader()V

    .line 429
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get9(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get12(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isChangedValue(Landroid/content/Context;I)Z

    move-result v4

    invoke-static {v1, v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-wrap1(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;Z)V

    .line 432
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get9(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get18(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get5(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v1, v4, v5, v2}, Lcom/android/settings/Utils;->sendSmartManagerEventWithValueLog(Landroid/content/Context;III)V

    .line 434
    return v3

    :cond_2
    move v1, v3

    .line 421
    goto :goto_0

    .line 424
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get9(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 425
    const-string/jumbo v5, "ultra_power_mode_back_data_off"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_4

    move v1, v2

    .line 424
    :goto_2
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    move v1, v3

    .line 425
    goto :goto_2
.end method
