.class public Landroid/preference/InfinityCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "InfinityCheckBoxPreference.java"


# instance fields
.field private mBroadcast:Ljava/lang/String;

.field private mBroadcastOff:Ljava/lang/String;

.field private mBroadcastOn:Ljava/lang/String;

.field private mDefaultValue:Ljava/lang/Boolean;

.field private mDependInValues:[Ljava/lang/String;

.field private mDependOutValues:Ljava/lang/String;

.field private mMaxLines:I

.field private mNeedReboot:Ljava/lang/String;

.field private mNotifyBroadcast:Z

.field private mNotifyScript:Z

.field private mRunScript:Ljava/lang/String;

.field private mRunScriptOff:Ljava/lang/String;

.field private mRunScriptOn:Ljava/lang/String;

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;

.field public mTypeSet:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Landroid/preference/InfinityCheckBoxPreference;->initASet(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2}, Landroid/preference/InfinityCheckBoxPreference;->initASet(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getASet()V
    .locals 2

    invoke-virtual {p0}, Landroid/preference/InfinityCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {p0, v0}, Landroid/preference/InfinitySet$Utils;->getInt(Landroid/preference/Preference;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v0, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/preference/InfinityCheckBoxPreference;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v0, p0, Landroid/preference/InfinityCheckBoxPreference;->mDefaultValue:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/preference/InfinityCheckBoxPreference;->setASet(Z)Z

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

    iput v0, p0, Landroid/preference/InfinityCheckBoxPreference;->mMaxLines:I

    const-string v0, "depend-in"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/InfinityCheckBoxPreference;->setDependInValues(Ljava/lang/String;)V

    const-string v0, "depend-out"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/InfinityCheckBoxPreference;->setDependOutValues(Ljava/lang/String;)V

    const-string/jumbo v0, "needreboot"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityCheckBoxPreference;->mNeedReboot:Ljava/lang/String;

    const-string v0, "broadcast"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityCheckBoxPreference;->mBroadcast:Ljava/lang/String;

    const-string v0, "broadcast-off"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityCheckBoxPreference;->mBroadcastOff:Ljava/lang/String;

    const-string v0, "broadcast-on"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityCheckBoxPreference;->mBroadcastOn:Ljava/lang/String;

    const-string/jumbo v0, "notify-broadcast"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/InfinityCheckBoxPreference;->mNotifyBroadcast:Z

    const-string/jumbo v0, "runscript"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityCheckBoxPreference;->mRunScript:Ljava/lang/String;

    const-string/jumbo v0, "runscript-off"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityCheckBoxPreference;->mRunScriptOff:Ljava/lang/String;

    const-string/jumbo v0, "runscript-on"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityCheckBoxPreference;->mRunScriptOn:Ljava/lang/String;

    const-string/jumbo v0, "notify-script"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/InfinityCheckBoxPreference;->mNotifyScript:Z

    invoke-virtual {p0}, Landroid/preference/InfinityCheckBoxPreference;->getSummaryOff()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityCheckBoxPreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/preference/InfinityCheckBoxPreference;->getSummaryOn()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityCheckBoxPreference;->mSummaryOn:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/preference/InfinityCheckBoxPreference;->mDefaultValue:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/preference/InfinityCheckBoxPreference;->getASet()V

    :cond_0
    return-void
.end method

.method private postASet(ZZ)V
    .locals 8

    move-object v1, p0

    const/4 v2, 0x0

    const-string v3, "0"

    if-eqz p1, :cond_0

    const-string v3, "1"

    :cond_0
    move v4, p2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Landroid/preference/InfinityCheckBoxPreference;->mBroadcast:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/preference/InfinityCheckBoxPreference;->mBroadcastOn:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/preference/InfinityCheckBoxPreference;->mBroadcastOff:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/preference/InfinityCheckBoxPreference;->mRunScript:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/preference/InfinityCheckBoxPreference;->mRunScriptOn:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/preference/InfinityCheckBoxPreference;->mRunScriptOff:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v6, p0, Landroid/preference/InfinityCheckBoxPreference;->mNotifyBroadcast:Z

    iget-boolean v7, p0, Landroid/preference/InfinityCheckBoxPreference;->mNotifyScript:Z

    new-instance v0, Landroid/preference/InfinitySet$PostRun;

    invoke-direct/range {v0 .. v7}, Landroid/preference/InfinitySet$PostRun;-><init>(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ZZ)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setASet(Z)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0}, Landroid/preference/InfinityCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0, v0, v1}, Landroid/preference/InfinitySet$Utils;->putInt(Landroid/preference/Preference;Ljava/lang/String;I)Z

    invoke-virtual {p0, p1}, Landroid/preference/InfinityCheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Landroid/preference/InfinityCheckBoxPreference;->mDependOutValues:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/preference/InfinitySet$Utils;->handleOutDependents(ILjava/lang/String;)Z

    move-result v2

    if-ne p1, v2, :cond_1

    iget-object v0, p0, Landroid/preference/InfinityCheckBoxPreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/preference/InfinityCheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/preference/InfinityCheckBoxPreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/preference/InfinityCheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-super {p0, v2}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    :cond_2
    return v2
.end method

.method private setDependInValues(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityCheckBoxPreference;->mDependInValues:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setDependOutValues(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/preference/InfinityCheckBoxPreference;->mDependOutValues:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    iget v0, p0, Landroid/preference/InfinityCheckBoxPreference;->mMaxLines:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/InfinityCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-static {v0, v1}, Landroid/preference/InfinitySet$Utils;->getIDandroidId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget v1, p0, Landroid/preference/InfinityCheckBoxPreference;->mMaxLines:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 2

    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/preference/InfinityCheckBoxPreference;->setASet(Z)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/preference/InfinityCheckBoxPreference;->postASet(ZZ)V

    iget-object v1, p0, Landroid/preference/InfinityCheckBoxPreference;->mNeedReboot:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/preference/InfinityCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/preference/InfinitySet$Utils;->needRebootDialog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDependencyChanged(Landroid/preference/Preference;Z)V
    .locals 1

    iget-object v0, p0, Landroid/preference/InfinityCheckBoxPreference;->mDependInValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Landroid/preference/InfinitySet$Utils;->handleInDependents(Landroid/preference/Preference;[Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/preference/CheckBoxPreference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InfinityCheckBoxPreference;->mDefaultValue:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/preference/CheckBoxPreference;->onSetInitialValue(ZLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    invoke-static {p0}, Landroid/preference/InfinitySet$Utils;->checkDataCleared(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/preference/InfinityCheckBoxPreference;->setASet(Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/preference/InfinityCheckBoxPreference;->getASet()V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {p0}, Landroid/preference/InfinitySet$Utils;->clearKey(Landroid/preference/Preference;)V

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/preference/InfinityCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {p0, v1}, Landroid/preference/InfinitySet$Utils;->getInt(Landroid/preference/Preference;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    iget-object v2, p0, Landroid/preference/InfinityCheckBoxPreference;->mDependOutValues:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/preference/InfinitySet$Utils;->handleOutDependents(ILjava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :cond_0
    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/preference/InfinityCheckBoxPreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/preference/InfinityCheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/preference/InfinityCheckBoxPreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/preference/InfinityCheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v2

    const/4 v0, 0x1

    goto :goto_0
.end method
