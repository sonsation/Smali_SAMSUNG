.class final Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;
.super Ljava/lang/Object;
.source "SoundPickerActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PickerSelectAllImpl"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mBaseImpl:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;Landroid/app/Activity;)V
    .locals 4
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;->mActivity:Landroid/app/Activity;

    .line 439
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->select_tracks:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;IZ)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;->mBaseImpl:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    .line 440
    return-void
.end method


# virtual methods
.method public onCreateSelectAllViewHolder()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 444
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;->mBaseImpl:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->onCreateSelectAllViewHolder()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v0

    .line 445
    .local v0, "holder":Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->UX_VERSION_2016B:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->UX_VERSION_N:Z

    if-eqz v2, :cond_1

    .line 446
    :cond_0
    sget v1, Lcom/samsung/android/app/musiclibrary/R$color;->action_bar_title_winset_2016b:I

    .line 447
    .local v1, "selectAllColor":I
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;->mBaseImpl:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkedItemCountText:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->setTextColor(Landroid/widget/TextView;I)V

    .line 448
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;->mBaseImpl:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkBoxBelowText:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->setTextColor(Landroid/widget/TextView;I)V

    .line 449
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 459
    :goto_0
    return-object v0

    .line 451
    .end local v1    # "selectAllColor":I
    :cond_1
    sget v1, Lcom/samsung/android/app/musiclibrary/R$color;->action_bar_title_winset:I

    .line 452
    .restart local v1    # "selectAllColor":I
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;->mBaseImpl:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkedItemCountText:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->setTextColor(Landroid/widget/TextView;I)V

    .line 453
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;->mBaseImpl:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkBoxBelowText:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->setTextColor(Landroid/widget/TextView;I)V

    .line 454
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 455
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;->mActivity:Landroid/app/Activity;

    .line 456
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/app/musiclibrary/R$color;->blur_checkbox_background:I

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;->mActivity:Landroid/app/Activity;

    .line 457
    invoke-virtual {v5}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 456
    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 455
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public updateSelectAllView(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V
    .locals 1
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .param p2, "checkedItemCount"    # I
    .param p3, "checkSelectAll"    # Z

    .prologue
    .line 465
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;->mBaseImpl:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->updateSelectAllView(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V

    .line 466
    return-void
.end method
