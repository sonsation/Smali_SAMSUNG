.class public Lcom/android/settings/datausage/DataUsageHelpContents;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "DataUsageHelpContents.java"


# instance fields
.field private mIsSimplifiedList:Ljava/lang/Boolean;

.field private mMenuTitle:Ljava/lang/String;

.field private mMoreInfoContentTextView:Landroid/widget/TextView;

.field private mMoreInfoLayout:Landroid/widget/LinearLayout;

.field private mNumberOneContentTextView:Landroid/widget/TextView;

.field private mNumberOneTextView:Landroid/widget/TextView;

.field private mNumberTwoContentTextView:Landroid/widget/TextView;

.field private mNumberTwoTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mMenuTitle:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mIsSimplifiedList:Ljava/lang/Boolean;

    .line 37
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x25

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageHelpContents;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 62
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 63
    const-string/jumbo v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mMenuTitle:Ljava/lang/String;

    .line 58
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 69
    const v2, 0x7f0400c2

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 70
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f11029c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mNumberOneTextView:Landroid/widget/TextView;

    .line 71
    const v2, 0x7f11029d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mNumberOneContentTextView:Landroid/widget/TextView;

    .line 72
    const v2, 0x7f11029e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mNumberTwoTextView:Landroid/widget/TextView;

    .line 73
    const v2, 0x7f11029f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mNumberTwoContentTextView:Landroid/widget/TextView;

    .line 74
    const v2, 0x7f1102a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mMoreInfoContentTextView:Landroid/widget/TextView;

    .line 75
    const v2, 0x7f1102a0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mMoreInfoLayout:Landroid/widget/LinearLayout;

    .line 77
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 78
    .local v0, "formatter":Ljava/text/NumberFormat;
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mNumberOneTextView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v6, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mNumberTwoTextView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v6, 0x2

    invoke-virtual {v0, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageHelpContents;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "settings_ui"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mIsSimplifiedList:Ljava/lang/Boolean;

    .line 82
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mMenuTitle:Ljava/lang/String;

    const-string/jumbo v3, "CheckingDataUsage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 83
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mIsSimplifiedList:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mNumberOneContentTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageHelpContents;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0591

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :goto_1
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mNumberTwoContentTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageHelpContents;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0593

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mMoreInfoContentTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageHelpContents;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0594

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_0
    :goto_2
    return-object v1

    :cond_1
    move v2, v4

    .line 81
    goto :goto_0

    .line 86
    :cond_2
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mNumberOneContentTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageHelpContents;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0592

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 90
    :cond_3
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mMenuTitle:Ljava/lang/String;

    const-string/jumbo v3, "dataLimit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mIsSimplifiedList:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 92
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mNumberOneContentTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageHelpContents;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0596

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :goto_3
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mNumberTwoContentTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageHelpContents;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0598

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mMoreInfoLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 94
    :cond_4
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageHelpContents;->mNumberOneContentTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageHelpContents;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0597

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 103
    return-void
.end method
