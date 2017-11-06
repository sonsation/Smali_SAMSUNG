.class public Lcom/samsung/android/app/music/milk/dialog/MilkOKCheckedBoxDialog;
.super Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;
.source "MilkOKCheckedBoxDialog.java"


# instance fields
.field private mCheckbox:Landroid/widget/CheckBox;

.field private mCheckboxText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;-><init>()V

    return-void
.end method

.method private setCheckBoxTint(Landroid/widget/CheckBox;I)V
    .locals 5
    .param p1, "checkBox"    # Landroid/widget/CheckBox;
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 63
    new-array v1, v3, [[I

    new-array v2, v4, [I

    aput-object v2, v1, v4

    .line 64
    .local v1, "states":[[I
    new-array v0, v3, [I

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p2, v3}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    aput v2, v0, v4

    .line 65
    .local v0, "colors":[I
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 66
    return-void
.end method


# virtual methods
.method protected getCheckbox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/MilkOKCheckedBoxDialog;->mCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method protected getCheckboxText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/MilkOKCheckedBoxDialog;->mCheckboxText:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f0400e3

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    .line 32
    .local v1, "ret":Landroid/app/Dialog;
    const v3, 0x7f12029f

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkOKCheckedBoxDialog;->getTitleZoneView()Landroid/widget/RelativeLayout;

    move-result-object v2

    .line 36
    .local v2, "titleTextView":Landroid/widget/RelativeLayout;
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 37
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/MilkOKCheckedBoxDialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d058e

    .line 38
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 39
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    const v3, 0x7f1202af

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/MilkOKCheckedBoxDialog;->mCheckbox:Landroid/widget/CheckBox;

    .line 42
    const v3, 0x7f1202b0

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/MilkOKCheckedBoxDialog;->mCheckboxText:Landroid/widget/TextView;

    .line 44
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/MilkOKCheckedBoxDialog;->mCheckbox:Landroid/widget/CheckBox;

    const v4, 0x7f020084

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 45
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/MilkOKCheckedBoxDialog;->mCheckbox:Landroid/widget/CheckBox;

    const v4, 0x7f110059

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/music/milk/dialog/MilkOKCheckedBoxDialog;->setCheckBoxTint(Landroid/widget/CheckBox;I)V

    .line 46
    return-object v1
.end method
