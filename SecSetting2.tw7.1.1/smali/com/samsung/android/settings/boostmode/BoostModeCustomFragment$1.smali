.class Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$1;
.super Ljava/lang/Object;
.source "BoostModeCustomFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->initSeekbar()V
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
    .line 190
    iput-object p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$1;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 193
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$1;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get16(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 195
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 196
    .local v0, "value":I
    const-string/jumbo v1, "BoostModeCustomFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " onPreferenceChange(brightness): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x5

    add-int/lit8 v3, v3, 0x5a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$1;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get16(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(IZ)V

    .line 198
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$1;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "pbm_maximum_brightness"

    .line 199
    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$1;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get2(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I

    move-result v3

    mul-int/lit8 v4, v0, 0x5

    add-int/lit8 v4, v4, 0x5a

    .line 198
    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    .line 201
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$1;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-wrap3(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;I)V

    .line 203
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$1;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$1;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$1;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get2(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isCustomModeChangedValue(Landroid/content/Context;I)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-wrap2(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;Z)V

    .line 206
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$1;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$1;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get14(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$1;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get3(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->sendSmartManagerEventWithDetailLog(Landroid/content/Context;III)V

    .line 209
    .end local v0    # "value":I
    :cond_0
    const/4 v1, 0x1

    return v1
.end method