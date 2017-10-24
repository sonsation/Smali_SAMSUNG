.class Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

.field final synthetic this$0:Lcom/android/settings/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/settings/TrustedCredentialsSettings;
    .param p2, "tab"    # Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 355
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->load()V

    .line 354
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/TrustedCredentialsSettings;
    .param p2, "tab"    # Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;)V

    return-void
.end method

.method private getUserIdByGroup(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->-get1(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method private getViewForCertificate(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "certHolder"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
    .param p2, "mTab"    # Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 491
    if-nez p3, :cond_2

    .line 492
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v2}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 493
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040301

    invoke-virtual {v1, v2, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 494
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;

    invoke-direct {v0, p0, v5}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;-><init>(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)V

    .line 496
    .local v0, "holder":Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;
    const v2, 0x7f1106cc

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 495
    check-cast v2, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->-set0(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 498
    const v2, 0x7f1106cd

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 497
    check-cast v2, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->-set1(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 500
    const v2, 0x7f1106ce

    .line 499
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    invoke-static {v0, v2}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->-set2(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;Landroid/widget/Switch;)Landroid/widget/Switch;

    .line 501
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 505
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->-get0(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->-get3(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->-get1(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->-get4(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    invoke-static {p2}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->-get5(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 508
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->-get2(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/Switch;

    move-result-object v5

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->-get2(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 509
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->-get2(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/Switch;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v5}, Lcom/android/settings/TrustedCredentialsSettings;->-get6(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v5

    .line 510
    const-string/jumbo v6, "no_config_credentials"

    .line 511
    new-instance v7, Landroid/os/UserHandle;

    iget v8, p1, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 509
    invoke-virtual {v5, v6, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    :cond_0
    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 512
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;->-get2(Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setVisibility(I)V

    .line 514
    :cond_1
    return-object p3

    .line 503
    .end local v0    # "holder":Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;
    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter$ViewHolder;
    goto :goto_0

    :cond_3
    move v2, v4

    .line 508
    goto :goto_1
.end method


# virtual methods
.method public checkGroupExpandableAndStartWarningActivity(I)Z
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 461
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->checkGroupExpandableAndStartWarningActivity(IZ)Z

    move-result v0

    return v0
.end method

.method public checkGroupExpandableAndStartWarningActivity(IZ)Z
    .locals 6
    .param p1, "groupPosition"    # I
    .param p2, "startActivity"    # Z

    .prologue
    const/4 v5, 0x0

    .line 466
    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getGroup(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 467
    .local v0, "groupUser":Landroid/os/UserHandle;
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 468
    .local v1, "groupUserId":I
    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v4}, Lcom/android/settings/TrustedCredentialsSettings;->-get6(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 469
    invoke-static {v1}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(I)Landroid/content/Intent;

    move-result-object v2

    .line 471
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 472
    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v4}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 474
    :cond_0
    return v5

    .line 475
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v4}, Lcom/android/settings/TrustedCredentialsSettings;->-get6(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 476
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    .line 477
    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v4}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 476
    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 478
    .local v3, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 479
    if-eqz p2, :cond_2

    .line 480
    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v4, v1}, Lcom/android/settings/TrustedCredentialsSettings;->-wrap1(Lcom/android/settings/TrustedCredentialsSettings;I)Z

    .line 482
    :cond_2
    return v5

    .line 485
    .end local v3    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_3
    const/4 v4, 0x1

    return v4
.end method

.method public getChild(II)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->-get1(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getUserIdByGroup(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    return-object v0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 376
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getChild(II)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    return-object v0
.end method

.method public getChildAdapter(I)Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;
    .locals 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 457
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;ILcom/android/settings/TrustedCredentialsSettings$ChildAdapter;)V

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 392
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 420
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getChild(II)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->-get2(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v1

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getViewForCertificate(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 365
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->-get1(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 366
    .local v0, "certHolders":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/TrustedCredentialsSettings$CertHolder;>;"
    if-eqz v0, :cond_0

    .line 367
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    return v1

    .line 369
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getGroup(I)Landroid/os/UserHandle;
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 373
    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->-get1(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 372
    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getGroup(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->-get1(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getUserIdByGroup(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 401
    if-nez p3, :cond_0

    .line 402
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v2}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 403
    const-string/jumbo v3, "layout_inflater"

    .line 402
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 404
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-static {v0, p4}, Lcom/android/settings/Utils;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 407
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    const v2, 0x1020016

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 408
    .local v1, "title":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getUserInfoByGroup(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 409
    const v2, 0x7f0b009e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 413
    :goto_0
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 415
    return-object p3

    .line 411
    :cond_1
    const v2, 0x7f0b009d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public getUserInfoByGroup(I)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->-get6(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getUserIdByGroup(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 425
    const/4 v0, 0x1

    return v0
.end method

.method public load()V
    .locals 2

    .prologue
    .line 442
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;-><init>(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 441
    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2
    .param p1, "expandableListView"    # Landroid/widget/ExpandableListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {p0, p3, p4}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getChild(II)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings;->-wrap3(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    .line 432
    const/4 v0, 0x1

    return v0
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 1
    .param p1, "expandableListView"    # Landroid/widget/ExpandableListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "id"    # J

    .prologue
    .line 438
    invoke-virtual {p0, p3}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->checkGroupExpandableAndStartWarningActivity(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public remove(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 1
    .param p1, "certHolder"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-virtual {v0, p1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->remove(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    .line 445
    return-void
.end method

.method public setExpandableListView(Landroid/widget/ExpandableListView;)V
    .locals 1
    .param p1, "lv"    # Landroid/widget/ExpandableListView;

    .prologue
    .line 450
    invoke-virtual {p1, p0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 451
    invoke-virtual {p1, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 452
    invoke-virtual {p1, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 453
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 449
    return-void
.end method
