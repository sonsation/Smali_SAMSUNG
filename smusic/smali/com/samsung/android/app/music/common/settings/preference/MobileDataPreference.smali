.class public Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;
.super Landroid/preference/SwitchPreference;
.source "MobileDataPreference.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MobileDataPreference"


# instance fields
.field private mChecked:Z

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;->mChecked:Z

    .line 28
    return-void
.end method

.method private findSwitchInChildren(Landroid/view/View;)Landroid/widget/Switch;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 55
    const v3, 0x1020018

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 56
    .local v1, "frame":Landroid/view/View;
    if-eqz v1, :cond_1

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 57
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    move-object v3, v1

    .line 58
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Landroid/widget/Switch;

    if-eqz v3, :cond_0

    .line 60
    check-cast v0, Landroid/widget/Switch;

    .line 65
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :goto_1
    return-object v0

    .line 57
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
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
    .line 107
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;->mChecked:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;->findSwitchInChildren(Landroid/view/View;)Landroid/widget/Switch;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;->mSwitch:Landroid/widget/Switch;

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;->mSwitch:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setDuplicateParentStateEnabled(Z)V

    .line 52
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 72
    new-instance v1, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a040f

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setTitle(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0411

    .line 74
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setMessage(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0410

    new-instance v3, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference$1;-><init>(Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;)V

    .line 75
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0304

    .line 82
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setNegativeButton(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    .line 83
    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setCancelable(Z)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->create()Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    move-result-object v0

    .line 86
    .local v0, "dialog":Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "MobileDataPreference"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 93
    .end local v0    # "dialog":Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;->setChecked(Z)V

    goto :goto_0

    .line 91
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 97
    const-string v0, "MobileDataPreference"

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

    .line 98
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;->mChecked:Z

    .line 99
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;->persistBoolean(Z)Z

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 103
    :cond_0
    return-void
.end method
