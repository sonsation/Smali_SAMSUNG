.class public Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;
.source "DownloadAudioQualityActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DownloadAudioQualityActivity"


# instance fields
.field private mOnClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;-><init>()V

    .line 54
    new-instance v0, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$1;-><init>(Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;->mOnClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;
    .param p1, "x1"    # Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;->selectOptionItem(Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;)V

    return-void
.end method

.method private initOptionItem(Landroid/view/View;Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "qualityType"    # Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;

    .prologue
    const/4 v7, 0x0

    .line 95
    const v4, 0x7f1202f8

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 96
    .local v1, "mainText":Landroid/widget/TextView;
    const v4, 0x7f1202f9

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 98
    .local v2, "subText":Landroid/widget/TextView;
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [I

    const v6, 0x10100fb

    aput v6, v5, v7

    const v6, 0x1010074

    .line 99
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 101
    .local v3, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 102
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 103
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    sget-object v4, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$2;->$SwitchMap$com$samsung$android$app$music$common$settings$DownloadAudioQualityActivity$QualityType:[I

    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 116
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;->mOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void

    .line 107
    :pswitch_0
    const v4, 0x7f0a0236

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 108
    const v4, 0x7f0a023a

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 111
    :pswitch_1
    const v4, 0x7f0a0234

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 112
    const v4, 0x7f0a023c

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isQualityChanged(I)Z
    .locals 3
    .param p1, "quality"    # I

    .prologue
    const/4 v0, 0x1

    .line 160
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    const-string v2, "milk_download_quality"

    .line 161
    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAudioQuality()I
    .locals 4

    .prologue
    .line 120
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    const-string v2, "milk_download_quality"

    const/4 v3, 0x1

    .line 121
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 123
    .local v0, "quality":I
    const-string v1, "DownloadAudioQualityActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAudioQuality - Load : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return v0
.end method

.method private selectOptionItem(Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;)V
    .locals 3
    .param p1, "qualityType"    # Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;

    .prologue
    .line 129
    const-string v0, "DownloadAudioQualityActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "selectOptionItem - Quality : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {p1}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;->access$100(Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;->isQualityChanged(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "DownloadAudioQualityActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "selectOptionItem - Save : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;->access$100(Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "milk_download_quality"

    invoke-static {p1}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;->access$100(Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putInt(Ljava/lang/String;I)V

    .line 136
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;->updateOptionState(Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;)V

    .line 137
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;->sendLoggingData(Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;)V

    .line 138
    return-void
.end method

.method private sendLoggingData(Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;)V
    .locals 4
    .param p1, "qualityType"    # Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;

    .prologue
    .line 165
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 167
    .local v0, "detailValue":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$2;->$SwitchMap$com$samsung$android$app$music$common$settings$DownloadAudioQualityActivity$QualityType:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 176
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "423"

    const-string v3, "5261"

    .line 177
    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "settings_downloadingAudioQuality"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void

    .line 169
    :pswitch_0
    sget-object v1, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->HIGH_320:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->getDetailValue()Ljava/lang/String;

    move-result-object v0

    .line 170
    goto :goto_0

    .line 172
    :pswitch_1
    sget-object v1, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->MIDDLE_192:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->getDetailValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateOptionState(Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;)V
    .locals 6
    .param p1, "qualityType"    # Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;

    .prologue
    const v5, 0x7f1202f7

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 141
    const v2, 0x7f12049f

    .line 142
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 143
    .local v0, "optionHigh":Landroid/widget/RadioButton;
    const v2, 0x7f1204a0

    .line 144
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 146
    .local v1, "optionMiddle":Landroid/widget/RadioButton;
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 147
    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 149
    sget-object v2, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$2;->$SwitchMap$com$samsung$android$app$music$common$settings$DownloadAudioQualityActivity$QualityType:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 157
    :goto_0
    return-void

    .line 151
    :pswitch_0
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 154
    :pswitch_1
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f0400df

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;->setContentView(I)V

    .line 74
    const v0, 0x7f12049f

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;->HIGH:Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;->initOptionItem(Landroid/view/View;Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;)V

    .line 75
    const v0, 0x7f1204a0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;->MIDDLE:Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;->initOptionItem(Landroid/view/View;Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;)V

    .line 76
    const v0, 0x7f1204a1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;->loadAudioQuality()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;->getQualityType(I)Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;->updateOptionState(Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;)V

    .line 80
    if-nez p1, :cond_0

    .line 81
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "423"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 89
    const-string v0, "DownloadAudioQualityActivity"

    const-string/jumbo v1, "onRestoreInstanceState"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;->loadAudioQuality()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;->getQualityType(I)Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;->updateOptionState(Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;)V

    .line 92
    return-void
.end method
