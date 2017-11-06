.class public Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;
.source "StreamingAudioQualityActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;,
        Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "StreamingAudioQualityActivity"


# instance fields
.field private mMobileOptionFrame:Landroid/view/View;

.field private mMobileQuality:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

.field private mOnClick:Landroid/view/View$OnClickListener;

.field private mWifiOptionFrame:Landroid/view/View;

.field private mWifiQuality:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;-><init>()V

    .line 66
    new-instance v0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$1;-><init>(Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->mOnClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;
    .param p1, "x1"    # Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;
    .param p2, "x2"    # Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->selectOptionItem(Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;)V

    return-void
.end method

.method private initOptionFrame(Landroid/view/View;Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "networkType"    # Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;

    .prologue
    .line 117
    const v0, 0x7f12049f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;->HIGH:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    invoke-direct {p0, v0, p2, v1}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->initOptionItem(Landroid/view/View;Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;)V

    .line 118
    const v0, 0x7f1204a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;->MIDDLE:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    invoke-direct {p0, v0, p2, v1}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->initOptionItem(Landroid/view/View;Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;)V

    .line 119
    const v0, 0x7f1204a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;->LOW:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    invoke-direct {p0, v0, p2, v1}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->initOptionItem(Landroid/view/View;Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;)V

    .line 120
    return-void
.end method

.method private initOptionItem(Landroid/view/View;Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "networkType"    # Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;
    .param p3, "qualityType"    # Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    .prologue
    const/4 v7, 0x0

    .line 123
    const v4, 0x7f1202f8

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 124
    .local v1, "mainText":Landroid/widget/TextView;
    const v4, 0x7f1202f9

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 126
    .local v2, "subText":Landroid/widget/TextView;
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [I

    const v6, 0x10100fb

    aput v6, v5, v7

    const v6, 0x1010074

    .line 127
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 129
    .local v3, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 130
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 131
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    sget-object v4, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$2;->$SwitchMap$com$samsung$android$app$music$common$settings$StreamingAudioQualityActivity$QualityType:[I

    invoke-virtual {p3}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 148
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 149
    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->mOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    return-void

    .line 135
    :pswitch_0
    const v4, 0x7f0a0236

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 136
    const v4, 0x7f0a023a

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 139
    :pswitch_1
    const v4, 0x7f0a0234

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 140
    const v4, 0x7f0a023c

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 143
    :pswitch_2
    const v4, 0x7f0a0238

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 144
    const v4, 0x7f0a023b

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isQualityChanged(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "quality"    # I

    .prologue
    const/4 v0, 0x0

    .line 228
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private loadAudioQuality(Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;)I
    .locals 3
    .param p1, "networkType"    # Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;

    .prologue
    .line 161
    const-string v0, "milk_streaming_quality_mobile"

    .line 163
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;->WIFI:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    const-string v0, "milk_streaming_quality_wifi"

    .line 167
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private saveAudioQuality(Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;I)V
    .locals 2
    .param p1, "networkType"    # Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;
    .param p2, "quality"    # I

    .prologue
    .line 191
    const-string v0, "milk_streaming_quality_mobile"

    .line 193
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;->WIFI:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    const-string v0, "milk_streaming_quality_wifi"

    .line 197
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->isQualityChanged(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putInt(Ljava/lang/String;I)V

    .line 200
    :cond_1
    return-void
.end method

.method private selectOptionItem(Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;)V
    .locals 3
    .param p1, "networkType"    # Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;
    .param p2, "qualityType"    # Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    .prologue
    .line 172
    const-string v0, "StreamingAudioQualityActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "selectOptionItem - Network : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Quality : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {p2}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;->access$100(Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->saveAudioQuality(Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;I)V

    .line 176
    sget-object v0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$2;->$SwitchMap$com$samsung$android$app$music$common$settings$StreamingAudioQualityActivity$NetworkType:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 187
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->sendLoggingData(Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;)V

    .line 188
    return-void

    .line 178
    :pswitch_0
    iput-object p2, p0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->mMobileQuality:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->mMobileOptionFrame:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->updateOptionState(Landroid/view/View;Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;)V

    goto :goto_0

    .line 182
    :pswitch_1
    iput-object p2, p0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->mWifiQuality:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->mWifiOptionFrame:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->updateOptionState(Landroid/view/View;Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;)V

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sendLoggingData(Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;)V
    .locals 5
    .param p1, "networkType"    # Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;
    .param p2, "qualityType"    # Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    .prologue
    .line 233
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 234
    .local v1, "eventId":Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 236
    .local v0, "detailValue":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$2;->$SwitchMap$com$samsung$android$app$music$common$settings$StreamingAudioQualityActivity$NetworkType:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 245
    :goto_0
    sget-object v3, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$2;->$SwitchMap$com$samsung$android$app$music$common$settings$StreamingAudioQualityActivity$QualityType:[I

    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 257
    :goto_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "422"

    .line 258
    invoke-virtual {v3, v4, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const/4 v2, 0x0

    .line 261
    .local v2, "key":Ljava/lang/String;
    const-string v3, "5251"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    const-string/jumbo v2, "settings_streamingAudioQuality_mobile"

    .line 267
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void

    .line 238
    .end local v2    # "key":Ljava/lang/String;
    :pswitch_0
    const-string v1, "5251"

    .line 239
    goto :goto_0

    .line 241
    :pswitch_1
    const-string v1, "5252"

    goto :goto_0

    .line 247
    :pswitch_2
    sget-object v3, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->HIGH_320:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->getDetailValue()Ljava/lang/String;

    move-result-object v0

    .line 248
    goto :goto_1

    .line 250
    :pswitch_3
    sget-object v3, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->MIDDLE_192:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->getDetailValue()Ljava/lang/String;

    move-result-object v0

    .line 251
    goto :goto_1

    .line 253
    :pswitch_4
    sget-object v3, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->LOW_AAC:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->getDetailValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 264
    .restart local v2    # "key":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "settings_streamingAudioQuality_wifi"

    goto :goto_2

    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 245
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setSettingData()V
    .locals 2

    .prologue
    .line 153
    sget-object v0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;->MOBILE:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->loadAudioQuality(Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;->getQualityType(I)Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->mMobileQuality:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    .line 154
    sget-object v0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;->WIFI:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->loadAudioQuality(Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;->getQualityType(I)Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->mWifiQuality:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->mMobileOptionFrame:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->mMobileQuality:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->updateOptionState(Landroid/view/View;Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;)V

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->mWifiOptionFrame:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->mWifiQuality:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->updateOptionState(Landroid/view/View;Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;)V

    .line 158
    return-void
.end method

.method private updateOptionState(Landroid/view/View;Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "qualityType"    # Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    .prologue
    const v6, 0x7f1202f7

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 203
    const v3, 0x7f12049f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 204
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 205
    .local v0, "optionHigh":Landroid/widget/RadioButton;
    const v3, 0x7f1204a0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 206
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 207
    .local v2, "optionMiddle":Landroid/widget/RadioButton;
    const v3, 0x7f1204a1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 208
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 210
    .local v1, "optionLow":Landroid/widget/RadioButton;
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 211
    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 212
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 214
    sget-object v3, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$2;->$SwitchMap$com$samsung$android$app$music$common$settings$StreamingAudioQualityActivity$QualityType:[I

    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 225
    :goto_0
    return-void

    .line 216
    :pswitch_0
    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 219
    :pswitch_1
    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 222
    :pswitch_2
    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v0, 0x7f040196

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->setContentView(I)V

    .line 94
    const v0, 0x7f120493

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->mMobileOptionFrame:Landroid/view/View;

    .line 95
    const v0, 0x7f120494

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->mWifiOptionFrame:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->mMobileOptionFrame:Landroid/view/View;

    sget-object v1, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;->MOBILE:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->initOptionFrame(Landroid/view/View;Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;)V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->mWifiOptionFrame:Landroid/view/View;

    sget-object v1, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;->WIFI:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->initOptionFrame(Landroid/view/View;Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$NetworkType;)V

    .line 100
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->setSettingData()V

    .line 102
    if-nez p1, :cond_0

    .line 103
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "422"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 105
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 111
    const-string v0, "StreamingAudioQualityActivity"

    const-string/jumbo v1, "onRestoreInstanceState"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;->setSettingData()V

    .line 114
    return-void
.end method
