.class public abstract Lcom/android/settings/vpn2/ManageablePreference;
.super Lcom/android/settings/vpn2/SecGearPreference;
.source "ManageablePreference.java"


# static fields
.field public static STATE_NONE:I


# instance fields
.field mContext:Landroid/content/Context;

.field mIsAlwaysOn:Z

.field mState:I

.field mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/vpn2/ManageablePreference;->STATE_NONE:I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn2/SecGearPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-boolean v1, p0, Lcom/android/settings/vpn2/ManageablePreference;->mIsAlwaysOn:Z

    .line 44
    sget v0, Lcom/android/settings/vpn2/ManageablePreference;->STATE_NONE:I

    iput v0, p0, Lcom/android/settings/vpn2/ManageablePreference;->mState:I

    .line 49
    iput-object p1, p0, Lcom/android/settings/vpn2/ManageablePreference;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/ManageablePreference;->setPersistent(Z)V

    .line 51
    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/ManageablePreference;->setOrder(I)V

    .line 52
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/ManageablePreference;->setUserId(I)V

    .line 47
    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/android/settings/vpn2/ManageablePreference;->mState:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/android/settings/vpn2/ManageablePreference;->mUserId:I

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 7
    .param p1, "holder"    # Landroid/view/View;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/vpn2/SecGearPreference;->onBindView(Landroid/view/View;)V

    .line 90
    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 91
    .local v2, "titleView":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/settings/vpn2/ManageablePreference;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 93
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 94
    .local v0, "llp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/settings/vpn2/ManageablePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01ba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 95
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 98
    .local v1, "parent":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    .line 99
    iget-object v5, p0, Lcom/android/settings/vpn2/ManageablePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a01bb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v6

    .line 98
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 88
    .end local v0    # "llp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "parent":Landroid/widget/LinearLayout;
    :cond_0
    return-void
.end method

.method public setAlwaysOn(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/settings/vpn2/ManageablePreference;->mIsAlwaysOn:Z

    if-eq v0, p1, :cond_0

    .line 82
    iput-boolean p1, p0, Lcom/android/settings/vpn2/ManageablePreference;->mIsAlwaysOn:Z

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ManageablePreference;->updateSummary()V

    .line 80
    :cond_0
    return-void
.end method

.method public setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 73
    iget v0, p0, Lcom/android/settings/vpn2/ManageablePreference;->mState:I

    if-eq v0, p1, :cond_0

    .line 74
    iput p1, p0, Lcom/android/settings/vpn2/ManageablePreference;->mState:I

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ManageablePreference;->updateSummary()V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ManageablePreference;->notifyHierarchyChanged()V

    .line 72
    :cond_0
    return-void
.end method

.method public setUserId(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/settings/vpn2/ManageablePreference;->mUserId:I

    .line 61
    const-string/jumbo v0, "no_config_vpn"

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/vpn2/ManageablePreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    .line 59
    return-void
.end method

.method protected updateSummary()V
    .locals 6

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ManageablePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 111
    .local v1, "res":Landroid/content/res/Resources;
    const v4, 0x7f0c009d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "states":[Ljava/lang/String;
    iget v4, p0, Lcom/android/settings/vpn2/ManageablePreference;->mState:I

    sget v5, Lcom/android/settings/vpn2/ManageablePreference;->STATE_NONE:I

    if-ne v4, v5, :cond_1

    const-string/jumbo v3, ""

    .line 113
    .local v3, "summary":Ljava/lang/String;
    :goto_0
    iget-boolean v4, p0, Lcom/android/settings/vpn2/ManageablePreference;->mIsAlwaysOn:Z

    if-eqz v4, :cond_0

    .line 114
    const v4, 0x7f0b1b44

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "alwaysOnString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v3, v0

    .line 118
    .end local v0    # "alwaysOnString":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/settings/vpn2/ManageablePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 109
    return-void

    .line 112
    .end local v3    # "summary":Ljava/lang/String;
    :cond_1
    iget v4, p0, Lcom/android/settings/vpn2/ManageablePreference;->mState:I

    aget-object v3, v2, v4

    .restart local v3    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 115
    .restart local v0    # "alwaysOnString":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 116
    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const v5, 0x7f0b186e

    .line 115
    invoke-virtual {v1, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
