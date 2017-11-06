.class Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;
.super Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;
.source "MetaEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/MetaEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MetaEditActionMenuController"
.end annotation


# instance fields
.field private final mContentView:Landroid/view/View;

.field private final mSaveButton:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;Landroid/view/View;)V
    .locals 3
    .param p2, "contentView"    # Landroid/view/View;

    .prologue
    .line 586
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    .line 587
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;-><init>(Landroid/view/View;)V

    .line 588
    iput-object p2, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;->mContentView:Landroid/view/View;

    .line 589
    const v1, 0x7f120111

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;->mSaveButton:Landroid/widget/TextView;

    .line 590
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;->mSaveButton:Landroid/widget/TextView;

    const v2, 0x7f0a01aa

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 591
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;->mSaveButton:Landroid/widget/TextView;

    new-instance v2, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController$1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController$1;-><init>(Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 599
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;->mContentView:Landroid/view/View;

    const v2, 0x7f12010f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 600
    .local v0, "cancelButton":Landroid/widget/TextView;
    new-instance v1, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController$2;-><init>(Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    return-void
.end method


# virtual methods
.method setEnabledDoneButton(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 612
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;->mSaveButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 613
    return-void
.end method
