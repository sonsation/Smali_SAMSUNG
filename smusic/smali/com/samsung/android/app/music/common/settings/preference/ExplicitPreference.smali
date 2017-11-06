.class public Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;
.super Landroid/preference/SwitchPreference;
.source "ExplicitPreference.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ExplicitPreference"


# instance fields
.field private mChecked:Z

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;->mChecked:Z

    .line 33
    return-void
.end method

.method private findSwitchInChildren(Landroid/view/View;)Landroid/widget/Switch;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 60
    const v3, 0x1020018

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 61
    .local v1, "frame":Landroid/view/View;
    if-eqz v1, :cond_1

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 62
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    move-object v3, v1

    .line 63
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Landroid/widget/Switch;

    if-eqz v3, :cond_0

    .line 65
    check-cast v0, Landroid/widget/Switch;

    .line 70
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :goto_1
    return-object v0

    .line 62
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;->mChecked:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;->findSwitchInChildren(Landroid/view/View;)Landroid/widget/Switch;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;->mSwitch:Landroid/widget/Switch;

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;->mSwitch:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setDuplicateParentStateEnabled(Z)V

    .line 57
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->bindService(Landroid/content/ServiceConnection;)Z

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v2

    .line 86
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getUserExplicitType(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/UserInfo;)I

    move-result v0

    .line 89
    .local v0, "explicitType":I
    const-string v1, "ExplicitPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceConnected - explicitType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sparse-switch v0, :sswitch_data_0

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "explicit-invalid"

    .line 98
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/milk/MilkDialogLauncher;->launchDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_0
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 105
    :cond_0
    return-void

    .line 94
    :sswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;->setChecked(Z)V

    goto :goto_0

    .line 91
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 109
    return-void
.end method

.method public setChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 113
    const-string v0, "ExplicitPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;->mChecked:Z

    .line 115
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;->persistBoolean(Z)Z

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/ExplicitPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 119
    :cond_0
    return-void
.end method
