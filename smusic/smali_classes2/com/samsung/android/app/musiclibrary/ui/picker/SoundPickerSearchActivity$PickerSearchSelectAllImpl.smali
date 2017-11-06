.class public Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$PickerSearchSelectAllImpl;
.super Ljava/lang/Object;
.source "SoundPickerSearchActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PickerSearchSelectAllImpl"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mBaseImpl:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;Landroid/app/Activity;)V
    .locals 4
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$PickerSearchSelectAllImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$PickerSearchSelectAllImpl;->mActivity:Landroid/app/Activity;

    .line 271
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$PickerSearchSelectAllImpl;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->select_tracks:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;IZ)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$PickerSearchSelectAllImpl;->mBaseImpl:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    .line 272
    return-void
.end method


# virtual methods
.method public onCreateSelectAllViewHolder()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .locals 4

    .prologue
    .line 276
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;-><init>()V

    .line 277
    .local v0, "holder":Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$PickerSearchSelectAllImpl;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/samsung/android/app/musiclibrary/R$id;->picker_header_check_box_layout:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->itemView:Landroid/view/View;

    .line 278
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 279
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/samsung/android/app/musiclibrary/R$id;->select_all_text:I

    .line 280
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkedItemCountText:Landroid/widget/TextView;

    .line 281
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/samsung/android/app/musiclibrary/R$id;->select_all_checkbox_below_text:I

    .line 282
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkBoxBelowText:Landroid/widget/TextView;

    .line 283
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox_container:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->clickArea:Landroid/view/View;

    .line 284
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 286
    sget v1, Lcom/samsung/android/app/musiclibrary/R$color;->sound_picker_checkbox_text_dark:I

    .line 287
    .local v1, "selectAllColor":I
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$PickerSearchSelectAllImpl;->mBaseImpl:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkedItemCountText:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->setTextColor(Landroid/widget/TextView;I)V

    .line 288
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$PickerSearchSelectAllImpl;->mBaseImpl:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkBoxBelowText:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->setTextColor(Landroid/widget/TextView;I)V

    .line 289
    return-object v0
.end method

.method public updateSelectAllView(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V
    .locals 1
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .param p2, "checkedItemCount"    # I
    .param p3, "checkSelectAll"    # Z

    .prologue
    .line 295
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$PickerSearchSelectAllImpl;->mBaseImpl:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->updateSelectAllView(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V

    .line 296
    return-void
.end method
