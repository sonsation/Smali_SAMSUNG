.class Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference$1;
.super Ljava/lang/Object;
.source "PlaySpeedPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference$1;->this$0:Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference$1;->val$textView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 94
    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference$1;->this$0:Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;

    invoke-static {v2, p2}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->access$000(Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;I)F

    move-result v0

    .line 95
    .local v0, "playSpeed":F
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->setPlaySpeed(F)V

    .line 96
    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference$1;->this$0:Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->saveSettingsPlaySpeed(F)V

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference$1;->this$0:Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference$1;->val$textView:Landroid/widget/TextView;

    invoke-static {v2, p1, v3, v0}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->access$100(Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;Landroid/view/View;Landroid/widget/TextView;F)V

    .line 101
    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference$1;->this$0:Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;

    invoke-static {v2, v0}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->access$200(Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;F)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "strPlaySpeed":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 104
    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference$1;->this$0:Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "settings_PlaySpeed"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference$1;->this$0:Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->access$302(Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;I)I

    .line 112
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference$1;->this$0:Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->access$300(Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference$1;->this$0:Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "PSCH"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "401"

    const-string v2, "5004"

    .line 119
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    return-void
.end method
