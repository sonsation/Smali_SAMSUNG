.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApHelpScreenPreference;
.super Landroid/preference/Preference;
.source "WifiApHelpScreenPreference.java"


# instance fields
.field private mMaxClient:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 46
    sget v0, Lcom/android/settings/Utils;->MAX_CLIENT_4_MOBILEAP:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->mMaxClient:I

    .line 47
    const v0, 0x7f040344

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->setLayoutResource(I)V

    .line 44
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v9, 0x7f0b0d88

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 58
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 60
    const v4, 0x7f110797

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 61
    .local v2, "tetherImg":Landroid/widget/ImageView;
    const v4, 0x7f11034b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 62
    .local v3, "tv":Landroid/widget/TextView;
    const v4, 0x7f110798

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    .local v0, "mTextView":Landroid/widget/TextView;
    invoke-static {}, Lcom/android/settings/Utils;->isDreamProject()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 68
    const-string/jumbo v4, "TMO"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    const v4, 0x7f020541

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    :goto_0
    const-string/jumbo v4, "SPRINT"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 84
    const-string/jumbo v4, "VZW"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 83
    if-nez v4, :cond_0

    .line 85
    const-string/jumbo v4, "ATT"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 83
    if-eqz v4, :cond_4

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v9}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v5

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->mMaxClient:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :goto_1
    return-void

    .line 71
    :cond_1
    const v4, 0x7f02053f

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 76
    :cond_2
    const-string/jumbo v4, "TMO"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 77
    const v4, 0x7f020540

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 79
    :cond_3
    const v4, 0x7f02053e

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 87
    :cond_4
    const-string/jumbo v4, "NEWCO"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 88
    const v4, 0x7f0b0d89

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 90
    :cond_5
    if-eqz v0, :cond_6

    .line 91
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    const-string/jumbo v4, "WifiApHelpScreenPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Utils.isSupportGraceUX().."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v4

    if-nez v4, :cond_7

    .line 94
    const v4, 0x7f0b0e82

    invoke-static {v4}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 99
    :cond_6
    :goto_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Wifi_MaxClient4MobileApNetExtension"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "maxClientNum":Ljava/lang/String;
    const-string/jumbo v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v9}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v5

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->mMaxClient:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 96
    .end local v1    # "maxClientNum":Ljava/lang/String;
    :cond_7
    const v4, 0x7f0b0e80

    invoke-static {v4}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 103
    .restart local v1    # "maxClientNum":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b0e7d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public setMaxClient(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->mMaxClient:I

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->notifyHierarchyChanged()V

    .line 108
    return-void
.end method
