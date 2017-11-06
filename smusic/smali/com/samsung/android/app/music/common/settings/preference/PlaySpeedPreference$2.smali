.class Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference$2;
.super Ljava/lang/Object;
.source "PlaySpeedPreference.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference$2;->this$0:Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 126
    if-eqz p2, :cond_1

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference$2;->this$0:Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference$2;->this$0:Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->access$400(Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->access$302(Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;I)I

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference$2;->this$0:Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->access$400(Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference$2;->this$0:Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->access$300(Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference$2;->this$0:Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/settings/preference/PlaySpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "PSCH"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
