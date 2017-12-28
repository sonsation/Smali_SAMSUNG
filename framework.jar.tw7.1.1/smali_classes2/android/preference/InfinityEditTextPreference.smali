.class public Landroid/preference/InfinityEditTextPreference;
.super Landroid/preference/EditTextPreference;
.source "InfinityEditTextPreference.java"


# instance fields
.field private mBroadcast:Ljava/lang/String;

.field private mBroadcastOff:Ljava/lang/String;

.field private mBroadcastOn:Ljava/lang/String;

.field private mColor:I

.field private mColorTriggered:Z

.field private mDefaultValue:Ljava/lang/String;

.field private mDependInValues:[Ljava/lang/String;

.field private mDependOutValues:[Ljava/lang/String;

.field private mLastText:Ljava/lang/String;

.field private mMaxLines:I

.field private mNeedReboot:Ljava/lang/String;

.field private mNotifyBroadcast:Z

.field private mNotifyScript:Z

.field private mRunScript:Ljava/lang/String;

.field private mRunScriptOff:Ljava/lang/String;

.field private mRunScriptOn:Ljava/lang/String;

.field private mSummary:Ljava/lang/String;

.field private mSummaryOff:Ljava/lang/String;

.field private mSummaryOn:Ljava/lang/String;

.field public mTypeSet:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Landroid/preference/InfinityEditTextPreference;->initASet(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2}, Landroid/preference/InfinityEditTextPreference;->initASet(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getASet()V
    .locals 3

    invoke-virtual {p0}, Landroid/preference/InfinityEditTextPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Landroid/preference/InfinitySet$Utils;->getString(Landroid/preference/Preference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/preference/InfinityEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/preference/InfinityEditTextPreference;->mDependOutValues:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/preference/InfinitySet$Utils;->handleOutDependents(Ljava/lang/String;[Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v2, v0}, Landroid/preference/InfinityEditTextPreference;->getSummary(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/InfinityEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/preference/InfinityEditTextPreference;->mDefaultValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Landroid/preference/InfinityEditTextPreference;->setASet(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private getSummary(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/preference/InfinityEditTextPreference;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-nez p2, :cond_3

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Landroid/preference/InfinityEditTextPreference;->mSummaryOn:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/preference/InfinityEditTextPreference;->mSummaryOff:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initASet(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const-string/jumbo v0, "typeset"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/preference/InfinitySet$Utils;->setTypeSet(Landroid/preference/Preference;Ljava/lang/String;)V

    const-string/jumbo v0, "maxlines"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/preference/InfinityEditTextPreference;->mMaxLines:I

    const-string v0, "depend-in"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/InfinityEditTextPreference;->setDependInValues(Ljava/lang/String;)V

    const-string v0, "depend-out"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/InfinityEditTextPreference;->setDependOutValues(Ljava/lang/String;)V

    const-string/jumbo v0, "summary"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/InfinityEditTextPreference;->setSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityEditTextPreference;->mSummary:Ljava/lang/String;

    const-string/jumbo v0, "summary-off"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/InfinityEditTextPreference;->setSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityEditTextPreference;->mSummaryOff:Ljava/lang/String;

    const-string/jumbo v0, "summary-on"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/InfinityEditTextPreference;->setSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityEditTextPreference;->mSummaryOn:Ljava/lang/String;

    const-string v0, "color"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/InfinityEditTextPreference;->setColor(Ljava/lang/String;)V

    const-string/jumbo v0, "needreboot"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityEditTextPreference;->mNeedReboot:Ljava/lang/String;

    const-string v0, "broadcast"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityEditTextPreference;->mBroadcast:Ljava/lang/String;

    const-string v0, "broadcast-off"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityEditTextPreference;->mBroadcastOff:Ljava/lang/String;

    const-string v0, "broadcast-on"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityEditTextPreference;->mBroadcastOn:Ljava/lang/String;

    const-string/jumbo v0, "notify-broadcast"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/InfinityEditTextPreference;->mNotifyBroadcast:Z

    const-string/jumbo v0, "runscript"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityEditTextPreference;->mRunScript:Ljava/lang/String;

    const-string/jumbo v0, "runscript-off"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityEditTextPreference;->mRunScriptOff:Ljava/lang/String;

    const-string/jumbo v0, "runscript-on"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityEditTextPreference;->mRunScriptOn:Ljava/lang/String;

    const-string/jumbo v0, "notify-script"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/InfinityEditTextPreference;->mNotifyScript:Z

    iget-object v0, p0, Landroid/preference/InfinityEditTextPreference;->mDefaultValue:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/preference/InfinityEditTextPreference;->getASet()V

    :cond_0
    return-void
.end method

.method private postASet(Z)V
    .locals 8

    move-object v1, p0

    iget-object v2, p0, Landroid/preference/InfinityEditTextPreference;->mLastText:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/preference/InfinityEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    move v4, p1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Landroid/preference/InfinityEditTextPreference;->mBroadcast:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/preference/InfinityEditTextPreference;->mBroadcastOn:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/preference/InfinityEditTextPreference;->mBroadcastOff:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/preference/InfinityEditTextPreference;->mRunScript:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/preference/InfinityEditTextPreference;->mRunScriptOn:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/preference/InfinityEditTextPreference;->mRunScriptOff:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v6, p0, Landroid/preference/InfinityEditTextPreference;->mNotifyBroadcast:Z

    iget-boolean v7, p0, Landroid/preference/InfinityEditTextPreference;->mNotifyScript:Z

    new-instance v0, Landroid/preference/InfinitySet$PostRun;

    invoke-direct/range {v0 .. v7}, Landroid/preference/InfinitySet$PostRun;-><init>(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ZZ)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setASet(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/preference/InfinityEditTextPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0, p1}, Landroid/preference/InfinitySet$Utils;->putString(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0, p1}, Landroid/preference/InfinityEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/preference/InfinityEditTextPreference;->mDependOutValues:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/preference/InfinitySet$Utils;->handleOutDependents(Ljava/lang/String;[Ljava/lang/String;Z)Z

    move-result v2

    invoke-super {p0, v2}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    invoke-direct {p0, v2, p1}, Landroid/preference/InfinityEditTextPreference;->getSummary(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/InfinityEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return v2
.end method

.method private setColor(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/preference/InfinityEditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "color"

    invoke-static {v0, p1, v1}, Landroid/preference/InfinitySet$Utils;->resolveIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    invoke-static {p1}, Landroid/preference/InfinitySet$Utils;->convertToColorInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    iput v0, p0, Landroid/preference/InfinityEditTextPreference;->mColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/InfinityEditTextPreference;->mColorTriggered:Z

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method private setDependInValues(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityEditTextPreference;->mDependInValues:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setDependOutValues(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityEditTextPreference;->mDependOutValues:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/preference/InfinityEditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "string"

    invoke-static {v0, p1, v1}, Landroid/preference/InfinitySet$Utils;->resolveIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindView(Landroid/view/View;)V

    iget v0, p0, Landroid/preference/InfinityEditTextPreference;->mMaxLines:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/InfinityEditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-static {v0, v1}, Landroid/preference/InfinitySet$Utils;->getIDandroidId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget v1, p0, Landroid/preference/InfinityEditTextPreference;->mMaxLines:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 1

    invoke-super {p0}, Landroid/preference/EditTextPreference;->onClick()V

    invoke-direct {p0}, Landroid/preference/InfinityEditTextPreference;->getASet()V

    invoke-virtual {p0}, Landroid/preference/InfinityEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityEditTextPreference;->mLastText:Ljava/lang/String;

    return-void
.end method

.method public onDependencyChanged(Landroid/preference/Preference;Z)V
    .locals 1

    iget-object v0, p0, Landroid/preference/InfinityEditTextPreference;->mDependInValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Landroid/preference/InfinitySet$Utils;->handleInDependents(Landroid/preference/Preference;[Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/preference/InfinityEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Landroid/preference/InfinityEditTextPreference;->setASet(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/preference/InfinityEditTextPreference;->postASet(Z)V

    iget-object v1, p0, Landroid/preference/InfinityEditTextPreference;->mNeedReboot:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/preference/InfinityEditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/preference/InfinitySet$Utils;->needRebootDialog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/preference/EditTextPreference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityEditTextPreference;->mDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/preference/EditTextPreference;->onSetInitialValue(ZLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    invoke-static {p0}, Landroid/preference/InfinitySet$Utils;->checkDataCleared(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/preference/InfinityEditTextPreference;->setASet(Ljava/lang/String;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/preference/InfinityEditTextPreference;->mDefaultValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/preference/InfinityEditTextPreference;->getASet()V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {p0}, Landroid/preference/InfinitySet$Utils;->clearKey(Landroid/preference/Preference;)V

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/preference/InfinityEditTextPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0, v1}, Landroid/preference/InfinitySet$Utils;->getString(Landroid/preference/Preference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/InfinityEditTextPreference;->mDependOutValues:[Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/preference/InfinitySet$Utils;->handleOutDependents(Ljava/lang/String;[Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/preference/InfinityEditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/InfinityEditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Landroid/preference/InfinityEditTextPreference;->mMaxLines:I

    if-eqz v3, :cond_0

    const-string v2, "alertTitle"

    invoke-static {v0, v2}, Landroid/preference/InfinitySet$Utils;->getIDandroidId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget v3, p0, Landroid/preference/InfinityEditTextPreference;->mMaxLines:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    const-string v3, "TextAppearance.Medium"

    invoke-static {v0, v3}, Landroid/preference/InfinitySet$Utils;->getIDandroidStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget-boolean v2, p0, Landroid/preference/InfinityEditTextPreference;->mColorTriggered:Z

    if-eqz v2, :cond_1

    iget v3, p0, Landroid/preference/InfinityEditTextPreference;->mColor:I

    const-string/jumbo v2, "topPanel"

    invoke-static {v0, v2}, Landroid/preference/InfinitySet$Utils;->getIDandroidId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const-string v2, "customPanel"

    invoke-static {v0, v2}, Landroid/preference/InfinitySet$Utils;->getIDandroidId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const-string v2, "buttonPanel"

    invoke-static {v0, v2}, Landroid/preference/InfinitySet$Utils;->getIDandroidId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method
