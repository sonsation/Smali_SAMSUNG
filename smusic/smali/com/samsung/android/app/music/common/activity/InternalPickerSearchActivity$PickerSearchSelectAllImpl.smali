.class final Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$PickerSearchSelectAllImpl;
.super Ljava/lang/Object;
.source "InternalPickerSearchActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PickerSearchSelectAllImpl"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mBaseImpl:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$PickerSearchSelectAllImpl;->mActivity:Landroid/app/Activity;

    .line 405
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    const v1, 0x7f0a018c

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$PickerSearchSelectAllImpl;->mBaseImpl:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    .line 407
    return-void
.end method


# virtual methods
.method public onCreateSelectAllViewHolder()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .locals 4

    .prologue
    const v3, 0x7f110044

    .line 411
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;-><init>()V

    .line 412
    .local v0, "holder":Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$PickerSearchSelectAllImpl;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120530

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->itemView:Landroid/view/View;

    .line 415
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f1200c9

    .line 416
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 417
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->ROUND_CHECK_BOX:Z

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkBox:Landroid/widget/CheckBox;

    const v2, 0x7f020084

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 421
    :cond_0
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f12037d

    .line 422
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkedItemCountText:Landroid/widget/TextView;

    .line 423
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f12037c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkBoxBelowText:Landroid/widget/TextView;

    .line 425
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f12037a

    .line 426
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->clickArea:Landroid/view/View;

    .line 428
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$PickerSearchSelectAllImpl;->mBaseImpl:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkedItemCountText:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->setTextColor(Landroid/widget/TextView;I)V

    .line 430
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$PickerSearchSelectAllImpl;->mBaseImpl:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkBoxBelowText:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->setTextColor(Landroid/widget/TextView;I)V

    .line 432
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$PickerSearchSelectAllImpl;->mBaseImpl:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkBox:Landroid/widget/CheckBox;

    const v3, 0x7f11003f

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->setCheckBoxTint(Landroid/widget/CheckBox;I)V

    .line 434
    return-object v0
.end method

.method public updateSelectAllView(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V
    .locals 1
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .param p2, "checkedItemCount"    # I
    .param p3, "checkSelectAll"    # Z

    .prologue
    .line 440
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$PickerSearchSelectAllImpl;->mBaseImpl:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->updateSelectAllView(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V

    .line 441
    return-void
.end method
