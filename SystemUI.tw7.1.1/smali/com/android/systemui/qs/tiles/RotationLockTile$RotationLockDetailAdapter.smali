.class final Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;
.super Ljava/lang/Object;
.source "RotationLockTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/RotationLockTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RotationLockDetailAdapter"
.end annotation


# instance fields
.field private mSummary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/RotationLockTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/RotationLockTile;Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile;)V

    return-void
.end method

.method private updateRotationLock(Landroid/view/View;)V
    .locals 10

    const/4 v4, 0x0

    const/4 v3, 0x1

    const v2, 0x7f1303d1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/RotationLockTile;->-get3(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/statusbar/policy/RotationLockController;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/RotationLockTile;->-get2(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/systemui/qs/tiles/RotationLockTile;->isCurrentOrientationLockPortrait(Lcom/android/systemui/statusbar/policy/RotationLockController;Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/android/systemui/qs/tiles/RotationLockTile;->-set1(Lcom/android/systemui/qs/tiles/RotationLockTile;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/RotationLockTile;->-get4(Lcom/android/systemui/qs/tiles/RotationLockTile;)[Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/RotationLockTile;->-get2(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0f0520

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/RotationLockTile;->-get4(Lcom/android/systemui/qs/tiles/RotationLockTile;)[Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/RotationLockTile;->-get2(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object v6

    if-eqz v1, :cond_0

    const v2, 0x7f0f0430

    :goto_0
    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    new-instance v5, Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/RotationLockTile;->-get2(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/RotationLockTile;->-get4(Lcom/android/systemui/qs/tiles/RotationLockTile;)[Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f040134

    const v9, 0x1020016

    invoke-direct {v5, v6, v8, v9, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    invoke-static {v2, v5}, Lcom/android/systemui/qs/tiles/RotationLockTile;->-set0(Lcom/android/systemui/qs/tiles/RotationLockTile;Landroid/widget/ArrayAdapter;)Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/RotationLockTile;->-get1(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/RotationLockTile;->-get5(Lcom/android/systemui/qs/tiles/RotationLockTile;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void

    :cond_0
    const v2, 0x7f0f0431

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_SEC_ROTATELOCK_TWO_TOGGLE_CONCEPT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->-get2(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04013a

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f1302d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mSummary:Landroid/widget/TextView;

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0f0524

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-object p2

    :cond_0
    const v0, 0x7f0f0523

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->-get2(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040135

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->updateRotationLock(Landroid/view/View;)V

    goto :goto_1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x7b

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTileString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->getTileSpec()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_SEC_ROTATELOCK_TWO_TOGGLE_CONCEPT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->-get2(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0520

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->-get2(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0521

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_SEC_ROTATELOCK_TWO_TOGGLE_CONCEPT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->-get6(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setToggleState(Z)Z
    .locals 2

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_SEC_ROTATELOCK_TWO_TOGGLE_CONCEPT:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/RotationLockTile;->-get3(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/statusbar/policy/RotationLockController;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLocked(Z)V

    return p1

    :cond_1
    return v0
.end method
