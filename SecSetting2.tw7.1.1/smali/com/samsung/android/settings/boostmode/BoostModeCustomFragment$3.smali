.class Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$3;
.super Ljava/lang/Object;
.source "BoostModeCustomFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->initPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$3;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    move-object v0, p2

    .line 312
    check-cast v0, Ljava/lang/Boolean;

    .line 313
    .local v0, "value":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$3;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get20(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$3;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get20(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$3;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get20(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 315
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$3;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "pbm_video_enhancer"

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$3;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get2(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v6, v1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$3;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$3;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$3;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get2(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isCustomModeChangedValue(Landroid/content/Context;I)Z

    move-result v4

    invoke-static {v1, v4}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-wrap2(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;Z)V

    .line 320
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$3;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$3;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get14(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$3;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get19(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    move v3, v2

    :cond_1
    invoke-static {v1, v4, v5, v3}, Lcom/android/settings/Utils;->sendSmartManagerEventWithValueLog(Landroid/content/Context;III)V

    .line 322
    return v2

    :cond_2
    move v1, v3

    .line 315
    goto :goto_0
.end method