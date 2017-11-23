.class public Lcom/samsung/android/settings/display/IconBackgrounds;
.super Lcom/android/settings/InstrumentedActivity;
.source "IconBackgrounds.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/IconBackgrounds$1;
    }
.end annotation


# static fields
.field private static sIconBackgrounds:I

.field private static sIconBackgroundsButton:I

.field private static sIconBackgroundsCancel:I

.field private static sIconBackgroundsDone:I


# instance fields
.field private mCancelButton:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mIconBackgroundsLayout:Landroid/widget/LinearLayout;

.field private mIconBackgroundsRadio:Landroid/widget/RadioButton;

.field private mIconOnlyLayout:Landroid/widget/LinearLayout;

.field private mIconOnlyRadio:Landroid/widget/RadioButton;

.field private mIsEnabledShowBtnBg:Z

.field private mIsIconBackgrounds:Z

.field private mPreviewImage:Landroid/widget/ImageView;

.field private mSaveButton:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/display/IconBackgrounds;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconBackgroundsRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/display/IconBackgrounds;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconOnlyRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/display/IconBackgrounds;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mSaveButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/InstrumentedActivity;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 70
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIsEnabledShowBtnBg:Z

    .line 71
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIsIconBackgrounds:Z

    .line 222
    new-instance v0, Lcom/samsung/android/settings/display/IconBackgrounds$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/IconBackgrounds$1;-><init>(Lcom/samsung/android/settings/display/IconBackgrounds;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 47
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100158

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/display/IconBackgrounds;->sIconBackgrounds:I

    .line 81
    sget v0, Lcom/samsung/android/settings/display/IconBackgrounds;->sIconBackgrounds:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10015c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sput v4, Lcom/samsung/android/settings/display/IconBackgrounds;->sIconBackgroundsButton:I

    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10015a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sput v4, Lcom/samsung/android/settings/display/IconBackgrounds;->sIconBackgroundsCancel:I

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10015b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sput v4, Lcom/samsung/android/settings/display/IconBackgrounds;->sIconBackgroundsDone:I

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 166
    :goto_0
    return-void

    .line 174
    :sswitch_0
    const-string/jumbo v4, "IconBackgrounds"

    const-string/jumbo v5, "onClick icon_backgrounds_layout"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v4, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconBackgroundsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v4, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 176
    iget-object v4, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 177
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    iget-object v3, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    const v4, 0x7f020172

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    :goto_1
    sget v3, Lcom/samsung/android/settings/display/IconBackgrounds;->sIconBackgroundsButton:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v3, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    const v4, 0x7f020171

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 186
    :sswitch_1
    const-string/jumbo v4, "IconBackgrounds"

    const-string/jumbo v5, "onClick icon_only_layout"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v4, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v4, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 188
    iget-object v2, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconBackgroundsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 189
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    iget-object v2, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    const v4, 0x7f020174

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    :goto_2
    sget v2, Lcom/samsung/android/settings/display/IconBackgrounds;->sIconBackgroundsButton:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_0

    .line 192
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    const v4, 0x7f020173

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 198
    :sswitch_2
    const-string/jumbo v2, "IconBackgrounds"

    const-string/jumbo v3, "onClick cancel_button"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget v2, Lcom/samsung/android/settings/display/IconBackgrounds;->sIconBackgroundsCancel:I

    invoke-static {p0, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->finish()V

    goto :goto_0

    .line 204
    :sswitch_3
    const-string/jumbo v4, "IconBackgrounds"

    const-string/jumbo v5, "onClick save_button"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v4, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconBackgroundsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 206
    .local v1, "isChanged":Z
    :goto_3
    if-eqz v1, :cond_3

    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "tap_to_icon"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 210
    :goto_4
    iget-boolean v2, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIsIconBackgrounds:Z

    if-eq v1, v2, :cond_4

    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.settings.ICON_BACKGROUNDS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, "i":Landroid/content/Intent;
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/settings/display/IconBackgrounds;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 213
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 217
    .end local v0    # "i":Landroid/content/Intent;
    :goto_5
    sget v2, Lcom/samsung/android/settings/display/IconBackgrounds;->sIconBackgroundsDone:I

    invoke-static {p0, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_0

    .end local v1    # "isChanged":Z
    :cond_2
    move v1, v3

    .line 205
    goto :goto_3

    .line 209
    .restart local v1    # "isChanged":Z
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "tap_to_icon"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    .line 215
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->finish()V

    goto :goto_5

    .line 172
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1101ac -> :sswitch_2
        0x7f11034c -> :sswitch_3
        0x7f1103ef -> :sswitch_1
        0x7f1103f1 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newconfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 159
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f0b022e

    const v5, 0x7f0205ab

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    const-string/jumbo v0, "IconBackgrounds"

    const-string/jumbo v3, "KKK onCreate"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mContext:Landroid/content/Context;

    .line 90
    const v0, 0x7f040139

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/IconBackgrounds;->setContentView(I)V

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "show_button_background"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIsEnabledShowBtnBg:Z

    .line 94
    const v0, 0x7f1103f1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/IconBackgrounds;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconBackgroundsLayout:Landroid/widget/LinearLayout;

    .line 95
    const v0, 0x7f1103ef

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/IconBackgrounds;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconOnlyLayout:Landroid/widget/LinearLayout;

    .line 97
    const v0, 0x7f11034a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/IconBackgrounds;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    .line 99
    const v0, 0x7f1103f2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/IconBackgrounds;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconBackgroundsRadio:Landroid/widget/RadioButton;

    .line 100
    const v0, 0x7f1103f0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/IconBackgrounds;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconOnlyRadio:Landroid/widget/RadioButton;

    .line 102
    const v0, 0x7f1101ac

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/IconBackgrounds;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mCancelButton:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f11034c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/IconBackgrounds;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mSaveButton:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconBackgroundsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconOnlyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mCancelButton:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b0437

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/IconBackgrounds;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/display/IconBackgrounds;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mSaveButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mSaveButton:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b0438

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/IconBackgrounds;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/display/IconBackgrounds;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 112
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mCancelButton:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mSaveButton:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 117
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIsEnabledShowBtnBg:Z

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mSaveButton:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "tap_to_icon"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v2, v1

    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIsIconBackgrounds:Z

    .line 123
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIsIconBackgrounds:Z

    if-eqz v0, :cond_5

    .line 124
    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconBackgroundsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 125
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 126
    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    const v1, 0x7f020172

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    :goto_1
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 85
    return-void

    :cond_3
    move v0, v2

    .line 92
    goto/16 :goto_0

    .line 128
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    const v1, 0x7f020171

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 131
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 132
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 133
    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    const v1, 0x7f020174

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 135
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    const v1, 0x7f020173

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onPause()V

    .line 155
    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "IconFrame"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 145
    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onResume()V

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "IconFrame"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 144
    return-void
.end method
